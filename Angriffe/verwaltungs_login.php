
<html>
<head><title>Verwaltungsbereich Angriffe</title>
<link rel="stylesheet" href="styles.css">
</head>
<div>
<body>


<?php
//wurde ein Login-Versuch abgewiesen?
//if ($_GET['abgewiesen']=='0'):
if (isset($_GET['abgewiesen']) && $_GET['abgewiesen'] == '1'):?>
Anmeldung fehlgeschlagen! <br><br>
<?php endif  ?>



<h1>Login Verwaltungsbereich</h1></br></br><div>
<div>
	<b>Anmeldung!</b></br></br>
	<b>Bitte melden Sie sich mit Ihrem Anmeldung Daten!</b></br></br></br></br>

<form action="./login_check.php" method="post">
  <input type="text" name="bearbeiter" placeholder="Benutzername/Email..."></br></br>
  <input type="password" name="passwort" placeholder="Passwort..."></br></br>
  <button type="submit" value="submit">Login</button>
</form>
</br></br>



</div>
</br>
<a href="verwaltungs_registrierung.php">Neu hier! Dann erst Registrieren!</a></br></br>
<a href="Startseite.html">zurück zum start seite!</a>
</br></br>
</div>


</body>
</div>

<footer>
<div>
<a href="Impressum.html">Impressum</a>
<div>
</footer>
</html>
