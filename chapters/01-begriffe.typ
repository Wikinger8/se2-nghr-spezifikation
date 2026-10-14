= Begriffe

Begriffe benennen die „Dinge“, auf die sich die Regeln beziehen. Die Definitionen folgen der Schablone „Ein X ist ein Y, das …“ und enthalten nur das Wesentliche. Alles, was sich ändern kann (Beträge, Termine, Zuständigkeiten, Rechenwege), steht nicht in der Definition, sondern in den Regeln. Erläuterungen sind kursiv von der Definition abgesetzt.

#page(flipped: true)[
  == Mitarbeiter und Gehaltsdaten

  #figure(
    caption: "Begriffe: Mitarbeiter und Gehaltsdaten",
    table(
      columns: (auto, 1fr, auto),
      align: (left, left, left),
      table.header([*Begriff*], [*Definition*], [*Beleg*]),
      [Mitarbeiter], [Ein Mitarbeiter ist eine Person, mit der die Sonnenschein AG einen Arbeitsvertrag geschlossen hat. _Erläuterung: NGHR führt ihn unter einer Personalnummer. Ehemalige Mitarbeiter sind eingeschlossen. Externe ohne Arbeitsvertrag (z. B. externe Recruiter) sind keine Mitarbeiter, aber Anwender (1.5)._], [LL, HH],
      [Personalnummer], [Die Personalnummer ist der Identifizierer eines Mitarbeiters in NGHR. _Erläuterung: Stellt die Sonnenschein AG dieselbe Person erneut ein, erhält sie eine neue Personalnummer und ist damit ein neuer Mitarbeiter._], [LL, BB],
      [Einstellung], [Die Einstellung ist die erstmalige Erfassung eines Mitarbeiters in NGHR, nachdem sein Arbeitsvertrag geschlossen ist. _Erläuterung: Sie kann auch erst am ersten Arbeitstag stattfinden._], [LL, HH],
      [Vertragsbeginn], [Der Vertragsbeginn ist der Tag, an dem das Arbeitsverhältnis eines Mitarbeiters laut Arbeitsvertrag beginnt.], [LL],
      [Vertragsende], [Das Vertragsende ist der Tag, an dem das Arbeitsverhältnis eines Mitarbeiters tatsächlich endet. _Erläuterung: nicht der Tag der Kündigung oder des Auflösungsvertrags._], [LL],
      [Arbeitsverhältnis], [Das Arbeitsverhältnis eines Mitarbeiters ist der Zeitraum vom Vertragsbeginn bis einschließlich Vertragsende. _Erläuterung: Ist kein Vertragsende festgelegt, ist das Arbeitsverhältnis unbefristet._], [LL (A)],
      [Sterbedatum], [Das Sterbedatum ist der Tag, an dem ein Mitarbeiter verstorben ist.], [LL, II],
      [Mitarbeiterstatus], [Der Mitarbeiterstatus ist ein Merkmal eines Mitarbeiters, das an jedem Kalendertag genau einen Wert hat. _Erläuterung: Das Fallbeispiel nennt unter anderem die Werte „aktiv“, „inaktiv“ und „entsendet“ (RR, LL) sowie für ehemalige Mitarbeiter „Rentner“ (LL). Die vollständige Werteliste gehört zum Lebenszyklus des Mitarbeiters (0.2). Für die Gehaltsabrechnung ist nur der Wert „aktiv“ maßgeblich._], [LL, RR],
      [Aktiver Tag], [Ein aktiver Tag ist ein Kalendertag, an dem der Mitarbeiterstatus eines Mitarbeiters „aktiv“ ist.], [LL, RR],
      [Manager], [Ein Manager ist ein Mitarbeiter, der in NGHR das Manager-Kennzeichen trägt. _Erläuterung: In der Stellungnahme „Manager-Flag“, gesetzt durch das Personalwesen (HH). Wer der Manager eines Mitarbeiters ist, ist in NGHR gepflegt (PP)._], [HH, PP],
      [Kostenstelle], [Eine Kostenstelle ist eine Organisationseinheit der Sonnenschein AG, der Mitarbeiter zugeordnet sind. _Erläuterung: Im ERP-System geführt; für jede Kostenstelle ist ein Manager verantwortlich (PP)._], [PP],
      [Bankverbindung], [Die Bankverbindung ist das Konto eines Mitarbeiters, das in NGHR für Zahlungen an ihn hinterlegt ist.], [HH, LL],
      [Krankenkasse], [Die Krankenkasse eines Mitarbeiters ist der Sozialversicherungsträger, der in NGHR für ihn hinterlegt ist.], [HH],
      [Steueridentifikationsnummer], [Die Steueridentifikationsnummer ist der Identifizierer, unter dem das Betriebsfinanzamt einen Mitarbeiter führt.], [KK],
      [Gehaltsklasse], [Die Gehaltsklasse ist ein im Arbeitsvertrag vereinbartes Merkmal eines Mitarbeiters, das festlegt, aus welchen Bruttopositionen sein Bruttogehalt besteht. _Erläuterung: Werte: „Gehalt“, „Gehalt und Provision“, „Gehalt und Bonus“._], [WW],
      [Monatsgehalt], [Das Monatsgehalt ist der im Arbeitsvertrag vereinbarte monatliche Bruttobetrag eines Mitarbeiters. _Erläuterung: In den Stellungnahmen „monatliches Bruttogehalt“. Eigener Begriff, damit es weder mit der Bruttoposition „Gehalt“ noch mit dem Bruttogehalt einer Gehaltsabrechnung verwechselt wird._], [WW],
      [Gehaltsdaten], [Die Gehaltsdaten sind die Gehaltsklasse und das Monatsgehalt eines Mitarbeiters. _Erläuterung: Wuchtig zählt genau diese beiden auf. Intims weiter gefasste Verwendung betrifft Zugriffsrechte auf Mitarbeiterdaten und ist nicht Gegenstand dieses Dokuments._], [WW],
      [Vertriebsmitarbeiter], [Ein Vertriebsmitarbeiter ist ein Mitarbeiter mit der Gehaltsklasse „Gehalt und Provision“. _Erläuterung: NGHR kennt keine Organisationsdaten (PP). Die Zugehörigkeit zum Vertrieb ergibt sich deshalb aus der Gehaltsklasse._], [WW, PP (A)],
    ),
  )
]

