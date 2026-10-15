= Begriffe

// Die Quelle gliedert die Begriffe in sechs Gruppen und setzt sie als
// Zwischenueberschriften ueber die volle Tabellenbreite. Als graue Zeile
// innerhalb einer durchlaufenden Tabelle landete eine solche Gruppe immer
// wieder als letzte Zeile am Seitenfuss, waehrend ihr erster Begriff auf der
// Folgeseite stand. Wo der Umbruch faellt, haengt an der Schrift (Arial lokal,
// Liberation Sans in der Action) und laesst sich nicht zuverlaessig
// nachjustieren. Die Gruppen sind deshalb echte Zwischenueberschriften mit je
// einer Tabelle: Typst haelt eine Ueberschrift immer bei dem Inhalt, der auf
// sie folgt. Nebenbei steht damit jede Gruppe im Tabellenverzeichnis.

// Die Tabellen der grossen Gruppen sind laenger als eine Seite und muessen
// umbrechen duerfen (Ausnahme von der Regel in main.typ). Die Kopfzeile
// wiederholt sich dabei auf jeder Folgeseite.
#show figure: set block(breakable: true)

#let begriffe(titel, ..zeilen) = figure(
  caption: "Begriffe: " + titel,
  table(
    // Die erste Spalte muss die langen Komposita ("Betriebsfinanzamt",
    // "Beitragsbemessungsgrenze") aufnehmen, ohne dass sie in die Definition
    // hineinlaufen.
    columns: (1.3fr, 2.9fr, 0.6fr),
    align: (left, left, left),
    table.header([*Begriff*], [*Definition*], [*Quelle*]),
    ..zeilen,
  ),
)

Begriffe benennen die „Dinge“, auf die sich die Regeln beziehen. Alles, was sich ändern kann (Beträge, Termine, Rechenwege), steht nicht in der Definition, sondern in den Regeln. Erläuterungen sind nicht normativ.

== Mitarbeiter und Gehaltsdaten

#begriffe(
  "Mitarbeiter und Gehaltsdaten",
  [Mitarbeiter], [Ein Mitarbeiter ist eine Person bezogen auf genau einen Arbeitsvertrag, den die Sonnenschein AG mit ihr geschlossen hat. \ _Erläuterung: Ehemalige Mitarbeiter sind eingeschlossen. Stellt die Sonnenschein AG dieselbe Person erneut ein, ist sie ein neuer Mitarbeiter (R3.4)._], [LL, HH],
  [Personalnummer], [Die Personalnummer ist der Identifizierer eines Mitarbeiters in NGHR.], [LL, BB],
  [Einstellung], [Die Einstellung ist die Erfassung eines Mitarbeiters in NGHR nach Abschluss seines Arbeitsvertrags.], [LL, HH],
  [Vertragsbeginn], [Der Vertragsbeginn ist der im Arbeitsvertrag vereinbarte Tag des Arbeitsbeginns.], [LL],
  [Vertragsende], [Das Vertragsende ist der letzte Tag, an dem der Arbeitsvertrag eines Mitarbeiters gilt. \ _Erläuterung: Nicht der Tag der Kündigung oder des Auflösungsvertrags._], [LL],
  [Arbeitsverhältnis], [Das Arbeitsverhältnis eines Mitarbeiters ist der Zeitraum von seinem Vertragsbeginn bis einschließlich seinem Vertragsende; ohne Vertragsende ist es unbefristet.], [LL],
  [Sterbedatum], [Das Sterbedatum ist der Tag, an dem ein Mitarbeiter verstorben ist.], [LL, II],
  [Mitarbeiterstatus], [Der Mitarbeiterstatus ist ein Merkmal eines Mitarbeiters mit genau einem Wert je Kalendertag. \ _Erläuterung: Werte sind u. a. „aktiv“, „inaktiv“, „entsendet“, „Rentner“._], [LL, RR],
  [Aktiver Tag], [Ein aktiver Tag ist ein Kalendertag, an dem der Mitarbeiterstatus eines Mitarbeiters „aktiv“ ist.], [LL, RR],
  [Manager], [Ein Manager ist ein Mitarbeiter, für den in NGHR das Manager-Kennzeichen gesetzt ist.], [HH, PP],
  [Kostenstelle], [Eine Kostenstelle ist eine im ERP-System geführte Organisationseinheit, der Mitarbeiter tagesgenau zugeordnet sind.], [PP],
  [Bankverbindung], [Die Bankverbindung ist das Konto, das in NGHR für Zahlungen an einen Mitarbeiter hinterlegt ist.], [HH],
  [Steuer-ID], [Die Steuer-ID (Steueridentifikationsnummer) ist der Identifizierer, unter dem das Betriebsfinanzamt einen Mitarbeiter führt.], [KK],
  [Gehaltsklasse], [Die Gehaltsklasse ist ein im Arbeitsvertrag vereinbartes Merkmal eines Mitarbeiters, das festlegt, aus welchen Bruttopositionen sein Bruttogehalt besteht. \ _Erläuterung: Werte: „Gehalt“, „Gehalt und Provision“, „Gehalt und Bonus“._], [WW],
  [Monatsgehalt], [Das Monatsgehalt ist der im Arbeitsvertrag vereinbarte monatliche Bruttobetrag eines Mitarbeiters. \ _Erläuterung: Bei WW „monatliches Bruttogehalt“; nicht zu verwechseln mit dem Bruttogehalt einer Gehaltsabrechnung._], [WW],
  [Gehaltsdaten], [Die Gehaltsdaten eines Mitarbeiters sind seine Gehaltsklasse und sein Monatsgehalt. \ _Erläuterung: Zur weiteren Lesart bei II siehe A13._], [WW → A13],
  [Vertriebsmitarbeiter], [Ein Vertriebsmitarbeiter ist ein Mitarbeiter mit der Gehaltsklasse „Gehalt und Provision“. \ _Erläuterung: NGHR kennt keine Organisationsdaten (PP); Vertriebsmitarbeiter sind daher nur über die Gehaltsklasse bestimmbar._], [WW, PP],
)

