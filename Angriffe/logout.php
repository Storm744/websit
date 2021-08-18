<?php


session_start();
session_destroy();
//$zeilen = readfile('./start.php');

header("Location: ./start.php");
?>
