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

//daten holen
$a=$_POST['benutzer'];
$b=$_POST['pass1'];
$c=$_POST['pass2'];

$a=mysqli_real_escape_string($verbindung,$a);
$b=mysqli_real_escape_string($verbindung,$b);
$c=mysqli_real_escape_string($verbindung,$c);


//Passwort ueberpruefen
if($b==$c)
{
  //falls die Passwörter übereinstimmen,
  // wird eine Session gestartet und
  //der Name und das Passwort des Benutzers gespeichert
  
  //zuvor erfolgt aber die Prüfung, ob es den Benutzernamen
  // schon gibt
  $query4="select * from nutzer where benutzer='$a'";

	$ergebnisbenutzer=mysqli_query($verbindung,$query4);
	
	//Prüfen, ob der Benutzername vorhanden ist
	$benutzerv=array();
	$pass=array();
	$usrgrpv=array();
		// Die Zugehörigkeit zur Benutzergruppe ist usrgrpv
		// User Group Variable -> kurz: usrgrpv
		$i=0;

		while($zeile=mysqli_fetch_array($ergebnisbenutzer))
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
		mysqli_free_result($ergebnisbenutzer);

		$nichtdoppelt=false;
		if (count($benutzerv)>0) 
			{$nichtdoppelt=true;}
			
	if($nichtdoppelt==false){
  
  session_start();
  $_SESSION['verwaltung']=$_POST['benutzer'];

  $query3="insert into nutzer (benutzer,passwort,usrgrp) values('$a','$b','gast')";

	$ergebnis=mysqli_query($verbindung,$query3);
		 
	if(!$ergebnis)
	echo mysqli_error($verbindung);
  //Free Result wird hier nicht benötigt
  //mysqli_free_result($ergebnis);
  mysqli_close($verbindung);
  //umleiten zur Seite verwaltungs_menue.php
  
 header('Location: ./verwaltungs_menue.php?benutzergruppe=gast');
}
else
// 3 steht für Benutzername schon vorhanden
{header('Location: ./verwaltungs_registrierung.php?abgewiesen=3');
}
}
else
{
  //falls Registrierung nicht erfolgreich, wird die Login-Seite
  //mit der Information, dass die Passwörter nicht übereinstimmen,
  //erneut aufgerufen
  //Die Variable abgewiesen hat nun einen Zahlenwert
  //2 steht für nicht übereinstimmende Passwörter
  header('Location: ./verwaltungs_registrierung.php?abgewiesen=2');
}













	 

?>