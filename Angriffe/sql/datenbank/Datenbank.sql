create database Angreifer;

use Angreifer;

create table Hacker(
id int auto_increment not null, 
name varchar(30),
Beschreibung MEDIUMTEXT,
primary key (id))
Engine = innoDB;

create table Ziel(
id int auto_increment not null,
name varchar(30),
Beschreibung MEDIUMTEXT,
primary key (id))
Engine = innoDB;

create table Kontrolle (
id int auto_increment not null,
name varchar(30),
Beschreibung MEDIUMTEXT,
primary key (id))
Engine = innoDB;

create table Cyberattacke(
id int auto_increment not null,
name varchar(30),
Beschreibung MEDIUMTEXT,
primary key (id))
Engine = innoDB;

create table Arten_von_Malware(
id int auto_increment not null,
name varchar(30),
Beschreibung MEDIUMTEXT,
primary key (id))
Engine = innoDB;

create table Verteidigung (
id int auto_increment not null,
name varchar(30),
Beschreibung MEDIUMTEXT,
primary key (id))
Engine = innoDB;

create table Schritte_schutz(
id int auto_increment not null,
name varchar(30),
Beschreibung MEDIUMTEXT,
primary key (id))
Engine = innoDB;


insert into Hacker value
(1,'Wer_sind_Hacker','Angreifer sind Einzelpersonen oder Gruppen, die versuchen, die Verwundbarkeit für persönliche oder finanzielle Zwecke auszunutzen. Angreifer interessieren sich für alles, von Kreditkarten über Produktdesigns bis hin zu allem, was Wert hat.'),
(2,'Amateure','Diese Leute werden manchmal Script Kiddies genannt. In der Regel handelt es sich um Angreifer mit geringen oder keinen Fähigkeiten, die häufig vorhandene Tools oder Anweisungen aus dem Internet verwenden, um Angriffe zu starten. Einige von ihnen sind nur neugierig, während andere versuchen, ihre Fähigkeiten unter Beweis zu stellen und Schaden zu verursachen. Sie verwenden möglicherweise grundlegende Tools, aber die Ergebnisse können immer noch verheerend sein.'),
(3,'Hacker','Diese Gruppe von Angreifern bricht in Computer oder Netzwerke ein, um Zugriff zu erhalten. Abhängig von der Absicht des Einbruchs werden diese Angreifer als weiße, graue oder schwarze Hüte klassifiziert. Die White-Hat-Angreifer brechen in Netzwerke oder Computersysteme ein, um Schwachstellen zu entdecken und die Sicherheit dieser Systeme zu verbessern. Diese Einbrüche erfolgen mit vorheriger Genehmigung und alle Ergebnisse werden dem Eigentümer zurückgemeldet. Auf der anderen Seite nutzen Black-Hat-Angreifer jede Anfälligkeit für illegale persönliche, finanzielle oder politische Gewinne aus. Angreifer mit grauem Hut befinden sich irgendwo zwischen Angreifern mit weißem und schwarzem Hut. Die Grey Hat-Angreifer finden möglicherweise eine Sicherheitslücke in einem System. Gray-Hat-Hacker können die Sicherheitsanfälligkeit den Eigentümern des Systems melden, wenn diese Aktion mit ihrer Agenda übereinstimmt.'),
(4,'Organisierte_Hacker','Zu diesen Hackern gehören Organisationen von Cyberkriminellen, Hacktivisten, Terroristen und staatlich geförderten Hackern. Cyberkriminelle sind normalerweise Gruppen von Berufsverbrechern, die sich auf Kontrolle, Macht und Wohlstand konzentrieren. Die Kriminellen sind hochentwickelt und organisiert, und sie können sogar anderen Kriminellen Cyberkriminalität als Dienstleistung anbieten. Hacktivisten geben politische Erklärungen ab, um ein Bewusstsein für Themen zu schaffen, die für sie wichtig sind. Staatlich geförderte Angreifer sammeln im Auftrag ihrer Regierung Informationen oder begehen Sabotage. Diese Angreifer sind normalerweise gut ausgebildet und gut finanziert, und ihre Angriffe konzentrieren sich auf bestimmte Ziele, die für ihre Regierung von Vorteil sind.');