== Provision und Bonus

#begriffe(
  "Provision und Bonus",
  [Kundenvertrag], [Ein Kundenvertrag ist ein Vertrag, den ein Vertriebsmitarbeiter mit einem Kunden abgeschlossen hat und den das CRM-System führt.], [RR, WW],
  [Abschlussdatum], [Das Abschlussdatum ist der Tag, an dem ein Kundenvertrag abgeschlossen wurde.], [WW],
  [Vertragsvolumen], [Das Vertragsvolumen ist der Gesamtwert eines Kundenvertrags laut CRM-System.], [WW, RR],
  [Provisionszeitraum], [Der Provisionszeitraum eines Abrechnungsmonats ist der Zeitraum, aus dem Kundenverträge in die Provision dieses Abrechnungsmonats eingehen (R4.4).], [WW],
  [Bonusjahr], [Ein Bonusjahr ist ein Kalenderjahr, für das die Geschäftsführung einen Bonussatz festlegt.], [WW],
  [Bonussatz], [Ein Bonussatz ist ein Prozentsatz des Monatsgehalts, der den Bonus für ein Bonusjahr bestimmt.], [WW, RR],
)

== Gehaltsabrechnung und Gehaltspositionen

#begriffe(
  "Gehaltsabrechnung und Gehaltspositionen",
  [Abrechnungsmonat], [Der Abrechnungsmonat ist der Kalendermonat, für den eine Gehaltsabrechnung gilt.], [KK],
  [Gehaltsabrechnung], [Eine Gehaltsabrechnung ist eine Aufstellung der Gehaltspositionen eines Mitarbeiters für einen Abrechnungsmonat.], [WW],
  [Gehaltsposition], [Eine Gehaltsposition ist ein benannter Betrag einer Gehaltsabrechnung.], [WW],
  [Bruttoposition], [Eine Bruttoposition ist eine Gehaltsposition, die eine Vergütung vor Abzügen ausweist: Gehalt, Provision oder Bonus.], [WW, RR],
  [Gehalt], [Das Gehalt ist die Bruttoposition, die den auf den Abrechnungsmonat entfallenden Teil des Monatsgehalts ausweist.], [WW],
  [Provision], [Die Provision ist die Bruttoposition, die einen Vertriebsmitarbeiter am Vertragsvolumen seiner Kundenverträge beteiligt.], [WW],
  [Bonus], [Der Bonus ist die Bruttoposition, die die jährliche Zahlung an einen Mitarbeiter der Gehaltsklasse „Gehalt und Bonus“ ausweist.], [WW, RR],
  [Bruttogehalt], [Das Bruttogehalt ist die Gehaltsposition mit der gesamten Vergütung für den Abrechnungsmonat vor Abzügen.], [WW],
  [Steuerart], [Eine Steuerart ist eine Abgabe an das Betriebsfinanzamt, die vom Bruttogehalt abgezogen wird: Einkommensteuer (ESt) oder Solidaritätszuschlag (Soli).], [KK],
  [Steuerposition], [Eine Steuerposition ist eine Gehaltsposition, die den Betrag einer Steuerart ausweist.], [WW, KK],
  [Nettogehalt], [Das Nettogehalt ist die Gehaltsposition mit der Vergütung nach Abzug der Steuerpositionen.], [WW],
  [Versicherungsart], [Eine Versicherungsart ist eine der Sozialversicherungen Kranken- (KV), Pflege- (PV), Arbeitslosen- (AV) oder Rentenversicherung (RV).], [WW],
  [SV-Beitrag], [Ein SV-Beitrag ist eine Gehaltsposition mit dem gesamten Beitrag zu einer Versicherungsart.], [WW],
  [Arbeitgeberanteil], [Ein Arbeitgeberanteil ist eine Gehaltsposition mit dem Teil eines SV-Beitrags, den die Sonnenschein AG trägt.], [WW],
  [Auszahlungsbetrag], [Der Auszahlungsbetrag ist die Gehaltsposition mit dem Betrag, den der Mitarbeiter für den Abrechnungsmonat erhält.], [WW],
)

