= Annahmen und offene Punkte

Das Fallbeispiel lässt einige Fragen offen. Statt die Lücken stillschweigend mit Alltagswissen zu füllen (SK F54), weisen wir jede getroffene Entscheidung aus, mit der verworfenen Alternative. Fragen, die nur die Fachseite beantworten kann, stehen in 8.2 mit Ansprechpartner. Annahmen mit unmittelbarer Geldwirkung haben zusätzlich einen offenen Punkt.

#page(flipped: true)[
  == Getroffene Annahmen

  #figure(
    caption: "Getroffene Annahmen",
    table(
      columns: (0.3fr, 0.9fr, 2.4fr, 1.3fr),
      align: (left, left, left, left),
      table.header([*Nr.*], [*Thema*], [*Annahme und Begründung*], [*Verworfene Alternative*]),
      [A1], [Teilmonat], [Das Gehalt wird nach aktiven Tagen anteilig nach Kalendertagen berechnet, Provision und Bonus nicht. Begründung: Gehalt erhalten nur aktive Mitarbeiter (RR, WW); das Fallbeispiel nennt keine Regel für den Teilmonat → O16.], [Stichtagsregel (voller Monat oder nichts); Aufteilung nach Arbeitstagen; 30-Tage-Monat],
      [A2], [Stand der Daten beim Gehaltslauf], [Maßgeblich sind Gehaltsdaten, Mitarbeiterstatus und Kostenstelle, wie sie zu Beginn des Gehaltslaufs in NGHR hinterlegt sind, auch für die restlichen Kalendertage des Abrechnungsmonats.], [Tagesgenaue Aufteilung bei Änderung im Monat; Korrektur im Folgemonat],
      [A3], [Kostenstelle], [Maßgeblich ist die Kostenstelle am letzten aktiven Tag → O12.], [Aufteilung der Lohnbuchungen nach Tagen je Kostenstelle],
      [A4], [Termin Gehaltslauf], [Zwischen dem 16. und dem Tag vor dem Zahltag, damit der Provisionszeitraum abgeschlossen ist → O9.], [Fester Kalendertag],
      [A5], [Provisionszeitraum], [Beide Grenztage gehören dazu, maßgeblich ist das Abschlussdatum im CRM-System. So schließen die Zeiträume lückenlos und überschneidungsfrei aneinander an (RR: „keinen Vertrag mehr vergessen“).], [–],
      [A6], [Bonus], [Ein Bonussatz je Bonusjahr für alle Mitarbeiter der Gehaltsklasse „Gehalt und Bonus“, erfasst von der Lohnbuchhaltung (sie pflegt die Gehaltsdaten, WW). Bemessung am Monatsgehalt der Gehaltsabrechnung für Mai. Fehlt der Bonussatz, bleibt nur die Bonus-Klasse angelegt; alle anderen werden pünktlich erstellt (RR: „pünktlich“). Folgemonate desselben Mitarbeiters werden bis dahin ebenfalls zurückgestellt (R3.10 Bedingung 2) → O5.], [Individueller Bonussatz; Bemessung am Dezembergehalt des Bonusjahres; gesamter Gehaltslauf wartet],
      [A7], [Verteilung der Steuer auf Monate], [Kumulierte Jahresbetrachtung wie bei der BBM. Begründung: Nur so entspricht die Jahressumme immer den Jahresregeln nach KK. Die Hochrechnung (Monat × 12) zieht bei schwankendem Einkommen Solidaritätszuschlag ab, obwohl die Jahres-Einkommensteuer unter 18.000 € bleibt (T5: 187,92 € im März), und bei Eintritt mitten im Jahr zu viel Steuer (T7: 4.166,69 € statt 2.500,00 €). Folge: Steuer fällt erst nach Verbrauch des Grundfreibetrags an; der Solidaritätszuschlag wird im Monat des Schwellenübertritts nachgeholt (T4) → O17.], [Monatliche Hochrechnung (× 12, ÷ 12); monatlicher Freibetrag 16.000 € ÷ 12 mit Jahresausgleich],
      [A8], [Sozialversicherung], [„Gesetzlicher Bruttoverdienst“ = Bruttogehalt inklusive Provision und Bonus. Die BBM gilt kumuliert je Kalenderjahr.], [Monatliche BBM = BBM ÷ 12],
      [A9], [Zahltag], [Wochentag = Montag bis Freitag. Feiertage bleiben unberücksichtigt → O14.], [Letzter Bankarbeitstag; Werktag Montag bis Samstag (Überweisung am Samstag nicht ausführbar)],
      [A10], [Rundung], [Kaufmännisch auf volle Cent je Gehaltsposition und je kumuliertem Wert. Jede Berechnung, auch ein Schwellenvergleich, verwendet die gerundeten Beträge ihrer Eingangsgrößen. Begründung: Nur so ist jeder Betrag eindeutig und aus der Gehaltsabrechnung nachrechenbar.], [Rechnen mit ungerundeten Zwischenwerten, gerundet wird nur die ausgewiesene Gehaltsposition (T14: Arbeitgeberanteil PV 2,90 € statt 2,91 €, Auszahlungsbetrag 100,32 € statt 100,33 €)],
      [A11], [SV-Überweisung], [Die Krankenkasse des Mitarbeiters nimmt alle SV-Beiträge entgegen (sie ist das einzige in NGHR hinterlegte Versicherungsdatum, HH). Überwiesen wird am Zahltag → O20.], [Je Versicherungsträger einzeln, anderer Termin],
      [A12], [Korrekturen], [Eine erstellte Gehaltsabrechnung wird nicht geändert. Ein Korrekturprozess ist im Fallbeispiel nicht beschrieben → O13.], [Storno und Neuerstellung; Differenzposition im Folgemonat],
      [A13], [Letzte Gehaltszahlung], [Buchungsdatum der letzten Überweisung eines Auszahlungsbetrags; ersatzweise das Vertragsende.], [–],
      [A14], [Beginn des Lebenszyklus], [Die Gehaltsabrechnung entsteht ohne Inhalt: bei der Einstellung (SK F42: „Erste Gehaltsabrechnung als Hülle angelegt“) und danach spätestens am Zahltag des Vormonats. So unterscheidet die Spezifikation, wie in der Aufgabenstellung, zwischen Erzeugung und Festlegung des Inhalts. Das Fallbeispiel selbst nennt nur den Gehaltslauf.], [Erzeugung erst im Gehaltslauf (dann entfallen die Zustände „Angelegt“ und „Entfallen“)],
      [A15], [Grenzen des Mitarbeiterstatus], [Außerhalb des Arbeitsverhältnisses ist ein Mitarbeiter nicht aktiv; Vertragsbeginn und Vertragsende gehören zum Arbeitsverhältnis. Das Sterbedatum gilt als Vertragsende, sofern kein früheres festgelegt ist → O15.], [Vertragsende als erster nicht aktiver Tag],
      [A16], [Fehlende Bankverbindung oder Krankenkasse], [NGHR überweist den betroffenen Betrag nicht, bis der Wert hinterlegt ist; die Lohnbuchhaltung wird informiert.], [Gehaltslauf verweigert die Erstellung],
      [A17], [Negativer Auszahlungsbetrag], [NGHR überweist keinen Auszahlungsbetrag, überweist die SV-Beiträge und informiert die Lohnbuchhaltung; der Zahlungsstatus wird „ausgezahlt“ → O18.], [Vortrag auf die nächste Gehaltsabrechnung; Zahlungsstatus bleibt „offen“],
      [A18], [Lohnbuchungen zu Steuern], [Steuerpositionen werden wie Zahlungsabflüsse als Lohnbuchungen gemeldet (KK: „als ob diese monatlich abfließen“), mit Buchungsdatum = Tag des Gehaltslaufs, gesammelt in der Tagesmeldung.], [Separate Steuer-Schnittstelle ohne Lohnbuchstruktur],
      [A19], [Einsicht in der ESS], [Der Mitarbeiter sieht eine Gehaltsabrechnung ab ihrer Auszahlung (Zahlungsstatus „ausgezahlt“). BB nennt den Zahltag als Regelfall; in der ESS steht damit immer eine Gehaltsabrechnung, deren Auszahlung erfolgt ist.], [Abruf ab dem Kalenderdatum des Zahltags, sobald die Gehaltsabrechnung erstellt ist, unabhängig von der Auszahlung],
      [A20], [Löschung ohne Sterbedatum], [Ist kein Sterbedatum erfasst, tritt der Löschzeitpunkt nicht ein. Begründung: wörtliche Lesart von II („zu dem späteren Zeitpunkt von“); ein Zeitpunkt, der nicht eingetreten ist, kann nicht der frühere sein → O2.], [Löschung zehn Jahre nach der letzten Gehaltszahlung, solange kein Sterbedatum erfasst ist],
    ),
  )
]

