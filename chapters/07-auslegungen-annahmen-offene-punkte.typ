= Auslegungen, Annahmen und offene Punkte

// Beide Tabellen dieses Kapitels sind laenger als eine Seite und muessen daher
// umbrechen duerfen (Ausnahme von der Regel in main.typ). Die Kopfzeile
// wiederholt sich dabei auf jeder Folgeseite.
#show figure: set block(breakable: true)

Die Spezifikation enthält nur, was das Fallbeispiel nennt. Auslegungen legen fest, wie eine genannte Anforderung gemeint ist, wenn der Wortlaut mehrere Lesarten zulässt. Annahmen sind Festlegungen der Gruppe, die für die Umsetzung nötig sind, die das Fallbeispiel aber nicht trifft; der Fachbereich muss sie bestätigen. Offene Punkte sind Fälle, die das Fallbeispiel nicht regelt; dafür enthält die Spezifikation bewusst keine Regel (SK F54: nicht mit Alltagswissen ergänzen).

== Auslegungen und Annahmen

#figure(
  caption: "Auslegungen und Annahmen",
  table(
    columns: (auto, 0.75fr, 3.3fr, 0.95fr),
    align: (left, left, left, left),
    table.header([*Nr.*], [*Art*], [*Auslegung bzw. Annahme und Grundlage*], [*Regeln*]),
    [A1], [Annahme], [Teilmonat: Das Gehalt wird anteilig nach aktiven Kalendertagen berechnet, Provision und Bonus ungekürzt. Grundlage: Gehalt erhalten nur aktive Mitarbeiter (RR, WW); Vertragsbeginn und -ende können mitten im Monat liegen (LL). Das Fallbeispiel nennt kein Verfahren; Arbeitstage oder ein 30-Tage-Monat wären ebenfalls denkbar. Mit der Lohnbuchhaltung zu bestätigen.], [R4.2, R4.6],
    [A2], [Auslegung], [Maßgeblich ist der Datenstand zu Beginn des Gehaltslaufs, auch für die restlichen Tage des Monats; der Inhalt ist danach endgültig. Grundlage: Der Gehaltslauf findet vor Monatsende statt (R3.6).], [R3.18, R3.19, R3.20, R3.13],
    [A3], [Annahme], [Die Kostenstelle einer Gehaltsabrechnung ist die Kostenstelle zu Beginn des Gehaltslaufs. Grundlage: PP ordnet tagesgenau zu, die Lohnbuchung (KK) nennt genau eine Kostenstelle; der Datenstand folgt A2. Mit dem Controlling zu bestätigen.], [R3.20],
    [A4], [Auslegung], [Der Gehaltslauf liegt zwischen Ende des Provisionszeitraums und Zahltag. Grundlage: WW (Provisionszeitraum bis 15.), RR („vor jedem Gehaltslauf“, „pünktlich“).], [R3.6],
    [A5], [Auslegung], [Beide Grenztage gehören zum Provisionszeitraum; maßgeblich ist das Abschlussdatum. Grundlage: WW „zwischen dem 16. … und dem 15.“; so schließen die Zeiträume lückenlos an.], [R4.4],
    [A6], [Auslegung], [Bemessungsgrundlage des Bonus ist das Monatsgehalt der Mai-Gehaltsabrechnung. Grundlage: WW „Prozent des monatlichen Bruttogehalts … mit dem Gehalt vom Mai ausbezahlt“.], [R4.8],
    [A7], [Auslegung], [Die Steuer wird kumuliert über das Kalenderjahr berechnet, wie die BBM. Grundlage: KK nennt Jahreswerte, die Steuer wird aber vom monatlichen Bruttogehalt abgezogen. Nur so entspricht die Jahressumme den Jahreswerten.], [R4.13–R4.16],
    [A8], [Auslegung], [„Gesetzlicher Bruttoverdienst“ (WW) ist das Bruttogehalt einschließlich Provision und Bonus; die BBM gilt kumuliert je Kalenderjahr (WW: „Jahresbruttogehalt“).], [R4.18],
    [A9], [Auslegung], [Wochentag = Montag bis Freitag.], [R5.2],
    [A10], [Auslegung / Annahme], [Auslegung: Die erste Gehaltsabrechnung entsteht ohne Inhalt bei der Einstellung (SK F42: „Erste Gehaltsabrechnung als Hülle angelegt“). Annahme: Für jeden Folgemonat entsteht sie spätestens am Zahltag des Vormonats; das Fallbeispiel nennt hierfür keinen Zeitpunkt.], [R3.1, R3.2],
    [A11], [Auslegung], [Steuern werden wie Zahlungsabflüsse als Lohnbuchungen gemeldet (KK: „als ob diese monatlich abfließen“), mit Steuer-ID für den Abgleich (KK).], [R5.1, R5.9, R5.13],
    [A12], [Auslegung], [„Letzte Gehaltszahlung“ (II) ist die letzte Überweisung eines Auszahlungsbetrags. Ohne Sterbedatum tritt der Löschzeitpunkt nicht ein (wörtliche Lesart „zu dem späteren Zeitpunkt“).], [R6.7],
    [A13], [Auslegung], [„Gehaltsdaten“ sind Gehaltsklasse und Monatsgehalt (WW: „Das sind Gehaltsklasse und monatliches Bruttogehalt“). II verwendet den Begriff weiter („alle Daten, die zur Erstellung der Gehaltsabrechnung nötig sind“). Die Regeln dieses Dokuments verwenden die Lesart von WW; die Einsichtsregel R6.1 betrifft nur Gehaltsabrechnungen und hängt nicht davon ab.], [Begriff Gehaltsdaten, R3.18],
  ),
)