#page(flipped: true)[
  == Provision und Bonus

  #figure(
    caption: "Begriffe: Provision und Bonus",
    table(
      columns: (auto, 1fr, auto),
      align: (left, left, left),
      table.header([*Begriff*], [*Definition*], [*Beleg*]),
      [Kundenvertrag], [Ein Kundenvertrag ist ein Vertrag, den ein Vertriebsmitarbeiter mit einem Kunden der Sonnenschein AG abgeschlossen hat und den das CRM-System führt. _Erläuterung: Nicht zu verwechseln mit dem Arbeitsvertrag._], [RR, WW],
      [Abschlussdatum], [Das Abschlussdatum ist der Tag, an dem ein Vertriebsmitarbeiter einen Kundenvertrag abschließt.], [WW],
      [Vertragsvolumen], [Das Vertragsvolumen ist der Gesamtwert eines Kundenvertrags laut CRM-System.], [WW, RR],
      [Provisionszeitraum], [Der Provisionszeitraum eines Abrechnungsmonats ist der Zeitraum, dessen Kundenverträge in die Provision dieses Abrechnungsmonats eingehen.], [WW],
      [Provision], [Die Provision ist eine Bruttoposition, die einen Vertriebsmitarbeiter am Vertragsvolumen seiner Kundenverträge beteiligt.], [WW],
      [Bonusjahr], [Ein Bonusjahr ist ein abgeschlossenes Kalenderjahr, auf dessen Geschäftsergebnis sich ein Bonus bezieht.], [WW],
      [Bonussatz], [Ein Bonussatz ist ein Prozentsatz, der einem Bonusjahr zugeordnet ist.], [WW, RR],
      [Bonus], [Der Bonus ist eine Bruttoposition, die einen Mitarbeiter am Geschäftsergebnis eines abgeschlossenen Kalenderjahres beteiligt.], [WW, RR],
    ),
  )
]

