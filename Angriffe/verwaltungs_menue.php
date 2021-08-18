<?php


require "./session_inc.php";

$usrgrpv=$_GET['benutzergruppe'];
// Zur Validierung des Übergabewertes:    mit <p> kann ich text in php deklarieren mit css 
// mit echo kann man ein variable ausgeben lassen und auch html funktionen nutzen auch mit 
echo'<p style="text-align:center;">Benutzergruppe = '. $usrgrpv .'</p>'           ;
?>
<html>
<head><title>Verwaltung Hack</title>
<link rel="stylesheet" href="web/styles.css">
</head>
<div>
<body>
<h1>Verwaltungsbereich</h1></br></br> <div id="2">
Bearbeiter: <?php echo"{$_SESSION['verwaltung']} "; ?>
</br></br></div>
</br><div></br></br>

<?php
// Hier wird der Übergabeparameter für die Benutzergruppenzugehörigkeit
// erneut gesetzt und übergeben
echo'<a href="./Hackeranzeigen.php?usrgrpv='.$usrgrpv.'">Hacker </a></br>';
echo'<a href="./arten_von_malwareanzeigen.php?usrgrpv='.$usrgrpv.'">Arten von Malware </a></br>';
echo'<a href="./cyberattackeanzeigen.php?usrgrpv='.$usrgrpv.'">Cyberattacke </a></br>';
echo'<a href="./kontrolleanzeigen.php?usrgrpv='.$usrgrpv.'">Kontrolle Ihrer Systeme </a></br>';
echo'<a href="./schritte_schutzanzeigen.php?usrgrpv='.$usrgrpv.'">8 Schritte zum Schutz vor hacker-Angriffen </a></br>';
echo'<a href="./verteidigunganzeigen.php?usrgrpv='.$usrgrpv.'">Verteidigung Arten </a></br>';
echo'<a href="./zielanzeigen.php?usrgrpv='.$usrgrpv.'">Ziel der Hackerangriffen </a></br>';
?> </br>
<a href="./logout.php">[Logout]</a></br></br></br>

</div>

</body>
</div>


<footer>
<div>
<a href="Impressum.html">Impressum</a>
<div>
</footer>
</html>
