
.. code:: python

    import ElixirFM as elixir

.. code:: python

    elixir.lookup("car")




.. parsed-literal::

    'car\t(4414,[26])\t(4414,26)\tN---------\t`arba_hAnaT\t"` r b"\tFaCL |<< "a" |<< "_hAn" |< aT\t["car shed","coach house"]\t[]\n   \t(6284,[28])\t(6284,28)\tN---------\tsayyAraT\t"s y r"\tFaCCAL |< aT\t["car","automobile","vehicle"]\t[]\n   \t           \t         \t-------P--\tsayyArAt\t"s y r"\tFaCCAL |< At\n   \t(8011,[1])\t(8011,1)\tN---------\tsibinsaT\t"sibins"\t_____ |< aT\t["caboose","baggage car"]\t[]\n   \t(8325,[22])\t(8325,22)\tN---------\t^sA.hinaT\t"^s .h n"\tFACiL |< aT\t["truck","lorry","freight car"]\t[I]\n   \t           \t         \t-------P--\t^sA.hinAt\t"^s .h n"\tFACiL |< At\n\n'



.. code:: python

    lookup = elixir.lookup("car")
    elixir.unpretty(lookup)




.. parsed-literal::

    [[['car',
       ['(4414,[26])',
        ['(4414,26)',
         ['N---------',
          ['`arba_hAnaT',
           ['"` r b"',
            ['FaCL |<< "a" |<< "_hAn" |< aT',
             ['["car shed","coach house"]', ['[]']]]]]]]],
       ['(6284,[28])',
        ['(6284,28)',
         ['N---------',
          ['sayyAraT',
           ['"s y r"',
            ['FaCCAL |< aT', ['["car","automobile","vehicle"]', ['[]']]]]]],
         ['-------P--', ['sayyArAt', ['"s y r"', ['FaCCAL |< At']]]]]],
       ['(8011,[1])',
        ['(8011,1)',
         ['N---------',
          ['sibinsaT',
           ['"sibins"',
            ['_____ |< aT', ['["caboose","baggage car"]', ['[]']]]]]]]],
       ['(8325,[22])',
        ['(8325,22)',
         ['N---------',
          ['^sA.hinaT',
           ['"^s .h n"',
            ['FACiL |< aT', ['["truck","lorry","freight car"]', ['[I]']]]]]],
         ['-------P--', ['^sA.hinAt', ['"^s .h n"', ['FACiL |< At']]]]]]]]]



.. code:: python

    elixir.unpretty(lookup, 'lookup')




.. parsed-literal::

    [[['car',
       ['(4414,[26])',
        ['(4414,26)',
         ['N---------',
          ['`arba_hAnaT',
           '"` r b"',
           'FaCL |<< "a" |<< "_hAn" |< aT',
           '["car shed","coach house"]',
           '[]']]]],
       ['(6284,[28])',
        ['(6284,28)',
         ['N---------',
          ['sayyAraT',
           '"s y r"',
           'FaCCAL |< aT',
           '["car","automobile","vehicle"]',
           '[]']],
         ['-------P--', ['sayyArAt', '"s y r"', 'FaCCAL |< At']]]],
       ['(8011,[1])',
        ['(8011,1)',
         ['N---------',
          ['sibinsaT',
           '"sibins"',
           '_____ |< aT',
           '["caboose","baggage car"]',
           '[]']]]],
       ['(8325,[22])',
        ['(8325,22)',
         ['N---------',
          ['^sA.hinaT',
           '"^s .h n"',
           'FACiL |< aT',
           '["truck","lorry","freight car"]',
           '[I]']],
         ['-------P--', ['^sA.hinAt', '"^s .h n"', 'FACiL |< At']]]]]]]



.. code:: python

    coding = elixir.lookup(u"\u0621")
    elixir.unpretty(coding, 'lookup')




.. parsed-literal::

    [[[u'\u0621',
       [u'(48,[])',
        [u'(48,1)',
         [u'F---------',
          [u"'a", u'"\'a"', u'_____', u'["whether","indeed"]', u'[]']]]],
       [u'(1907,[])',
        [u'(1907,1)',
         [u'Y---------', [u"'i", u'"\'i"', u'_____', u'["I"]', u'[]']]]],
       [u'(1908,[])',
        [u'(1908,1)',
         [u'Y---------', [u"'a", u'"\'a"', u'_____', u'["A","1st"]', u'[]']]]]]]]



.. code:: python

    coding = elixir.lookup(u"\u0621".encode('utf-8'))
    elixir.unpretty(coding, 'lookup')




.. parsed-literal::

    [[['\xd8\xa1',
       ['(48,[])',
        ['(48,1)',
         ['F---------', ["'a", '"\'a"', '_____', '["whether","indeed"]', '[]']]]],
       ['(1907,[])',
        ['(1907,1)', ['Y---------', ["'i", '"\'i"', '_____', '["I"]', '[]']]]],
       ['(1908,[])',
        ['(1908,1)',
         ['Y---------', ["'a", '"\'a"', '_____', '["A","1st"]', '[]']]]]]]]



.. code:: python

    elixir.unpretty(lookup, 'lookup')[0][0][4][1][2]




.. parsed-literal::

    ['-------P--', ['^sA.hinAt', '"^s .h n"', 'FACiL |< At']]



.. code:: python

    elixir.unpretty(lookup, 'lookup')[0][0][4][1][2][1][0]




.. parsed-literal::

    '^sA.hinAt'



.. code:: python

    word = elixir.unpretty(lookup, 'lookup')[0][0][4][1][2][1][0]

.. code:: python

    import Encode.Arabic

.. code:: python

    word.decode("tex")




.. parsed-literal::

    u'\u0634\u064e\u0627\u062d\u0650\u0646\u064e\u0627\u062a'



.. code:: python

    print word.decode("tex")


.. parsed-literal::

    شَاحِنَات


.. code:: python

    word.decode("tex").encode("habash")




.. parsed-literal::

    '\xc5\xa1aAHinaAt'



.. code:: python

    word.decode("tex").encode("habash").decode("utf-8")




.. parsed-literal::

    u'\u0161aAHinaAt'



.. code:: python

    print word.decode("tex").encode("habash")


.. parsed-literal::

    šaAHinaAt


.. code:: python

    print elixir.elixir('version')


.. parsed-literal::

    ElixirFM (C) 2014-2005 Otakar Smrz and Viktor Bielicky
                 2004 Markus Forsberg, 2002 Tim Buckwalter
    GNU General Public License http://www.gnu.org/licenses/
    
    ElixirFM 1.2.1 August 2014
    

