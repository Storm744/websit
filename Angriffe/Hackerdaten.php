<?php


require "./session_inc.php";
?>
<html>
<head><title>Fahrerdaten</title>
<meta charset="utf-8">
<link rel="stylesheet" href="styles.css">
</head>
<div>
<body>



<!--Ueberschrift-->
<h1>Fahrerdaten</h1></br></br>
<div>
<FORM>
<INPUT Type="button" VALUE="Zurück" onClick="history.go(-1);return true;">
</FORM></div>
</br>
<div>
<?php


$db_server='localhost';
$db_user='root';
$db_passwort='';
$db_name='angreifer';

//mit der Datenbank verbinden
$verbindung=mysqli_connect($db_server,$db_user,$db_passwort);
if(!$verbindung)
  die("Der Server kann nicht erreicht werden.");
if(!mysqli_select_db($verbindung,$db_name))
  die("Die Datenbank kann nicht angesprochen werden.");

//daten holen
$a=utf8_decode($_GET['name']);

$query2= "select * from hacker where
		 name='$a'";
		 
		 
$ergebnis2=mysqli_query($verbindung,$query2);
if(!$ergebnis2)
  echo mysqli_error($verbindung);

//und in die Arrays schreiben

$name=array();
$Beschreibung=array();
$i=0;

while($zeilen=mysqli_fetch_array($ergebnis2))
{
  
  $name[$i]=utf8_encode($zeilen[1]);
  $Beschreibung[$i]=utf8_encode($zeilen[2]);  
  $i++;
}
mysqli_free_result($ergebnis2);
//Ausgabe der details
$i=0;
while($i<count($name))
{
 
  echo"<b></b>".$name[$i]."</br></br>";  
  echo"<b> </b>".$Beschreibung[$i]."</br>";
  $i++;
}
mysqli_close($verbindung);
?></div>
</body>
</div>
</html>
