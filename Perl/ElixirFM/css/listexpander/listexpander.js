/*
    List Expander
    written by Alen Grakalic
    provided by Css Globe (cssglobe.com)

    modified by Otakar Smrz
*/

this.listexpander = function(){

    // edit

    var listClass = "listexpander"; // class name that you want to assign to list(s)

    var expandText = "Expand";      // text for expand button
    var collapseText = "Collapse";  // text for collapse button

    var excludeText = "Exclude";

    // end edit (do not edit below this line)

    var elem = document.getElementsByName("mode");
    var mode = elem.length > 0 ? elem[0].value : 'home';

    var expandMax = mode == 'resolve' ? 4 : 3;
    var expandMin = 1;

    var expandInit = expandMax;

    if (mode == 'resolve' || mode == 'lookup') expandInit--;

    this.start = function(){
        var ul = document.getElementsByTagName("ul");
        for (var i=0;i<ul.length;i++){
            if(ul[i].className == listClass){
                create(ul[i]);
                buttons(ul[i]);
            };
        };
    };

    this.create = function(list) {
        list.limit = expandInit;
        list.level = 1;
        var items = list.getElementsByTagName("li");
        for(var i=0;i<items.length;i++){
            listItem(items[i], list);
        };
    };

    this.listItem = function(li, list){
        var items = li.getElementsByTagName("ul");
        if(items.length > 0){
            var ul = items[0];
            var is = limited(ul, list);
            ul.style.display = is ? "none" : "block";
            li.className = is ? "collapsed" : "expanded";
            li.over = true;
            ul.onmouseover = function(){li.over = false;}
            ul.onmouseout = function(){li.over = true;}
            li.onclick = function(){
                if(this.over){
                    ul.style.display = (ul.style.display == "none") ? "block" : "none";
                    this.className = (ul.style.display == "none") ? "collapsed" : "expanded";
                };
            };
        };
    };

    this.buttons = function(list){
        var parent = list.parentNode;
        var p = document.createElement("p");
        p.className = listClass;

        if (mode == 'resolve' || mode == 'inflect') {

            var i = document.createElement("input");
            i.type = 'text';
            i.name = 'exclude';
            i.title = 'type in tags or parameter values';
            i.onkeyup = function(){exclude(list, i)};
            i.className = 'exclude';
            p.appendChild(i);
            var a = document.createElement("a");
            a.innerHTML = excludeText;
            a.onclick = function(){exclude(list, i)};
            a.className = 'exclude';
            p.appendChild(a);

            var items = list.getElementsByTagName("li");

            var shows = false;

            for (var j = 0; j < items.length; j++) {

                if (items[j].parentNode.level == expandMax) {

                    var xtag = items[j].getElementsByClassName("xtag");

                    for (var x = 0; x < xtag.length; x++) {

                        if (xtag[x].firstChild.nodeValue.match(/^[XY]/)) {

                            shows = true;
                            break;
                        }
                    }
                }
            }

            var value = i.value;

            if (shows) {

                i.value = 'X foreign Y acronym ' + value;
                exclude(list, i);

                var hides = true;

                for (var j = 0; j < items.length; j++) {

                    if (items[j].style.display == 'block') {

                        hides = false;
                        break;
                    }
                }

                if (hides) {

                    i.value = value;
                    exclude(list, i);
                }
            }

            var shows = false;

            for (var j = 0; j < items.length; j++) {

                if (items[j].parentNode.level == expandMax) {

                    var xtag = items[j].getElementsByClassName("xtag");

                    for (var x = 0; x < xtag.length; x++) {

                        if (xtag[x].firstChild.nodeValue.match(/[ACL]$/)) {

                            shows = true;
                            break;
                        }
                    }
                }
            }

            var value = i.value;

            if (shows) {

                i.value = 'absolute over under ' + value;
                exclude(list, i);

                var hides = true;

                for (var j = 0; j < items.length; j++) {

                    if (items[j].style.display == 'block') {

                        hides = false;
                        break;
                    }
                }

                if (hides) {

                    i.value = value;
                    exclude(list, i);
                }
            }
        }

        var a = document.createElement("a");
        a.innerHTML = expandText;
        a.onclick = function(){expand(list)};
        p.appendChild(a);
        var a = document.createElement("a");
        a.innerHTML = collapseText;
        a.onclick = function(){collapse(list)};
        p.appendChild(a);

        parent.insertBefore(p,list);
    };

    this.exclude = function(list, input){

        var words = input.value.split(/[ ,/]+/);
        var items = list.getElementsByTagName("li");

        for (var i = 0; i < items.length; i++) {

            if (items[i].parentNode.level == expandMax - 3) {

                items[i].style.display = 'block';
            }
            else {

                items[i].style.display = 'none';
            }
        }

        for (var i = items.length - 1; i > -1; i--) {

            var level = items[i].parentNode.level;

            if (level < 2) continue;

            if (level == expandMax) {

                var table = items[i].getElementsByTagName("table");

                if (table.length < 1) continue;

                var shows = prune(table[0], words);

                if (shows) {

                    items[i].style.display = 'block';

                    var root = items[i].parentNode;

                    while (root.nodeName != "LI") {

                        root = root.parentNode;
                    }

                    root.style.display = 'block';
                }
            }
            else if (level == expandMax - 1) {

                if (items[i].style.display == 'block') {

                    var root = items[i].parentNode;

                    while (root.nodeName != "LI") {

                        root = root.parentNode;
                    }

                    root.style.display = 'block';
                }
            }
            else if (level == expandMax - 2) {

                if (items[i].style.display == 'none') {

                    var root = items[i].parentNode;

                    while (root.nodeName != "LI") {

                        root = root.parentNode;
                    }

                    root.style.display = 'none';
                }
            }
        }

        /*
        for (var i = 0; i < items.length; i++) {

            if (items[i].parentNode.level < expandMin + 2) {

                if (items[i].style.display == 'none') {

                    items[i].style.display = 'block';
                    items[i].className = 'empty';
                }
                else {

                    items[i].className = 'expanded';
                }
            }
        }
        */
    };

    this.prune = function(table, words) {

        var lines = table.rows;
        var shows = false;
        var hides = false;

        for (var i = 0; i < lines.length; i++) {

            var items = lines[i].cells;

            var empty = true;

            var xr = false;
            var dr = false;

            for (var j = 0; j < items.length; j++) {

                if (items[j].className == 'xtag') {

                    var xtag = items[j].firstChild;

                    if (xtag == undefined) continue;

                    xtag = xtag.nodeValue;

                    if (xtag == '          ') continue;

                    empty = false;

                    for (var w = 0; w < words.length; w++) {

                        if (words[w] == '') continue;

                        xr = xr || xtag.indexOf(words[w]) > -1;
                    }
                }
                if (items[j].className == 'dtag') {

                    var dtag = items[j].firstChild;

                    if (dtag == undefined) continue;

                    dtag = dtag.nodeValue.split(/[ ,/]+/);

                    for (var w = 0; w < words.length; w++) {

                        if (words[w].length < 2) continue;

                        for (var d = 0; d < dtag.length; d++) {

                            if (dtag[d] == '') continue;

                            empty = false;

                            dr = dr || dtag[d].indexOf(words[w]) == 0;
                        }
                    }
                }
            }

            hides = empty ? hides : (xr || dr);

            lines[i].style.display = hides ? "none" : "";

            shows = shows || ! hides;
        }

        return shows;
    };

    this.expand = function(list){
        if (list.limit < expandMax) list.limit++;
        var li = list.getElementsByTagName("li");
        for(var i=0;i<li.length;i++){
            var items = li[i].getElementsByTagName("ul");
            if(items.length > 0){
                var ul = items[0];
                var is = limited(ul, list);
                ul.style.display = is ? "none" : "block";
                li[i].className = is ? "collapsed" : "expanded";
            };
        };
    };

    this.collapse = function(list){
        if (list.limit > expandMin) list.limit--;
        var li = list.getElementsByTagName("li");
        for(var i=0;i<li.length;i++){
            var items = li[i].getElementsByTagName("ul");
            if(items.length > 0){
                var ul = items[0];
                var is = limited(ul, list);
                ul.style.display = is ? "none" : "block";
                li[i].className = is ? "collapsed" : "expanded";
            };
        };
    };

    this.limited = function(node, list) {
        if (node.level == undefined) {
            node.level = 2;
            var root = node.parentNode;
            while(root != list) {
                if (root.nodeName == "UL") node.level++;
                root = root.parentNode;
            }
        }
        return (node.level > list.limit);
    };

    start();

};

window.onload = listexpander;
