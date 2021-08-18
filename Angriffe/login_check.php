<?php

$db_server='localhost';
$db_user='root';
$db_passwort='';
$db_name='Angreifer';
$zugang=false;
//mit der Datenbank verbinden
$verbindung=mysqli_connect($db_server,$db_user,$db_passwort);
if(!$verbindung)
  die("Der Server kann nicht erreicht werden.");
if(!mysqli_select_db($verbindung,$db_name))
  die("Die Datenbank kann nicht angesprochen werden.");

//Bearbeiterdaten holen
$a=$_POST['bearbeiter'];
$b=$_POST['passwort'];

$a=mysqli_real_escape_string($verbindung,$a);
$b=mysqli_real_escape_string($verbindung,$b);

$query2="Select * from nutzer where
         benutzer='$a' and
		 passwort='$b'";

$ergebnis=mysqli_query($verbindung,$query2);
		 
	if(!$ergebnis)
	echo mysqli_error($verbindung);
	//{$zugang=false;}
     //else
	 //{$zugang=true;}
	
	
$benutzerv=array();
$pass=array();
$usrgrpv=array();
// Die Zugehörigkeit zur Benutzergruppe ist usrgrpv
// User Group Variable -> kurz: usrgrpv
$i=0;

while($zeile=mysqli_fetch_array($ergebnis))
// Achtung!!! $zeile[0] ist der Primärschlüssel!!!
// Deswegen ist der Benutzername mit dem Index 1,
// das Passwort mit dem Index 2
// und die Benutzergruppenzugehörikeit mit dem Index 3
// versehen
{
  $benutzerv[$i]=$zeile[1];
  $pass[$i]=$zeile[2];
  $usrgrpv[$i]=$zeile[3];
  $i++;
}
mysqli_free_result($ergebnis);

if (count($benutzerv)>0) 
{$zugang=true;}
mysqli_close($verbindung);

//Logindaten ueberpruefen
if($zugang==true)
{
  //falls Login erfolgreich, wird eine Session gestartet und
  //der Name des Bearbeiters gespeichert
  session_start();
  $_SESSION['verwaltung']=$_POST['bearbeiter'];

  //umleiten zur Seite verwaltungs_menue.php
  // Als Übergabeparameter muss die Benutzergruppenzugehörigkeit
  // übermittelt werden
  header('Location: ./verwaltungs_menue.php?benutzergruppe='.$usrgrpv[0]);
}
else
{
  //falls Login nicht erfolgreich, wird die Login-Seite
  //mit der Information, dass der Login abgewiesen wurde
  //erneut aufgerufen
   //Die Variable abgewiesen hat nun einen Zahlenwert
  //1 steht für fehlgeschlagene Anmeldung
  
  header('Location: ./verwaltungs_login.php?abgewiesen=1');
}
?>
