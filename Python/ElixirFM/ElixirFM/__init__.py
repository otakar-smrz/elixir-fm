#!/usr/bin/env python

"""ElixirFM Functional Arabic Morphology"""

__version__   = "1.2.1"
__license__   = "GPL"
__copyright__ = "2016"
__author__    = "Otakar Smrz"
__contact__   = "otakar-smrz users.sf.net"
__homepage__  = "http://elixir-fm.sf.net/"

import subprocess
import pprint
import re
import sys

def elixir(mode, text="", *opts):
    elixir = subprocess.Popen(['elixir', mode] + list(opts),
                              stdin=subprocess.PIPE,
                              stdout=subprocess.PIPE)
    recode = isinstance(text, unicode)
    (data, errs) = elixir.communicate(text.encode('utf-8') if recode else text)
    return data.decode('utf-8') if recode else data

def resolve(text, *opts):
    return elixir('resolve', text, *opts)

def inflect(text, *opts):
    return elixir('inflect', text, *opts)

def derive(text, *opts):
    return elixir('derive', text, *opts)

def lookup(text, *opts):
    return elixir('lookup', text, *opts)

MODE = { 'resolve': 2, 'inflect': 2, 'derive': 2, 'lookup': 4 }

def unpretty(data, mode=None):
    return [ groups([ item.split('\t') for word in unwords(line)
                                       for item in word.splitlines() ],
                    MODE[mode] if mode in MODE else mode)
             for line in unlines(data) ]

def unlines(data):
    data = re.split('(?:(?<=\n)\n|(?<=^)\n)', data)
    return data[:-1] if data and data[-1] == "" else data

def unwords(data):
    return [ word for line in unlines(data)
                  for word in re.split('(?:(?<=\n)\n|(?<=^)\n)', line) ]

def groups(data, upto=None):
    if upto == None:
        upto = -1
    tree = [[]]
    for line in data:
        edge = line[:upto]
        node = line[upto:]
        dent = 0
        while dent < len(edge):
            if edge[dent].split():
                tree = tree[:dent + 1]
                break
            else:
                dent += 1
                if not dent < len(tree):
                    twig = tree[-1]
                    if not twig:
                        twig.append([''])
                        tree.append(twig[-1])
                        break
                    tree.append(twig[-1])
                    if isinstance(twig[-1][-1], str):
                        twig[-1].append([])
                        break
        tree[-1].append(reduce(lambda x, y: [y, x], reversed(edge[dent:]), node))
    return tree[0]

def main():
    args = sys.argv[1:]
    data = sys.stdin.read()
    mode = None
    if len(args) > 0:
        if re.search("^[+-]?[0-9]+$", args[0]):
            mode = int(args[0])
        elif args[0] in MODE:
            mode = MODE[args[0]]
    wide = 1000
    if len(args) > 1:
        if re.search("^[0-9]+$", args[1]):
            wide = int(args[1])
    deep = None
    if len(args) > 2:
        if re.search("^[+-]?[0-9]+$", args[2]):
            deep = int(args[2])
            if deep < 0 and not mode == None:
                deep += mode
            if not deep > 0:
                deep = None
    pprint.pprint(unpretty(data, mode), width=wide, depth=deep)

if __name__ == "__main__":
    main()
