<html>
<head><title>Registrierung Verwaltungsbereich</title>
<link rel="stylesheet" href="styles.css">
</head>
<div>
<body>

<?php
//wurde ein Login-Versuch abgewiesen?
if (isset($_GET['abgewiesen']) && $_GET['abgewiesen'] == '2'):?>
Passwörter stimmen nicht überein! <br><br>
<?php endif ?>

<?php
//wurde ein Reg-Versuch abgewiesen?
if (isset($_GET['abgewiesen']) && $_GET['abgewiesen'] == '3'):?>
Benutzername schon vorhanden </br></br>
<?php endif ?>

<h1>Verwaltungsbereiche neue Mitglider Angriffe</h1>
<div>
</br></br>
<b>Neu? Dann zuerst registrieren!</b></br></br></br><div>
<form action="./reg_form.php" method="post">
  <input type="text" name="benutzer" placeholder="benutzer..."></br></br>
  <input type="password" name="pass1" placeholder="Passwort..."></br></br>
  <input type="password" name="pass2" placeholder="Passwortwiederholung..."></br></br>
  <button type="submit" name="submit">Registrierung</button>
  </form></div>
</br></br>


<a href="verwaltungs_login.php">zurück zum Anmeldung!</a>
</div>

</body>
</div>

<footer>
<div>
<a href="Impressum.html">Impressum</a>
<div>
</footer>
</html>