== Offene Punkte (im Fallbeispiel nicht geregelt)

#figure(
  caption: "Offene Punkte",
  table(
    columns: (auto, 1fr),
    align: (left, left),
    table.header([*Nr.*], [*Frage*]),
    [O1], [Wie wird gerundet (Gehaltspositionen, kumulierte Werte)?],
    [O2], [Ist ein Feiertag als Zahltag zulässig?],
    [O3], [Wie werden erstellte Gehaltsabrechnungen korrigiert, z. B. bei Eingabefehlern oder bei Änderungen von Gehaltsdaten oder Mitarbeiterstatus nach dem Gehaltslauf?],
    [O4], [Was gilt, wenn der Mitarbeiter zu Beginn des Gehaltslaufs keiner Kostenstelle zugeordnet ist? Sollen Lohnbuchungen bei einem Kostenstellenwechsel im Abrechnungsmonat tagesgenau aufgeteilt werden?],
    [O5], [Was gilt, wenn zum Gehaltslauf für Mai kein Bonussatz erfasst ist? Wer erhält den Bonus bei einem Wechsel der Gehaltsklasse oder bei Einstellung im Laufe des Bonusjahres?],
    [O6], [Wann wird die Gehaltsabrechnung erstellt, wenn die Einstellung erst nach dem Gehaltslauf ihres Abrechnungsmonats erfolgt (LL: Vertragsabschluss am ersten Arbeitstag)?],
    [O7], [Was gilt für Kundenverträge, die erst nach dem Gehaltslauf im CRM-System erfasst werden oder deren Vertriebsmitarbeiter im Abrechnungsmonat keinen aktiven Tag hat? Wie identifiziert das CRM-System den Vertriebsmitarbeiter?],
    [O8], [Startet NGHR den Gehaltslauf zeitgesteuert, oder lösen Anwender mit der Rolle Lohnbuchhaltung ihn aus?],
    [O9], [An welchem Tag überweist NGHR, wenn ein Gehaltslauf nach R3.9 erst nach dem Zahltag stattfindet?],
    [O10], [Was gilt, wenn keine Bankverbindung hinterlegt ist?],
    [O11], [An wen überweist NGHR die SV-Beiträge?],
    [O12], [Was gilt bei einem Auszahlungsbetrag von 0 € oder darunter (negativ möglich, wenn der Soli erstmals in einem Monat mit kleinem Bruttogehalt anfällt)?],
    [O13], [Was gilt beim Tod eines Mitarbeiters für Gehalt und Empfänger der Auszahlung?],
    [O14], [Wer pflegt die Steuer-ID in NGHR?],
    [O15], [Wie erhalten ehemalige Mitarbeiter ihre Gehaltsabrechnungen (RR: „Jahre später“) ohne aktiven User?],
    [O16], [Sollen Daten lebender ehemaliger Mitarbeiter nie gelöscht werden (A12)?],
    [O17], [Wie werden kumulierte Werte im Einführungsjahr berechnet (Vormonate in PZ) und bei Wiedereinstellung derselben Person im selben Kalenderjahr?],
    [O18], [Soll NGHR Widersprüche zwischen Manager-Kennzeichen und Gehaltsklasse melden?],
  ),
)
