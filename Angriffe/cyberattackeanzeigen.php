<?php


require "./session_inc.php";
?>

<html>
<head>
<title>
</title>
<meta charset="utf-8">
<link rel="stylesheet" href="styles.css">
</head>
<div>
<body>

<h1>Hacker Arten</h1></br>
</br></br><div>
<FORM>
<INPUT Type="button" VALUE="Zurück" onClick="history.go(-1);return true;">
</FORM></div></br>

<div>
<?php

$usrgrpv=$_GET['usrgrpv'];
// Zur Validierung des Übergabewertes:     echo$usrgrpv;
// Funktion Datenbankverbindung
function Datenbank_verbinden()
{
include("verbindung.php");
//mit der Datenbank verbinden

$DBverbindung=mysqli_connect($db_server,$db_user,$db_passwort);
if(!$DBverbindung)
  die("Der Server kann nicht erreicht werden.");
if(!mysqli_select_db($DBverbindung,$db_name))
  die("Die Datenbank kann nicht angesprochen werden.");
return $DBverbindung;   //Rückgabe der Variablen für die Verbindung
}

//Funktionsaufruf von Datenbankverbindung
$verbindung=Datenbank_verbinden();
//Alle nachnamen und -bezeichnungen holen
        
$query="SELECT  name
        FROM Cyberattacke ";
$ergebnis=mysqli_query($verbindung,$query);

if(!$ergebnis)
  echo mysqli_error($verbindung);


$name=array();
$i=0;
while($zeile=mysqli_fetch_array($ergebnis))

{
	$name[$i]= utf8_encode ( $zeile[0] );
  $i++;
}

mysqli_free_result($ergebnis);

//Ausgabe der Links zu den Namen der Angriffe
echo"<b>Ergebnis:</b></br></br>";

	
  for($i=0;$i<count($name);$i++)
	
// Innerhalb der Schleife wird geprüft, welche Art der 
// Ausgabe nun angebracht ist.
// Das hängt von der Benutzergruppenzugehörigkeit ab.
{
	if ($usrgrpv=="admin"){  
     
	  echo"<a href=\"./cyberattackedaten.php?name=$name[$i]\">
	  $name[$i]</a></br>";
    }
    if ($usrgrpv=="gast")
    { 
	  
	  echo "$name[$i] </br>";
    }
}
mysqli_close($verbindung);
  ?>
  </br></br></br>

<a href="./logout.php">[Logout]</a></br></br>
</div>
</body>
</div>

</html>