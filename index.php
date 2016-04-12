<?php
if (isset($_REQUEST["q"])) {

  header("Location: http://quest.ms.mff.cuni.cz/cgi-bin/elixir/index.fcgi?mode=home&text="
         . $_REQUEST["q"]);
}
elseif (isset($_REQUEST["r"])) {

  header("Location: http://quest.ms.mff.cuni.cz/cgi-bin/elixir/index.fcgi?mode=resolve&text="
         . $_REQUEST["r"]);
}
elseif (isset($_REQUEST["i"]) and isset($_REQUEST["l"])) {

  header("Location: http://quest.ms.mff.cuni.cz/cgi-bin/elixir/index.fcgi?mode=inflect&text="
         . $_REQUEST["i"] . "&clip=" . $_REQUEST["l"]);
}
elseif (isset($_REQUEST["d"]) and isset($_REQUEST["l"])) {

  header("Location: http://quest.ms.mff.cuni.cz/cgi-bin/elixir/index.fcgi?mode=derive&text="
         . $_REQUEST["d"] . "&clip=" . $_REQUEST["l"]);
}
elseif (isset($_REQUEST["l"])) {

  header("Location: http://quest.ms.mff.cuni.cz/cgi-bin/elixir/index.fcgi?mode=lookup&text="
         . $_REQUEST["l"]);
}
else {

  header("Location: http://quest.ms.mff.cuni.cz/elixir/");
}
?>
