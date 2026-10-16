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
    [A1], [Annahme], [Teilmonat: Das Grundgehalt wird anteilig nach aktiven Kalendertagen berechnet, Provision und Bonus ungekürzt. Grundlage: Gehalt erhalten nur aktive Mitarbeiter (RR, WW); Vertragsbeginn und -ende können mitten im Monat liegen (LL). Das Fallbeispiel nennt kein Verfahren; Arbeitstage oder ein 30-Tage-Monat wären ebenfalls denkbar. Mit der Lohnbuchhaltung zu bestätigen.], [R4.2, R4.6],
    [A2], [Auslegung], [Maßgeblich ist der Datenstand zu Beginn des Gehaltslaufs, auch für die restlichen Kalendertage des Abrechnungsmonats. Grundlage: Der Gehaltslauf findet vor Monatsende statt (R3.6c).], [R3.17, R3.18, R3.19],
    [A3], [Annahme], [Die Kostenstelle einer Gehaltsabrechnung ist die Kostenstelle zu Beginn des Gehaltslaufs. Grundlage: PP ordnet tagesgenau zu, die Lohnbuchung (KK) nennt genau eine Kostenstelle; der Datenstand folgt A2. Mit dem Controlling zu bestätigen.], [R3.19],
    [A4], [Auslegung], [Der Gehaltslauf liegt zwischen Ende des Provisionszeitraums und Zahltag. Grundlage: WW (Provisionszeitraum bis 15.), RR („vor jedem Gehaltslauf“, „pünktlich“).], [R3.6b, R3.6c],
    [A5], [Auslegung], [Beide Grenztage gehören zum Provisionszeitraum; maßgeblich ist das Abschlussdatum. Grundlage: WW „zwischen dem 16. … und dem 15.“; so schließen die Zeiträume lückenlos an.], [R4.4],
    [A6], [Auslegung], [Bemessungsgrundlage des Bonus ist das Monatsgehalt der Mai-Gehaltsabrechnung. Grundlage: WW „Prozent des monatlichen Bruttogehalts … mit dem Gehalt vom Mai ausbezahlt“.], [R4.8],
    [A7], [Annahme], [Einkommensteuer und Solidaritätszuschlag werden kumuliert über das Kalenderjahr berechnet (R4.13–R4.16). Grundlage: KK nennt nur Jahreswerte und sagt, dass die Steuern vom monatlichen Bruttogehalt abgezogen werden; ein Verfahren für die Verteilung auf die Monate nennt das Fallbeispiel nicht. Die kumulierte Berechnung stellt sicher, dass die Jahressummen den Jahreswerten entsprechen, auch bei Einstellung im laufenden Jahr, Teilmonaten und Bonus. Alternative wäre eine Verteilung der Jahreswerte zu gleichen Teilen auf die Monate. Mit der Buchhaltung zu bestätigen.], [R4.13–R4.16],
    [A8], [Auslegung], [„Gesetzlicher Bruttoverdienst“ (WW) ist das Bruttogehalt einschließlich Provision und Bonus; die BBM gilt kumuliert je Kalenderjahr (WW: „Jahresbruttogehalt“).], [R4.18],
    [A9], [Annahme], [Ein Wochentag ist ein Kalendertag von Montag bis Freitag. Grundlage: WW „letzter Wochentag eines Monats“; der Begriff lässt auch die Lesart Montag bis Samstag zu. Mit der Lohnbuchhaltung zu bestätigen.], [Begriff Wochentag, R5.2],
    [A10], [Annahme], [Die erste Gehaltsabrechnung eines Inlandsmitarbeiters wird bei seiner Einstellung ohne Gehaltspositionen angelegt (R3.1); für jeden späteren Abrechnungsmonat spätestens am Zahltag des Vormonats (R3.2). Das Fallbeispiel nennt keinen Zeitpunkt der Erzeugung. Mit der Lohnbuchhaltung zu bestätigen.], [R3.1, R3.2],
    [A11], [Auslegung], [Steuern werden wie Zahlungsabflüsse als Lohnbuchungen gemeldet (KK: „als ob diese monatlich abfließen“), mit Steuer-ID für den Abgleich (KK).], [R5.1, R5.9, R5.12],
    [A12], [Auslegung], [„Letzte Gehaltszahlung“ (II) ist die letzte Überweisung eines Auszahlungsbetrags. Ohne Sterbedatum tritt der Löschzeitpunkt nicht ein (wörtliche Lesart „zu dem späteren Zeitpunkt“).], [R6.7],
    [A13], [Auslegung], [„Gehaltsdaten“ sind Gehaltsklasse und Monatsgehalt (WW: „Das sind Gehaltsklasse und monatliches Bruttogehalt“). II verwendet den Begriff weiter („alle Daten, die zur Erstellung der Gehaltsabrechnung nötig sind“). Die Regeln dieses Dokuments verwenden die Lesart von WW; die Einsichtsregel R6.1 betrifft nur Gehaltsabrechnungen und hängt nicht davon ab.], [Begriff Gehaltsdaten, R3.17],
    [A14], [Annahme], [Die Einführungsmonate können je Gehaltsklasse verschieden sein. Grundlage: SCH führt NGHR in Phasen ein und lässt alte Gehaltsabrechnungen in PZ; eine Aufteilung nach Gehaltsklassen und die konkreten Monate nennt das Fallbeispiel nicht. Mit der Personalvorständin zu bestätigen.], [Begriff Einführungsmonat, R3.1, R3.5],
    [A15], [Annahme], [NGHR überweist die SV-Beiträge am Zahltag. Grundlage: KK (NGHR überweist Gehälter und Sozialabgaben selbst); einen Termin für Sozialabgaben nennt das Fallbeispiel nicht. Mit der Buchhaltung zu bestätigen.], [R5.4],
    [A16], [Annahme], [Der Inhalt einer erstellten Gehaltsabrechnung ändert sich nicht. Das Fallbeispiel nennt weder Unveränderlichkeit noch ein Korrekturverfahren (O3). Mit der Lohnbuchhaltung zu bestätigen.], [R3.12],
    [A17], [Annahme], [Je Abrechnungsmonat findet genau ein Gehaltslauf statt. Grundlage: RR spricht von Gehaltsläufen und vom Abruf der Kundenverträge vor jedem Gehaltslauf; eine Anzahl je Abrechnungsmonat nennt das Fallbeispiel nicht. Mit der Lohnbuchhaltung zu bestätigen.], [R3.6a],
    [A18], [Auslegung], [Die Steuermeldung weist je Mitarbeiter seine Steuer-ID aus (R5.13). Grundlage: KK – das Betriebsfinanzamt führt Mitarbeiter unter der Steuer-ID; dass die Elster-Meldung sie enthält, sagt das Fallbeispiel nicht ausdrücklich.], [R5.13],
    [A19], [Annahme], [Lohnbuchungen zu Steuerpositionen haben als Buchungsdatum den Tag des Gehaltslaufs und entstehen nur für Steuerpositionen über 0 € (R5.1). Grundlage: KK „mit jeder Erstellung einer Gehaltsabrechnung“. Mit der Buchhaltung zu bestätigen.], [R5.1],
    [A20], [Auslegung], [Anwender mit der Rolle Lohnbuchhaltung erfassen den Bonussatz (R4.11). Grundlage: RR, Leiter Lohnbuchhaltung, „dass man den Bonus nur einmal im Jahr für alle Manager im System eingeben muss“.], [R4.11],
    [A21], [Auslegung], [Die Reihenfolge der Gehaltspositionen folgt dem Rechenweg bei WW (R4.22).], [R4.22],
    [A22], [Annahme], [Die Erfassung eines Mitarbeiters in NGHR, dessen Arbeitsvertrag vor der Einführung von NGHR geschlossen wurde, ist eine Einstellung im Sinne von R3.1. Grundlage: SCH führt zuerst die Mitarbeiterstammdaten ein und lässt alte Gehaltsabrechnungen in PZ; wie bestehende Mitarbeiter in NGHR erfasst werden, nennt das Fallbeispiel nicht. Mit der Personalvorständin zu bestätigen.], [R3.1],
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
    [O9], [Was gilt, wenn bis einschließlich des Kalendertags vor dem Zahltag kein Gehaltslauf für einen Abrechnungsmonat stattgefunden hat (z. B. wegen eines Ausfalls von NGHR)? Wann findet er statt, und an welchem Tag überweist NGHR?],
    [O10], [Was gilt, wenn keine Bankverbindung hinterlegt ist?],
    [O11], [An wen überweist NGHR die SV-Beiträge?],
    [O12], [Was gilt bei einem Auszahlungsbetrag von 0 € oder darunter (negativ möglich, wenn der Soli erstmals in einem Monat mit kleinem Bruttogehalt anfällt)?],
    [O13], [Was gilt beim Tod eines Mitarbeiters für Gehalt und Empfänger der Auszahlung?],
    [O14], [Wer pflegt die Steuer-ID in NGHR?],
    [O15], [Wie erhalten ehemalige Mitarbeiter ihre Gehaltsabrechnungen (RR: „Jahre später“) ohne aktiven User? Wie sieht eine erneut eingestellte Person, die ein neuer Mitarbeiter mit neuer Personalnummer ist (R3.4), die Gehaltsabrechnungen ihres früheren Arbeitsverhältnisses in der ESS?],
    [O16], [Sollen Daten lebender ehemaliger Mitarbeiter nie gelöscht werden (A12)?],
    [O17], [Wie werden kumulierte Werte im Einführungsjahr berechnet (Vormonate in PZ) und bei Wiedereinstellung derselben Person im selben Kalenderjahr?],
    [O18], [Soll NGHR Widersprüche zwischen Manager-Kennzeichen und Gehaltsklasse melden?],
    [O19], [Woran erkennt NGHR, dass ein Mitarbeiter einen Arbeitsvertrag in Deutschland hat?],
    [O20], [Erhält ein Mitarbeiter der Gehaltsklasse „Gehalt und Bonus“ den Bonus für das Vorjahr, wenn er im Mai keinen aktiven Tag hat oder sein Arbeitsverhältnis vor Mai endet?],
    [O21], [Wann ist der Löschzeitpunkt eines Mitarbeiters, an den nie ein Auszahlungsbetrag überwiesen wurde?],
    [O22], [Enthält die Steuermeldung auch Mitarbeiter ohne erstellte Gehaltsabrechnung im Meldequartal (z. B. während des gesamten Quartals entsendet)?],
  ),
)