#page(flipped: true)[
  == Gehaltsabrechnung und ihre Positionen

  #figure(
    caption: "Begriffe: Gehaltsabrechnung und ihre Positionen",
    table(
      columns: (auto, 1fr, auto),
      align: (left, left, left),
      table.header([*Begriff*], [*Definition*], [*Beleg*]),
      [Abrechnungsmonat], [Der Abrechnungsmonat ist der Kalendermonat, für den eine Gehaltsabrechnung gilt.], [KK],
      [Gehaltsposition], [Eine Gehaltsposition ist ein benannter Betrag.], [WW],
      [Gehaltsabrechnung], [Eine Gehaltsabrechnung ist eine Aufstellung der Gehaltspositionen eines Mitarbeiters für einen Abrechnungsmonat. _Erläuterung: Sie existiert bereits ohne Gehaltspositionen, bevor ihr Inhalt feststeht (Zustand „Angelegt“, Kapitel 2)._], [WW],
      [Zahlungsstatus], [Der Zahlungsstatus ist ein Merkmal einer erstellten Gehaltsabrechnung, das angibt, ob alle für sie geschuldeten Überweisungen ausgelöst sind. _Erläuterung: Werte „offen“ und „ausgezahlt“ (2.1)._], [KK, WW (A)],
      [Meldestatus], [Der Meldestatus ist ein Merkmal einer erstellten Gehaltsabrechnung, das angibt, ob ihr Bruttogehalt in einer Steuermeldung berücksichtigt ist. _Erläuterung: Werte „ungemeldet“ und „gemeldet“ (2.1)._], [KK (A)],
      [Bruttoposition], [Eine Bruttoposition ist eine Gehaltsposition, die eine Vergütung des Mitarbeiters vor Abzug von Steuern und SV-Beiträgen ausweist. _Erläuterung: Gehalt, Provision, Bonus._], [WW, RR],
      [Gehalt], [Das Gehalt ist die Bruttoposition, die den auf den Abrechnungsmonat entfallenden Teil des Monatsgehalts ausweist.], [WW],
      [Bruttogehalt], [Das Bruttogehalt ist die Gehaltsposition, die die gesamte Vergütung des Mitarbeiters für den Abrechnungsmonat vor Abzügen ausweist.], [WW],
      [Steuerart], [Eine Steuerart ist eine Abgabe an das Betriebsfinanzamt, die vom Bruttogehalt abgezogen wird.], [KK],
      [Einkommensteuer (ESt)], [Die Einkommensteuer ist die Steuerart, die auf das Jahresbruttogehalt erhoben wird. _Erläuterung: Grundfreibetrag und Steuersatz legen R4.13 und R4.14 fest._], [KK],
      [Solidaritätszuschlag (Soli)], [Der Solidaritätszuschlag ist die Steuerart, die auf die Einkommensteuer erhoben wird.], [KK],
      [Steuerposition], [Eine Steuerposition ist eine Gehaltsposition, die eine Steuerart ausweist.], [WW, KK],
      [Nettogehalt], [Das Nettogehalt ist die Gehaltsposition, die die Vergütung des Mitarbeiters nach Steuern ausweist.], [WW],
      [Versicherungsart], [Eine Versicherungsart ist eine der vier Sozialversicherungen: Krankenversicherung (KV), Pflegeversicherung (PV), Arbeitslosenversicherung (AV), Rentenversicherung (RV).], [WW],
      [SV-Beitrag], [Ein SV-Beitrag ist eine Gehaltsposition, die den gesamten Beitrag zu einer Versicherungsart ausweist.], [WW, KK],
      [Arbeitgeberanteil], [Ein Arbeitgeberanteil ist eine Gehaltsposition, die den Teil eines SV-Beitrags ausweist, den die Sonnenschein AG trägt.], [WW],
      [Auszahlungsbetrag], [Der Auszahlungsbetrag ist die Gehaltsposition, die den Betrag ausweist, den der Mitarbeiter für den Abrechnungsmonat erhält.], [WW, KK],
      [Gesamtlohnkosten], [Die Gesamtlohnkosten sind der Betrag, den die Sonnenschein AG für einen Mitarbeiter und einen Abrechnungsmonat insgesamt aufwendet. _Erläuterung: Bruttogehalt zuzüglich aller Arbeitgeberanteile (WW). Nur für den Forecast relevant → O22._], [WW, PP],
    ),
  )
]

