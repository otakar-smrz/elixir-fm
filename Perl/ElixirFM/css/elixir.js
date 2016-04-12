function elixirYamli (n) {

    var elem = document.getElementsByName('mode');
    var mode = elem.length > 0 ? elem[0].value : 'home';

    if (mode == 'resolve' || mode == 'lookup') {

        var code = document.getElementsByName('code');

        for (var i = 0; i < code.length; i++) {

            if (code[i].checked) {

                if (code[i].value == 'ArabTeX' || code[i].value == 'Buckwalter') {

                    Yamli.deyamlify('text');
                }
                else {

                    Yamli.yamlify('text');
                }
            }
        }
    }
    else if (mode == 'home') {

        Yamli.yamlify('text');
    }
    else {

        Yamli.yamlify('clip');
    }

    var text = document.getElementById('text');

    text.focus();
    text.select();
}

function elixirClear (n) {

    var input = document.getElementById(n);

    input.value = '';
    input.focus();
}