== Jahreswerte für Steuer und Sozialversicherung

#begriffe(
  "Jahreswerte für Steuer und Sozialversicherung",
  [Frühere Gehaltsabrechnung], [Eine frühere Gehaltsabrechnung ist eine erstellte Gehaltsabrechnung desselben Mitarbeiters mit früherem Abrechnungsmonat im selben Kalenderjahr. \ _Erläuterung: Angelegte und entfallene Gehaltsabrechnungen gehen damit in keine Summe ein._], [KK, WW],
  [Kumuliertes Bruttogehalt], [Das kumulierte Bruttogehalt ist die Summe der Bruttogehälter einer Gehaltsabrechnung und aller ihrer früheren Gehaltsabrechnungen.], [KK, WW],
  [Kumulierte ESt], [Die kumulierte ESt ist die Einkommensteuer auf das kumulierte Bruttogehalt einer Gehaltsabrechnung (R4.13).], [KK],
  [Kumulierter Soli], [Der kumulierte Soli ist der Solidaritätszuschlag auf die kumulierte ESt einer Gehaltsabrechnung (R4.15).], [KK],
  [Jahresbruttogehalt], [Das Jahresbruttogehalt ist die Summe der Bruttogehälter aller erstellten Gehaltsabrechnungen eines Mitarbeiters in einem Kalenderjahr.], [KK, WW],
  [Grundfreibetrag], [Der Grundfreibetrag ist der Teil des Jahresbruttogehalts, der keiner Einkommensteuer unterliegt.], [KK],
  [Beitragsbemessungsgrenze (BBM)], [Die BBM ist das Jahresbruttogehalt, bis zu dem für eine Versicherungsart Beiträge anfallen.], [WW],
  [Beitragspflichtiger Betrag], [Der beitragspflichtige Betrag ist der Teil des Bruttogehalts einer Gehaltsabrechnung, auf den für eine Versicherungsart Beiträge anfallen.], [WW],
)

== Abläufe und Termine