#page(flipped: true)[
  == Steuern und Sozialversicherung

  #figure(
    caption: "Begriffe: Steuern und Sozialversicherung",
    table(
      columns: (auto, 1fr, auto),
      align: (left, left, left),
      table.header([*Begriff*], [*Definition*], [*Beleg*]),
      [Kalenderjahr einer Gehaltsabrechnung], [Das Kalenderjahr einer Gehaltsabrechnung ist das Kalenderjahr, in dem ihr Abrechnungsmonat liegt.], [KK, WW (A)],
      [Frühere Gehaltsabrechnung], [Eine frühere Gehaltsabrechnung einer Gehaltsabrechnung ist eine Gehaltsabrechnung desselben Mitarbeiters mit kleinerem Abrechnungsmonat im selben Kalenderjahr.], [(A)],
      [Kumuliertes Bruttogehalt], [Das kumulierte Bruttogehalt ist die Summe der Bruttogehälter einer Gehaltsabrechnung und aller ihrer früheren Gehaltsabrechnungen. _Erläuterung: Für den Abrechnungsmonat Dezember entspricht es dem Jahresbruttogehalt._], [KK, WW (A)],
      [Kumulierte Einkommensteuer], [Die kumulierte Einkommensteuer ist die Einkommensteuer, die auf das kumulierte Bruttogehalt einer Gehaltsabrechnung entfällt.], [KK (A)],
      [Kumulierter Solidaritätszuschlag], [Der kumulierte Solidaritätszuschlag ist der Solidaritätszuschlag, der auf die kumulierte Einkommensteuer einer Gehaltsabrechnung entfällt.], [KK (A)],
      [Jahresbruttogehalt], [Das Jahresbruttogehalt ist die Summe der Bruttogehälter aller Gehaltsabrechnungen eines Mitarbeiters in einem Kalenderjahr.], [KK, WW (A)],
      [Grundfreibetrag], [Der Grundfreibetrag ist der Teil des Jahresbruttogehalts, der keiner Einkommensteuer unterliegt.], [KK],
      [Beitragssatz], [Der Beitragssatz ist der Prozentsatz, mit dem der SV-Beitrag einer Versicherungsart berechnet wird.], [WW],
      [Beitragsbemessungsgrenze (BBM)], [Die Beitragsbemessungsgrenze ist der Betrag des Jahresbruttogehalts, bis zu dem für eine Versicherungsart Beiträge anfallen.], [WW],
      [Beitragspflichtiger Betrag], [Der beitragspflichtige Betrag ist der Teil des Bruttogehalts einer Gehaltsabrechnung, auf den für eine Versicherungsart Beiträge anfallen.], [WW (A)],
    ),
  )
]