insert into ziel value
(1,'Cyberangriffen','Hacker und Cyberkriminelle haben die unterschiedlichsten Angriffsmethoden entwickelt. Bei hunderttausenden neuen Schadprogrammen pro Tag beginnt man die fast unvorstellbare Menge an verschiedenen Cyberbedrohungen zu begreifen. Ihre IT Sicherheit muss Sie gegen all diese Gefahren schützen können! Auch wenn die Angriffsmethoden sehr stark variieren, können wir die Motive bzw. Ziele von Cyberangriffen auf 5 wesentliche beschränken. Möchten Sie Ihr Unternehmen mit einer guten IT Sicherheit ausstatten, lohnt es sich also auf jeden Fall, diese zu kennen.'),
(2,'Hauptziel','Die bereits erwähnten wesentlichen 5 Ziele von Cyberangriffen lassen sich wiederum in zwei Kategorien unterteilen. Bei drei der fünf Ziele spielen Ihre Daten die Hauptrolle. Die drei Ziele sind nämlich: • Datendiebstahl, • Datenmissbrauch und • Datenmanipulation. Übrig bleiben dann noch die Ziele, die Kontrolle über Ihre Geräte zu übernehmen und Ihre Systeme zu destabilisieren. Lassen Sie uns zuerst einen Blick auf die Angriffe auf Ihre Daten werfen.'),
(3,'Datendiebstahl','Ich brauche nicht extra zu erwähnen, welcher Schaden einem Unternehmen entsteht, wenn dessen Daten in die falschen Hände gelangen. Geheime Produktionspläne, Rezepturen oder andere essentielle Daten, auf denen der Erfolg eines Betriebes beruht, haben natürlich direkte Schäden zur Folge, wenn sie veröffentlicht werden bzw. der Konkurrenz zugänglich werden. Doch seit der Datenschutz-Grundverordnung stellen Kunden- oder Mitarbeiterdaten Ihres Unternehmens eine ebenso große wenn nicht gar größere Bedrohung dar. Denn wenn Sie es versäumt haben, diese personenbezogenen Daten ordnungsgemäß zu schützen, drohen neben Reputationsverlust oder Kundenverlust auch noch die erheblichen Bußgelder im Rahmen der Datenschutz-Grundverordnung. Ein Cyberkrimineller kann also mit einem geschickt durchgeführten Datendiebstahl ein gutes Geschäft machen, indem er Sie erpresst oder Ihre Daten eventuell verkauft.'),
(4,'Datenmissbrauch','Im Grunde genommen geht Datenmissbrauch oft Hand in Hand mit einem Datendiebstahl. Datenmissbrauch beschreibt zunächst einmal nur die Zweckentfremdung der Daten. In der Regel geht dem jedoch ein Datendiebstahl oder eine Täuschung voraus. Das beste Beispiel hierfür ist ein Angriff per Phishing-Mail mit dem Ziel, einen unvorsichtigen Nutzer auf eine gefälschte Webseite zu locken, auf der er zum Beispiel seine Online-Banking Daten eingibt. Ist der Datendiebstahl gelungen, kann der Cyberkriminelle dann diese Daten missbrauchen, um sich Zugang zu Bankkonten oder oft auch Konten von Onlineshops verschaffen und diese für seine Zwecke missbrauchen. Oft werden diese Daten auch im Darknet zum Kauf angeboten.'),
(5,'Datenmanpulation','Die wohl gefährlichste und verheerendste Art Ihren Daten zu schaden! Denn anders als beim Datendiebstahl und Datenmissbrauch geht bei einer Datenmanipulation die Integrität Ihrer gesamten Daten verloren. In anderen Worten: Sie können Ihren eigenen Daten nicht mehr trauen! Ein Beispiel: eine winzige Änderung an Ihren Forschungsdaten kann, wenn Sie überhaupt entdeckt wird, enorme Kosten verursachen, weil die Daten nun praktisch nutzlos sind. Ganz abgesehen von den Folgen, die entstehen, wenn mit manipulierten Daten eine Produktionsserie gestartet wird. Ausschuss und geschädigte Kunden können ein Unternehmen an den Rand der Existenz bringen. In der Regel kann niemand wissen, welche Daten genau manipuliert wurden und welche noch brauchbar sind. Sollten es Forschungs- und Entwicklungsdaten sein, kann damit die Arbeit der F&E Abteilung der letzten Jahre vernichtet werden. Auch diese Methode können Cyberkriminelle einsetzen, um ein Unternehmen zu erpressen. Man will es zwar nicht hoffen, aber es ist auch denkbar, dass Cyberkriminelle im Auftrag fremder Mächte handeln und durch Datenmanipulation Konkurrenzschädigung betreiben sollen. (Man könnte das auch mit Wirtschaftsförderung im eigenen Interesse nett umschreiben).');

