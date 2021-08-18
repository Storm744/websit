<?php


//die Include-Datei session_inc.php wird von jeder
//Verwaltungsseite eingebunden

session_start();

//falls die Seite ohne Login aufgerufen wurde, wird die
//Session abgebrochen
if (empty($_SESSION['verwaltung']))
{
  session_destroy();
  die("Bitte melden Sie sich zunächst an.");
}
?>