#page(flipped: true)[
  == Abläufe, Termine, Systeme und Beteiligte

  #figure(
    caption: "Begriffe: Abläufe, Termine, Systeme und Beteiligte",
    table(
      columns: (auto, 1fr, auto),
      align: (left, left, left),
      table.header([*Begriff*], [*Definition*], [*Beleg*]),
      [Gehaltslauf], [Ein Gehaltslauf ist eine Verarbeitung in NGHR, die angelegte Gehaltsabrechnungen eines Abrechnungsmonats erstellt.], [RR],
      [Wochentag], [Ein Wochentag ist ein Kalendertag von Montag bis Freitag. _Erläuterung: Feiertage bleiben unberücksichtigt → A9, O14._], [WW],
      [Zahltag], [Der Zahltag eines Abrechnungsmonats ist der Kalendertag, an dem die Auszahlungsbeträge seiner Gehaltsabrechnungen fällig sind.], [WW, BB],
      [Überweisung], [Eine Überweisung ist eine Zahlung vom Bankkonto der Sonnenschein AG an einen Empfänger.], [KK, BB],
      [Buchungsdatum], [Das Buchungsdatum ist der Tag, an dem NGHR eine Überweisung auslöst oder eine Steuerposition berechnet.], [KK (A)],
      [Zahlungsabfluss], [Ein Zahlungsabfluss ist ein Geldbetrag, der durch eine Überweisung vom Bankkonto der Sonnenschein AG abfließt.], [KK, PP],
      [Lohnbuch], [Das Lohnbuch ist das Buch im ERP-System, in dem die Buchhaltung die Personalkosten je Mitarbeiter führt.], [KK],
      [Lohnbuchung], [Eine Lohnbuchung ist ein Eintrag im Lohnbuch, der einen Betrag einer Gehaltsabrechnung ausweist. _Erläuterung: Gebucht werden Zahlungsabflüsse und Steuerpositionen; Steuern „als ob diese monatlich abfließen“ (KK). Welche Angaben eine Lohnbuchung enthält, legen R5.1 und R5.10 fest._], [KK, PP],
      [Meldequartal], [Das Meldequartal einer Gehaltsabrechnung ist das Kalenderquartal, in dem ihr Abrechnungsmonat liegt.], [KK],
      [Quartalsbruttoeinkommen], [Das Quartalsbruttoeinkommen ist die Summe der Bruttogehälter der Gehaltsabrechnungen eines Mitarbeiters mit demselben Meldequartal, die eine Steuermeldung berücksichtigt. _Erläuterung: In der Stellungnahme „Bruttoeinkommen“._], [KK (A)],
      [Steuermeldung], [Eine Steuermeldung ist eine elektronische Meldung an das Betriebsfinanzamt, die Bruttogehälter von Gehaltsabrechnungen je Mitarbeiter und Meldequartal übermittelt. _Erläuterung: Übertragungsweg und Termine legt R5.12 fest._], [KK],
      [Betriebsfinanzamt], [Das Betriebsfinanzamt ist die Finanzbehörde, die die Steuern auf die Gehälter der Sonnenschein AG einzieht.], [KK],
      [Löschzeitpunkt], [Der Löschzeitpunkt ist der Tag, an dem NGHR alle Daten eines Mitarbeiters löscht.], [II],
      [PZ], [PZ („Personal Zentral“) ist das bisherige Personalsystem der Sonnenschein AG, das NGHR ablöst.], [SCH],
      [ERP-System], [Das ERP-System ist das System für Controlling und Buchhaltung, das Kostenstellen und das Lohnbuch führt.], [BB, PP, KK],
      [CRM-System], [Das CRM-System ist das System, das die Kundenverträge führt.], [RR],
      [Hausbank], [Die Hausbank ist die Bank, bei der die Sonnenschein AG das Bankkonto führt, von dem NGHR Überweisungen auslöst.], [KK, BB],
      [I&B], [I&B ist der zentrale Identity-Provider, der User und Rollen führt und an NGHR verteilt.], [BB],
      [User], [Ein User ist die Benutzerkennung eines Anwenders in I&B.], [BB],
      [Anwender], [Ein Anwender ist eine Person, die einen User hat. _Erläuterung: Mitarbeiter und externe Recruiter._], [BB, HH (A)],
      [Rolle], [Eine Rolle ist eine Berechtigungsgruppe in I&B, die einem Anwender zugeordnet ist.], [BB],
      [Lohnbuchhaltung], [Die Lohnbuchhaltung ist die Rolle der Anwender aus der Abteilung Lohnbuchhaltung der Sonnenschein AG.], [BB, WW, II],
      [Personalwesen], [Das Personalwesen ist die Rolle der Anwender aus der Personalabteilung der Sonnenschein AG. _Erläuterung: Anwender der Lohnbuchhaltung haben zusätzlich die Rolle Lohnbuchhaltung (II, HH)._], [BB, II, HH],
      [Recruiting], [Recruiting ist die Rolle der internen und externen Anwender aus dem Recruiting-Team der Sonnenschein AG.], [BB, HH],
      [Employee Self-Service (ESS)], [Die ESS ist die Benutzerschnittstelle von NGHR, in der ein Mitarbeiter seine eigenen Daten einsieht.], [BB],
      [Geschäftsführung], [Die Geschäftsführung ist das Leitungsorgan der Sonnenschein AG.], [WW, PP],
    ),
  )
]

