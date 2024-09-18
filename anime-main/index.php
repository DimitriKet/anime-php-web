<?php
if (isset($_GET['cmd']))
    $cmd = $_GET['cmd'];
else
    $cmd = 'main';

require('function.php');
include("head.php");
include("header.php");
include("search.php");
include("$cmd.php");
include("footer.php");
?>