insert into Kontrolle value
(1,'Kontrollübernahme','Wenn Cyberkriminelle es schaffen sich Zugang zu Ihrem Netzwerk bzw. zu Ihren Geräten zu verschaffen, können sie diese für Ihre eigenen Zwecke missbrauchen. Ein gutes Beispiel hierfür ist Stromdiebstahl oder Cryptojacking. Beim Cryptojacking werden auf Ihre Kosten Kryptowährungen geschürft, was sich bei den enorm aufwändigen Berechnungen schnell bei den Stromkosten bemerkbar macht. Oder der Angreifer verkauft z.B. Ihren PC an einen anderen Cyberkriminellen der dann mit dem „gemieteten Botnetz“ ein Angriff ausführen kann.'),
(2,'Denial_of_Service_Attacken','Denial-of-Service beschreibt eine Angriffstechnik, bei der das Ziel ist, ein System oder einen Dienst so zu attackieren, dass die Verfügbarkeit leidet bzw. das System komplett ausfällt. Beispielsweise können so Unternehmenswebseiten angegriffen werden, die dann nicht mehr verfügbar sind oder im Falle eines Onlineshops in kurzer Zeit erhebliche Umsatzeinbußen zur Folge haben. Der daraus resultierende Reputationsverlust bzw. die Verärgerung der Kunden oder Lieferanten kommt dann noch erschwerend hinzu.'),
(3,'Fazit','Auch wenn Hackerangriffe in Ihrer Art und Durchführung stark variieren, lassen sich die Ziele und Motive der Cyberkriminellen herunterbrechen. Ein begehrtes Ziel sind natürlich Ihre Daten, aber auch Ihre Systeme und Geräte liegen im Interesse der Hacker. Doch man kann es den Cyberkriminellen natürlich zumindest sehr schwer machen – mit einer aktuellen und starken IT Sicherheit. Eine gute IT Sicherheit ist nämlich in zweierlei Hinsicht wirksam. Sie schützt nicht nur Ihr Unternehmen, dessen Daten und Systeme, sondern sendet auch ein Zeichen an die Cyberkriminellen, dass Ihr Unternehmen kein leichtes Ziel darstellt! Auch Hacker wollen effizient und profitabel arbeiten, da bietet sich ein Unternehmen mit einer schlechten IT Sicherheit natürlich besser an als eines, das eine starke IT Sicherheit aufgebaut hat! Prüfen Sie, wo Sie mit Ihrer IT-Sicherheit stehen oder beauftragen Sie einen IT-Sicherheitscheck. Ersetzen Sie damit Glauben durch Gewissheit!');

