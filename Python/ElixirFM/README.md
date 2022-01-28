# Python/ElixirFM

You can enjoy the Python interface to
[ElixirFM](http://github.com/otakar-smrz/elixir-fm/tree/master/Haskell/ElixirFM) from within
[IPython](http://ipython.org/) or [Jupyter Notebook](http://jupyter.org/):

## Installation

__Requirements:__ Python 2.7

> This package will _not_ work with Python 3.x!

```sh
  # build
  python setup.py install           # if 'permission not granted error', use sudo
  
  # documentation
  jupyter notebook README.ipynb   
```

This builds a python package and installs it globally to current environment, so it can be
imported in your code.

## Example use

1. `touch test.py`
2. add the following to `test.py`

    ```py
    #!/usr/bin/python
    import ElixirFM as elixir

    print("\nlookup (unpretty):")
    lookup = elixir.lookup("أُخْرَوِيّ")
    print(elixir.unpretty(lookup, "lookup"))
    ```

3. `python ./test.py`

## Troubleshooting

```txt
SyntaxError: Non-ASCII character 'XYZ' in file XYZ on line 5, but no encoding declared; see http://python.org/dev/peps/pep-0263/ for details
```

Add the following to the beginning of the code:

```py
# -*- coding: utf-8 -*-
```