#page(flipped: true)[
  == Fachliches Datenmodell

  Geschäftsobjekte mit Kernattributen (Identifizierer, Lebenszyklusstatus) und ihre Beziehungen (Bedeutung, Kardinalität, Richtung):

  #figure(
    caption: "Fachliches Datenmodell: Geschäftsobjekte und Beziehungen",
    table(
      columns: (1.5fr, 0.7fr, 1.5fr, 0.6fr, 1.2fr),
      align: (left, left, left, left, left),
      table.header([*Von*], [*Beziehung*], [*Nach*], [*Kardinalität*], [*Bedeutung*]),
      [Mitarbeiter (Personalnummer, Steueridentifikationsnummer, Mitarbeiterstatus je Tag, Vertragsbeginn, Vertragsende, Sterbedatum, Gehaltsklasse, Monatsgehalt, Manager-Kennzeichen, Bankverbindung, Krankenkasse)], [hat], [Gehaltsabrechnung (Personalnummer, Abrechnungsmonat, Zustand, Zahlungsstatus, Meldestatus, Zahltag, Tag des Gehaltslaufs, Gehaltsklasse, Monatsgehalt, Anzahl der aktiven Tage)], [1 : 0..\*], [Jede Gehaltsabrechnung gehört zu genau einem Mitarbeiter; je Abrechnungsmonat höchstens eine (R3.3, R3.4).],
      [Mitarbeiter], [hat Manager], [Mitarbeiter], [0..\* : 0..1], [In NGHR gepflegt (PP); Grundlage für R6.7.],
      [Mitarbeiter], [ist zugeordnet (tagesgenau)], [Kostenstelle], [0..\* : 1], [Zuordnung durch das Controlling im ERP-System (R3.18).],
      [Gehaltsabrechnung], [ist zugeordnet], [Kostenstelle], [0..\* : 1], [Kostenstelle am letzten aktiven Tag (R3.18).],
      [Mitarbeiter (Vertriebsmitarbeiter)], [hat abgeschlossen], [Kundenvertrag (Abschlussdatum, Vertragsvolumen)], [1 : 0..\*], [Nur Vertriebsmitarbeiter erhalten dafür Provision (R4.3).],
      [Gehaltsabrechnung], [enthält], [Gehaltsposition (Bezeichnung, Betrag)], [1 : 0..\*], [In den Zuständen „Angelegt“ und „Entfallen“ keine; ab „Erstellt“ alle nach R4.25.],
      [Kundenvertrag], [geht ein in], [Gehaltsabrechnung], [0..\* : 0..1], [Höchstens eine Gehaltsabrechnung je Kundenvertrag (R4.6).],
      [Bonussatz (Bonusjahr, Prozentsatz)], [bemisst], [Gehaltsabrechnung], [1 : 0..\*], [Nur Abrechnungsmonat Mai, nur Gehaltsklasse „Gehalt und Bonus“ (R4.7).],
      [Gehaltsabrechnung], [löst aus], [Zahlungsabfluss (Buchungsdatum, Betrag, Zweck)], [1 : 0..\*], [Auszahlungsbetrag und je ein SV-Beitrag (R5.3, R5.4).],
      [Gehaltsabrechnung], [wird gebucht durch], [Lohnbuchung (Buchungsdatum, Betrag, Zweck)], [1 : 0..\*], [Je Steuerposition bei Erstellung, je Zahlungsabfluss bei Überweisung (R5.1, R5.10).],
      [Gehaltsabrechnung], [ist berücksichtigt in], [Steuermeldung (Sendedatum)], [0..\* : 0..1], [Eine Gehaltsabrechnung gehört zu höchstens einer Steuermeldung (R5.13).],
    ),
  )
]