#page(flipped: true)[
  == Offene Punkte

  #figure(
    caption: "Offene Punkte",
    table(
      columns: (0.3fr, 3fr, 0.9fr, 1fr),
      align: (left, left, left, left),
      table.header([*Nr.*], [*Frage*], [*Regeln*], [*Klären mit*]),
      [O1], [Wie werden kumulierte Werte (Steuer, BBM) und die Steuermeldung im Einführungsjahr berechnet, wenn die Vormonate in PZ verbleiben?], [R3.5, R4.14–R4.20, R5.13], [Schaffmeier, Wuchtig, Kohle],
      [O2], [Nach wörtlicher Lesart werden die Daten lebender ehemaliger Mitarbeiter nie gelöscht, weil Zeitpunkt 1 nicht eintritt. Ist das gewollt, etwa wegen der Betriebsrente?], [R6.10], [Intim],
      [O3], [Gilt die Kumulation je Personalnummer oder je Person, wenn jemand im selben Kalenderjahr erneut eingestellt wird?], [R4.14–R4.20], [Wuchtig, Kohle],
      [O4], [Wie wird ein Kundenvertrag vergütet, (a) der erst nach dem Gehaltslauf im CRM-System erfasst wird, (b) dessen Vertriebsmitarbeiter im Abrechnungsmonat keinen aktiven Tag hat, (c) der nach dem 15. des Monats des Vertragsendes abgeschlossen wird?], [R3.8, R4.5, R4.6], [Reich],
      [O5], [Wer erhält den Bonus, wenn sich die Gehaltsklasse im Bonusjahr ändert (Manager erst seit März; Manager des Vorjahres, im Mai bereits ausgeschieden)? Bemessungsgrundlage: Monatsgehalt im Mai des Auszahlungsjahres oder im Dezember des Bonusjahres?], [R4.7, R4.8], [Reich, Wuchtig],
      [O6], [Sobald das ERP-System die Bankanbindung übernimmt, ändern sich R5.3–R5.11: NGHR meldet dann die zu überweisenden Beträge. Ab wann?], [R5.3–R5.11], [Baumeister, Kohle],
      [O7], [Wie erhalten ehemalige Mitarbeiter ihre Gehaltsabrechnungen (RR: „Jahre später“)? Sie haben keinen aktiven User mehr.], [R6.4], [Reich, Baumeister],
      [O8], [Ist ein weiterer Gehaltslauf am Folgetag die gewünschte Lösung für Einstellungen nach dem ersten Gehaltslauf (Vertragsabschluss am ersten Arbeitstag, LL) und nachträglich erfasste Eingangsdaten?], [R3.1, R3.7], [Wuchtig, Lässig],
      [O9], [Startet NGHR den Gehaltslauf zeitgesteuert oder löst ihn die Lohnbuchhaltung aus? An welchem Tag?], [R3.6], [Reich],
      [O10], [Wie identifiziert das CRM-System den Vertriebsmitarbeiter eines Kundenvertrags – über die User-ID, die I&B aus der Personalnummer bildet (BB)?], [R3.8], [Reich, Baumeister],
      [O11], [Manager-Kennzeichen (Personalwesen) und Gehaltsklasse (Lohnbuchhaltung) pflegen verschiedene Rollen. Soll NGHR einen Widerspruch zwischen beiden melden?], [R3.16], [Helfer, Wuchtig],
      [O12], [Soll NGHR die Lohnbuchungen bei Kostenstellenwechsel im Abrechnungsmonat tagesgenau auf die Kostenstellen aufteilen (PP: „tagesgenau“) statt nach Stichtag?], [R3.18, R5.1, R5.10], [Pinke],
      [O13], [Wie werden Fehler in einer erstellten Gehaltsabrechnung korrigiert (RR: „Dateneingabefehler“, „nachkalkulieren“), auch Statusänderungen nach dem Gehaltslauf (z. B. Entsendung ab dem 25.)? Storno und Neuerstellung oder Differenzposition im Folgemonat?], [R3.17, R3.20], [Reich, Kohle],
      [O14], [Ist der Zahltag der letzte Wochentag Montag bis Freitag auch dann, wenn er ein Feiertag ist (z. B. Karfreitag), oder der letzte Bankarbeitstag?], [R5.2], [Wuchtig, Kohle],
      [O15], [An wen überweist NGHR den Auszahlungsbetrag eines verstorbenen Mitarbeiters?], [R3.14, R5.3], [Helfer, Kohle],
      [O16], [Gilt bei Teilmonaten die Aufteilung nach Kalendertagen, nach Arbeitstagen oder ein pauschaler 30-Tage-Monat?], [R4.2], [Wuchtig],
      [O17], [Bestätigung der kumulierten Steuerberechnung (A7, T1, T4) gegenüber einem monatlichen Freibetrag von 1.333,33 € mit Jahresausgleich.], [R4.14–R4.17], [Kohle],
      [O18], [Wie ist der Fehlbetrag eines negativen Auszahlungsbetrags zu behandeln (T18): Vortrag auf die nächste Gehaltsabrechnung oder Einzug?], [R4.24], [Kohle, Wuchtig],
      [O19], [Die Steueridentifikationsnummer ist im Fallbeispiel nicht als Mitarbeiterdatum genannt, wird aber für den Abgleich im ERP-System (KK) und die Elster-Meldung benötigt. Wer pflegt sie in NGHR?], [R5.1, R5.13], [Kohle, Helfer],
      [O20], [An wen und wann überweist NGHR die SV-Beiträge – je Versicherungsart an die Krankenkasse des Mitarbeiters am Zahltag?], [R5.4], [Kohle],
      [O21], [Was gilt, wenn das Controlling einem neuen Mitarbeiter bis zum Gehaltslauf noch keine Kostenstelle zugeordnet hat? Vorschlag: Zurückstellung nach R3.12.], [R3.10, R3.12, R3.18], [Pinke],
      [O22], [Sind die Gesamtlohnkosten (Bruttogehalt + Arbeitgeberanteile, WW) eine eigene Gehaltsposition der Gehaltsabrechnung oder nur eine Kennzahl für den Forecast (PP)?], [R4.25], [Wuchtig, Pinke],
    ),
  )
]
