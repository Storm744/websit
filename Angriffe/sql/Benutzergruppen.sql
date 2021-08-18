// Hinzufügen der Spalte der Benutzergruppe
alter table nutzer add usrgrp varchar(10);


// Alle bestehende Nutzer der Benutzergruppe "r" für
// registrierte Nutzer ohne Adminrechte zuweisen
update nutzer
set usrgrp="r";


// Dem Admin-Konto nun auch Adminrechte geben
// und Fred auch
update nutzer
set usrgrp="a"
where benutzer="Admin";

update nutzer
set usrgrp="a"
where benutzer="Fred";


UPDATE hacker
SET name='Wer_sind_Hacker';

update hacker
set name ='hacker';


update hacker
set name ='Organisierte_Hacker ';

insert into hacker (name)value
('Wer_sind_Hacker'),
('Amature'),
('hacker'),
('organisierte_Hacker');