#begriffe(
  "Abläufe und Termine",
  [Einführungsmonat], [Der Einführungsmonat einer Gehaltsklasse ist der erste Abrechnungsmonat, für den NGHR Gehaltsabrechnungen von Mitarbeitern dieser Gehaltsklasse erstellt. \ _Erläuterung: „Gehalt“: Release 2; „Gehalt und Provision“ und „Gehalt und Bonus“: Release 3 (SK F6)._], [SCH, SK F6],
  [Gehaltslauf], [Ein Gehaltslauf ist eine Verarbeitung in NGHR, die angelegte Gehaltsabrechnungen eines Abrechnungsmonats erstellt oder als entfallen kennzeichnet.], [RR],
  [Wochentag], [Ein Wochentag ist ein Kalendertag von Montag bis Freitag.], [WW → A9],
  [Zahltag], [Der Zahltag ist der Kalendertag, an dem die Auszahlungsbeträge der Gehaltsabrechnungen eines Abrechnungsmonats fällig sind.], [WW, BB],
  [Überweisung], [Eine Überweisung ist eine Zahlung vom Konto der Sonnenschein AG bei der Hausbank an einen Empfänger.], [KK, BB],
  [Zahlungsabfluss], [Ein Zahlungsabfluss ist eine Überweisung, die NGHR für eine Gehaltsabrechnung auslöst.], [KK, PP],
  [Lohnbuch], [Das Lohnbuch ist das Buch im ERP-System, in dem die Buchhaltung Zahlungsabflüsse und Steuern je Mitarbeiter verbucht.], [KK],
  [Lohnbuchung], [Eine Lohnbuchung ist ein Eintrag im Lohnbuch zu einem Zahlungsabfluss oder zu einer Steuerposition.], [KK, PP],
  [Meldequartal], [Das Meldequartal einer Gehaltsabrechnung ist das Kalenderquartal, in dem ihr Abrechnungsmonat liegt.], [KK],
  [Quartalsbruttoeinkommen], [Das Quartalsbruttoeinkommen ist die Summe der Bruttogehälter der Gehaltsabrechnungen eines Mitarbeiters mit demselben Meldequartal, die eine Steuermeldung berücksichtigt. \ _Erläuterung: Bei KK „Bruttoeinkommen“._], [KK],
  [Steuermeldung], [Eine Steuermeldung ist eine elektronische Meldung per Elster an das Betriebsfinanzamt, die Quartalsbruttoeinkommen je Mitarbeiter übermittelt.], [KK],
  [Löschzeitpunkt], [Der Löschzeitpunkt eines Mitarbeiters ist der Tag, an dem NGHR alle Daten dieses Mitarbeiters löscht (R6.7).], [II],
)

== Systeme und Beteiligte

#begriffe(
  "Systeme und Beteiligte",
  [PZ], [PZ („Personal Zentral“) ist das bestehende IT-System für das Personalwesen, das NGHR ablöst.], [SCH],
  [ERP-System], [Das ERP-System ist das System für Controlling und Buchhaltung, das Kostenstellen und Lohnbuch führt.], [BB, PP, KK],
  [CRM-System], [Das CRM-System ist das System, das die Kundenverträge führt.], [RR],
  [Vertragsschnittstelle], [Die Vertragsschnittstelle ist die Schnittstelle des CRM-Systems, über die andere Systeme Kundenverträge abrufen.], [RR],
  [Hausbank], [Die Hausbank ist die Bank, bei der die Sonnenschein AG das Konto führt, von dem NGHR Überweisungen auslöst.], [KK, BB],
  [Betriebsfinanzamt], [Das Betriebsfinanzamt ist die Finanzbehörde, die die Steuern auf die Gehälter der Sonnenschein AG einzieht.], [KK],
  [Elster], [Elster ist das elektronische Verfahren, über das NGHR Steuermeldungen an das Betriebsfinanzamt übermittelt.], [KK],
  [I&B], [I&B ist der zentrale Identity-Provider der Sonnenschein AG.], [BB],
  [User], [Ein User ist ein Benutzerkonto in I&B, das aktiv oder inaktiv ist.], [BB],
  [Anwender], [Ein Anwender ist eine Person mit einem User. \ _Erläuterung: Mitarbeiter und externe Recruiter (HH)._], [BB, HH],
  [Rolle], [Eine Rolle ist eine Berechtigungsgruppe, die I&B einem Anwender zuordnet. \ _Erläuterung: U. a. Mitarbeiter, Manager, Personalwesen, Lohnbuchhaltung, Recruiting. Anwender mit der Rolle Lohnbuchhaltung haben auch die Rolle Personalwesen (II, HH)._], [BB, HH, II],
  [Employee Self-Service (ESS)], [Die ESS ist die Benutzerschnittstelle von NGHR, in der ein Mitarbeiter seine eigenen Daten und Gehaltsabrechnungen einsieht.], [BB],
)