insert into Cyberattacke value
(1,'DOS','DoS-Angriffe (Denial-of-Service) sind eine Art Netzwerkangriff. Ein DoS-Angriff führt zu einer Unterbrechung des Netzwerkdienstes für Benutzer, Geräte oder Anwendungen. Es gibt zwei Haupttypen von DoS-Angriffen:
Überwältigende Verkehrsmenge - Dies ist der Fall, wenn einem Netzwerk, Host oder einer Anwendung eine enorme Datenmenge mit einer Geschwindigkeit gesendet wird, die sie nicht verarbeiten kann. Dies führt zu einer Verlangsamung der Übertragung oder Reaktion oder zum Absturz eines Geräts oder Dienstes.
Böswillig formatierte Pakete - In diesem Fall wird ein böswillig formatiertes Paket an einen Host oder eine Anwendung gesendet und der Empfänger kann es nicht verarbeiten. Ein Angreifer leitet beispielsweise Pakete weiter, die Fehler enthalten, die von der Anwendung nicht identifiziert werden können, oder leitet falsch formatierte Pakete weiter. Dies führt dazu, dass das empfangende Gerät sehr langsam läuft oder abstürzt.
DoS-Angriffe gelten als großes Risiko, da sie die Kommunikation leicht unterbrechen und einen erheblichen Zeit- und Geldverlust verursachen können. Diese Angriffe sind selbst von einem ungelernten Angreifer relativ einfach durchzuführen. '),
(2,'DDoS','Ein Distributed DoS Attack (DDoS) ähnelt einem DoS-Angriff, stammt jedoch aus mehreren koordinierten Quellen. Ein DDoS-Angriff könnte beispielsweise wie folgt ablaufen:
Ein Angreifer baut ein Netzwerk infizierter Hosts auf, das als Botnetz bezeichnet wird. Die infizierten Wirte werden Zombies genannt. Die Zombies werden von Handlersystemen gesteuert.
Die Zombie-Computer scannen und infizieren ständig mehr Hosts und erzeugen so mehr Zombies. Wenn der Hacker bereit ist, weist er die Handlersysteme an, das Botnetz der Zombies einen DDoS-Angriff ausführen zu lassen.
Klicken Sie in der Abbildung auf Wiedergabe, um die Animationen eines DDoS-Angriffs anzuzeigen.'),
(3,'SEO_Poisoning','Suchmaschinen wie Google arbeiten, indem sie Seiten ranken und relevante Ergebnisse basierend auf den Suchanfragen der Nutzer präsentieren. Je nach Relevanz des Website-Inhalts kann dieser in der Suchergebnisliste höher oder niedriger erscheinen. SEO, kurz für Search Engine Optimization, ist eine Reihe von Techniken, die verwendet werden, um das Ranking einer Website durch eine Suchmaschine zu verbessern. Während sich viele seriöse Unternehmen auf die Optimierung von Websites spezialisieren, um sie besser zu positionieren, könnte ein böswilliger Benutzer SEO verwenden, um eine bösartige Website in den Suchergebnissen höher erscheinen zu lassen. Diese Technik wird als SEO-Poisoning bezeichnet. Das häufigste Ziel von SEO-Poisoning besteht darin, den Verkehr zu bösartigen Websites zu erhöhen, die möglicherweise Malware hosten oder Social Engineering durchführen. Um eine bösartige Website zu einem höheren Rang in den Suchergebnissen zu zwingen, machen sich Angreifer beliebte Suchbegriffe zunutze.'),
(4,'gemischter_Angriffe','Gemischte Angriffe sind Angriffe, bei denen mehrere Techniken verwendet werden, um ein Ziel zu gefährden. Durch die gleichzeitige Verwendung mehrerer Angriffstechniken verfügen Angreifer über Malware, die eine Mischung aus Würmern, Trojanern, Spyware, Keyloggern, Spam und Phishing-Schemata darstellt. Dieser Trend gemischter Angriffe deckt komplexere Malware auf und setzt Benutzerdaten einem hohen Risiko aus.
Die häufigste Art von gemischten Angriffen verwendet Spam-E-Mail-Nachrichten, Sofortnachrichten oder legitime Websites, um Links zu verbreiten, über die Malware oder Spyware heimlich auf den Computer heruntergeladen wird. Ein weiterer häufiger Blended-Angriff verwendet DDoS in Kombination mit Phishing-E-Mails. Erstens wird DDoS verwendet, um eine beliebte Bank-Website herunterzufahren und E-Mails an die Kunden der Bank zu senden, um sich für die Unannehmlichkeiten zu entschuldigen. Die E-Mail leitet die Benutzer auch zu einer gefälschten Notfall-Site, auf der ihre echten Anmeldeinformationen gestohlen werden können.
Viele der schädlichsten Computerwürmer wie Nimbda, CodeRed, BugBear, Klez und Slammer werden wie unten gezeigt besser als gemischte Angriffe eingestuft:
- Einige Nimbda-Varianten verwendeten E-Mail-Anhänge. Herunterladen von Dateien von einem kompromittierten Webserver; und Microsoft File Sharing (z. B. anonyme Freigaben) als Weitergabemethoden.
- Andere Nimbda-Varianten konnten die Gastkonten des Systems ändern, um dem Angreifer oder bösartigen Code Administratorrechte zu gewähren.
Die jüngsten Conficker- und ZeuS / LICAT-Würmer waren ebenfalls gemischte Angriffe. Conficker verwendete alle traditionellen Verteilungsmethoden.'),
(5,'Spoofing',' - Spoofing ist ein englischer Begriff und bedeutet so viel wie fälschen, täuschen, hereinlegen.
- Im IT-Bereich bezeichnet Spoofing das Eindringen in Computer oder Netzwerke, indem eine vertrauenswürdige Identität vorgetäuscht wird.
- Meistens werden in Spoof-E-Mails Absender-IP, -Name oder -Adresse so gefälscht, dass ein Empfänger sie für vertrauenswürdig hält.
- Ziele von Spoofing sind insbesondere personenbezogener Daten mittels Phishing oder Pharming. Mehr über Phishing und Pharming erfahren Sie in speziellen Praxistipps.
- Besonders Anti-Virus-Software Hersteller bezeichnen Phishing auch als Brand Spoofing.
- Generiert ein Computerprogramm immer wieder neue Spoofing-Mails oder lenkt den User immer wieder zu Spoofing-URLs, also gefälschten Websites, spricht man von einer Spoofing-Attacke.
- Ein weiteres Ziel von Spoofing kann es sein, Malware, wie Keylogger auf Ihrem System zu installieren.
- Wie ein Virus funktioniert sowie ein Gruselkabinett der schlimmsten Viren sind Themen speziellen Praxistipps.');

insert into Arten_von_Malware value
(1,'Malware','Malware, kurz für Malicious Software, ist jeder Code, der verwendet werden kann, um Daten zu stehlen, Zugriffskontrollen zu umgehen oder ein System zu beschädigen oder zu gefährden. Im Folgenden finden Sie einige gängige Arten von Malware.'),
(2,'Spyware','Diese Malware wurde entwickelt, um den Benutzer zu verfolgen und auszuspionieren. Spyware umfasst häufig Aktivitäts-Tracker, die Erfassung von Tastenanschlägen und die Datenerfassung. Bei dem Versuch, Sicherheitsmaßnahmen zu überwinden, ändert Spyware häufig die Sicherheitseinstellungen. Spyware bündelt sich häufig mit legitimer Software oder mit Trojanern.'),
(3,'Adware','Durch Werbung unterstützte Software liefert automatisch Werbung. Adware wird häufig mit einigen Softwareversionen installiert. Einige Adware-Programme liefern nur Werbung, Adware wird jedoch häufig mit Spyware geliefert.'),
(4,'Bot','Nach dem Wort Roboter ist ein Bot Malware, die automatisch Aktionen ausführt, normalerweise online. Während die meisten Bots harmlos sind, sind Botnets eine zunehmende Verwendung bösartiger Bots. Mehrere Computer sind mit Bots infiziert, die so programmiert sind, dass sie leise auf Befehle des Angreifers warten.'),
(5,'Ransomware','Diese Malware dient dazu, ein Computersystem oder die darin enthaltenen Daten bis zur Zahlung in Gefangenschaft zu halten. Ransomware verschlüsselt normalerweise Daten auf dem Computer mit einem dem Benutzer unbekannten Schlüssel. Einige andere Versionen von Ransomware können bestimmte Systemschwachstellen ausnutzen, um das System zu sperren. Ransomware wird durch eine heruntergeladene Datei oder eine Software-Sicherheitslücke verbreitet.'),
(6,'Scareware','Dies ist eine Art von Malware, die den Benutzer dazu bringen soll, aus Angst eine bestimmte Aktion auszuführen. Scareware erstellt Popup-Fenster, die den Dialogfenstern des Betriebssystems ähneln. Diese Fenster übermitteln gefälschte Nachrichten, die besagen, dass das System gefährdet ist oder die Ausführung eines bestimmten Programms benötigt, um zum normalen Betrieb zurückzukehren. In der Realität wurden keine Probleme bewertet oder erkannt. Wenn der Benutzer dem genannten Programm zustimmt und es zur Ausführung freigibt, wird sein System mit Malware infiziert.'),
(7,'Rootkit','Diese Malware wurde entwickelt, um das Betriebssystem zu ändern und eine Hintertür zu erstellen. Angreifer verwenden dann die Hintertür, um remote auf den Computer zuzugreifen. Die meisten Rootkits nutzen Software-Schwachstellen, um die Eskalation von Berechtigungen durchzuführen und Systemdateien zu ändern. Es ist auch üblich, dass Rootkits Systemforensik- und Überwachungstools ändern, sodass sie sehr schwer zu erkennen sind. Oft muss ein mit einem Rootkit infizierter Computer gelöscht und neu installiert werden.'),
(8,'Virus','Ein Virus ist bösartiger ausführbarer Code, der an andere ausführbare Dateien angehängt wird, häufig an legitime Programme. Die meisten Viren erfordern eine Endbenutzeraktivierung und können zu einem bestimmten Zeitpunkt oder Datum aktiviert werden. Viren können harmlos sein und einfach ein Bild anzeigen oder sie können zerstörerisch sein, z. B. solche, die Daten ändern oder löschen. Viren können auch so programmiert werden, dass sie mutieren, um eine Erkennung zu vermeiden. Die meisten Viren werden jetzt über USB-Laufwerke, optische Datenträger, Netzwerkfreigaben oder E-Mails verbreitet.'),
(9,'Trojanisches_Pferd','Ein Trojanisches Pferd ist Malware, die böswillige Operationen unter dem Deckmantel einer gewünschten Operation ausführt. Dieser Schadcode nutzt die Berechtigungen des Benutzers, der ihn ausführt. Trojaner sind häufig in Bilddateien, Audiodateien oder Spielen zu finden. Ein Trojanisches Pferd unterscheidet sich von einem Virus dadurch, dass es sich an nicht ausführbare Dateien bindet.'),
(10,'Wuermer','Würmer sind bösartiger Code, der sich selbst repliziert, indem er Schwachstellen in Netzwerken unabhängig ausnutzt. Würmer verlangsamen normalerweise Netzwerke. Während für einen Virus ein Hostprogramm erforderlich ist, können Würmer selbst ausgeführt werden. Abgesehen von der Erstinfektion ist keine Benutzerbeteiligung mehr erforderlich. Nachdem ein Host infiziert wurde, kann sich der Wurm sehr schnell über das Netzwerk verbreiten. Würmer teilen ähnliche Muster. Sie alle haben eine aktivierende Sicherheitslücke, eine Möglichkeit, sich selbst zu verbreiten, und sie enthalten alle eine Nutzlast.


Würmer sind für einige der verheerendsten Angriffe im Internet verantwortlich. Wie in Abbildung 1 dargestellt, hatte der Code Red-Wurm im Jahr 2001 658 Server infiziert. Innerhalb von 19 Stunden hatte der Wurm über 300.000 Server infiziert .'),
(11,'MitM','MitM ermöglicht es dem Angreifer, ohne Wissen des Benutzers die Kontrolle über ein Gerät zu übernehmen. Mit dieser Zugriffsebene kann der Angreifer Benutzerinformationen abfangen und erfassen, bevor er sie an das beabsichtigte Ziel weiterleitet. MitM-Angriffe werden häufig verwendet, um Finanzinformationen zu stehlen. Es gibt viele Malware und Techniken, um Angreifern MitM-Funktionen bereitzustellen.'),
(12,'MitMo','Eine Variante von Man-In-Middle. MitMo ist eine Art von Angriff, mit dem die Kontrolle über ein mobiles Gerät übernommen wird. Bei einer Infektion kann das mobile Gerät angewiesen werden, benutzersensible Informationen zu filtern und an die Angreifer zu senden. Mit ZeuS, einem Beispiel für einen Exploit mit MitMo-Funktionen, können Angreifer in aller Ruhe SMS-Nachrichten in zwei Schritten erfassen, die an Benutzer gesendet werden.');

insert into Verteidigung value
(1,'Verschluesseln','Ihre Daten sollten immer verschlüsselt sein. Sie denken vielleicht, Sie haben keine Geheimnisse und nichts zu verbergen. Warum also Verschlüsselung verwenden? Vielleicht denken Sie, dass niemand Ihre Daten will. Höchstwahrscheinlich ist dies nicht wahr.

Sind S ie bereit, alle Ihre Fotos und Dokumente Fremden zu zeigen? Sind Sie bereit, auf Ihrem Computer gespeicherte Finanzinformationen an Ihre Freunde weiterzugeben? Möchten Sie Ihre E-Mails und Kontokennwörter an die breite Öffentlichkeit weitergeben?

Dies kann noch problematischer sein, wenn eine böswillige Anwendung Ihren Computer oder Ihr Mobilgerät infiziert und potenziell wertvolle Informationen wie Kontonummern und Kennwörter sowie andere offizielle Dokumente stiehlt. Diese Art von Informationen kann zu Identitätsdiebstahl, Betrug oder Lösegeld führen. Kriminelle können beschließen, Ihre Daten einfach zu verschlüsseln und unbrauchbar zu machen, bis Sie das Lösegeld bezahlen.

Was ist Verschlüsselung? Bei der Verschlüsselung werden die Informationen in ein Formular konvertiert, in dem ein Unbefugter sie nicht lesen kann. Nur eine vertrauenswürdige, autorisierte Person mit dem geheimen Schlüssel oder Passwort kann die Daten entschlüsseln und in ihrer ursprünglichen Form darauf zugreifen. Die Verschlüsselung selbst hindert niemanden daran, die Daten abzufangen. Die Verschlüsselung kann nur verhindern, dass eine nicht autorisierte Person den Inhalt anzeigt oder darauf zugreift.

Softwareprogramme werden zum Verschlüsseln von Dateien, Ordnern und sogar ganzen Laufwerken verwendet.

Das Verschlüsseln des Dateisystems (EFS) ist eine Windows-Funktion, mit der Daten verschlüsselt werden können. EFS ist direkt mit einem bestimmten Benutzerkonto verknüpft. Nur der Benutzer, der die Daten verschlüsselt hat, kann darauf zugreifen, nachdem sie mit EFS verschlüsselt wurden. Gehen Sie folgendermaßen vor, um Daten mit EFS in allen Windows-Versionen zu verschlüsseln:');

insert into Schritte_schutz value
(1,'Schritt_1','Denken Sie an die physische Sicherheit:
Die erste Verteidigungslinie gegen Bedrohungen durch böswillige interne Mitarbeiter sollte da-rin bestehen, den physischen Zugriff auf das Rechenzentrum mithilfe von Sicherheits- und Überwachungstechnologien genau zu kontrollieren. Videoanalysetools wie Bewegungsverfol-gung und Gesichtserkennung sind mittlerweile weithin verfügbar und können gemeinsam mit der Videoüberwachung eingesetzt werden, um vordefinierte Situationen innerhalb des Rechen-zentrums zu erkennen, die möglicherweise zu Sicherheitsproblemen führen könnten.'),
(2,'Schritt_2','Arbeiten Sie mit Sicherheitsberatern:
Es ist möglich, dass die internen IT-Mitarbeiter weder die Kapazität noch die Erfahrung haben, um die erforderlichen Sicherheitsprogramme zu implementieren. Übertragen Sie die Verantwor-tung für diese Aufgaben an externe Sicherheitsberater, damit Ihr Rechenzentrum durch eine pro-fessionell entwickelte Sicherheitsstrategie geschützt wird, die an die individuellen Anforderun-gen Ihres Unternehmens angepasst wurde.'),
(3,'Schritt_3','Überwachen Sie die Ausgangsleistung:
Zu den effektivsten Methoden beim Erkennen von Problemen gehört es, die Ausgangsleistung im Rechenzentrum zu identifizieren. Wenn Sie den „Normalzustand“ Ihrer Umgebung kennen, fallen Ihnen jegliche Abweichungen von diesen Werten sofort auf. Damit lassen sich potenzielle Sicherheitsverletzungen möglichst früh erkennen und Probleme nach einem zuvor festgelegten Reaktionsplan beheben.'),
(4,'Schritt_4','Investieren Sie in SIEM-Lösungen:
SIEM-Tools erkennen ungewöhnliche Verhaltensmuster innerhalb des Rechenzentrums automa-tisch und reagieren entsprechend. Nach einem Vorfall führt das Tool automatisch eine Ermitt-lung der zugrunde liegenden Ursache des Problems durch, bevor diese Informationen mit frühe-ren Ereignissen korreliert werden, um Muster oder Trends zu erkennen. '),
(5,'Schritt_5','Führen Sie eine proaktive Patch-Management-Strategie ein:
Sie sollten bei der Sicherheit immer proaktiv handeln, nicht reaktiv. Das trifft besonders auf die Patchverwaltungsstrategie zu. Mit den folgenden Tipps können Sie dafür sorgen, dass das Pat-chen Ihrer Software proaktiv bleibt:

Möglicherweise verfügt Ihr Rechenzentrum weder über das nötige Personal noch über die Res-sourcen, um all diese Maßnahmen umzusetzen. '),
(6,'Schritt_6','Nutzen Sie Web-Filter:
Ransomware-Sites sind eine Falle, in die man schnell tappen kann – und die oft verheerende Konsequenzen nach sich zieht. Sobald ein Rechner mit Ransomware infiziert wurde, kann das gesamte Netzwerk gesperrt werden, und schon obliegt die Sicherheit Ihrer Daten der Gnade der Hacker. Um die Wahrscheinlichkeit eines solchen Szenarios zu reduzieren, sollten IT-Experten regelmäßig bekannte Ransomware-Sites mithilfe von Webfiltern blockieren – entweder manuell oder mit einem Drittanbieter-Softwaretool.

Dabei ist zu bedenken, dass flexibles Arbeiten mittlerweile fester Bestandteil vieler Arbeitsum-gebungen ist und Geräte häufig mit privaten Netzwerken verbunden werden, in denen keine Si-cherheitsfilter aktiv sind.'),
(7,'Schritt_7','Prüfen Sie Ihre Anti-Malware-Software:
Zusätzlich sollten Protokolle aktiv sein, die dafür sorgen, dass diese Software niemals versehent-lich deaktiviert wird – eine allzu häufige Situation, für die niemand gerne verantwortlich sein möchte. Daher ist es ratsam, eine Gruppenrichtlinienkontrolle einzurichten, die Endbenutzer und untergeordnete Administratoren daran hindert, die Anti-Malware-Software zu deaktivieren.'),
(8,'Schritt_8','Sorgen Sie für Verantwortlichkeit:
Mit diesen Methoden können Sie zwar nicht garantieren, dass Ihre Daten hundertprozentig ge-gen jegliche Bedrohung geschützt sind. Wenn all diese Maßnahmen als Bestandteil einer umfas-senden Sicherheitsstrategie umgesetzt werden, stärken Sie aber Ihre Verteidigung und reduzie-ren die Wahrscheinlichkeit einer Datensicherheitsverletzung – und tragen dazu bei, dass Ihr Un-ternehmen vielen Bedrohungen durch Cyberkriminalität erfolgreich standhalten kann.');