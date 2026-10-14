# NGHR – Fachliche Regeln für das Erstellen und Abarbeiten von Gehaltsabrechnungen

**Übergabe an Claude Code:** Dieser Tab enthält die finale, überarbeitete Spezifikation (Stand 14.10.2026) zum Einfügen in das Typst-Template. Die exakte Markdown-Quelldatei liegt als Blob im Dokument (siehe Abschnitt „Quelldatei“ am Ende); sie ist die verbindliche Vorlage für die Übertragung nach Typst.

**Gruppenaufgabe zur Spezifikation · Regeln · Gruppe 3** WWI-25-SEA · Software Engineering II – Kernkonzepte · Oliver Theißen Gruppe 3: Diehl · Fischer · Mouait · Pollin · Roth · Schuessler · Stand: Oktober 2026

Dieses Dokument legt fest, nach welchen fachlichen Regeln NGHR eine Gehaltsabrechnung anlegt, erstellt, auszahlt, meldet und löscht. Ein Projektteam, das die Sonnenschein AG nicht kennt, soll damit die Geschäftslogik implementieren und testen können, ohne weiteres Wissen hinzuzuziehen. Jede Regel nennt ihre Quelle im Fallbeispiel. Wo das Fallbeispiel schweigt, ist die getroffene Entscheidung als Annahme ausgewiesen, nicht stillschweigend ergänzt.

## 0 Geltungsbereich, Abgrenzung und Lesehinweise

### 0.1 Geltungsbereich

Die Regeln gelten für Gehaltsabrechnungen, die NGHR für Mitarbeiter mit Arbeitsvertrag in Deutschland erstellt, in allen drei Gehaltsklassen „Gehalt“, „Gehalt und Provision“ und „Gehalt und Bonus“ (Roadmap: Releases 2 und 3). Sie decken den gesamten Lebenszyklus einer Gehaltsabrechnung ab: vom Anlegen bis zur Löschung. Danach löst kein Anwendungsfall mehr etwas an ihr aus.

### 0.2 Nicht Gegenstand dieses Dokuments

| Thema | Grund |
| --- | --- |
| Gehaltsabrechnungen für Mitarbeiter in anderen Ländern | Spätere Phasen der Roadmap (SCH). |
| Gehaltsabrechnungen aus der Zeit vor NGHR | Sie verbleiben laut Personalvorstand in PZ (SCH). |
| Pflege von Mitarbeiterdaten, Mitarbeiterstatus und Gehaltsdaten | Eigener Lebenszyklus des Mitarbeiters. Den Mitarbeiterstatus setzt das Personalwesen (HH), die Gehaltsdaten pflegt die Lohnbuchhaltung (WW), die Kostenstelle ordnet das Controlling zu (PP). NGHR leitet den Mitarbeiterstatus nicht aus Krankheits- oder Abwesenheitstagen ab. Die Regeln hier *verwenden* diese Daten nur. |
| Lohnkostenplan und 12-Monats-Forecast der Gesamtlohnkosten | Beruht auf Gehaltsdaten, nicht auf Gehaltsabrechnungen (PP). Die Rechenregeln aus Kapitel 4 sind dafür wiederverwendbar → O22. |
| Betriebsrenten | Das Fallbeispiel nennt sie nur als Grund für Statuswissen, nicht als Zahlung durch NGHR (LL, PP). |
| Korrektur einer erstellten Gehaltsabrechnung | Im Fallbeispiel nicht beschrieben → A12, O13. |
| Übernahme der Bankanbindung durch das ERP-System | Roadmap-Entscheidung der IT (BB, KK) → O6. |

### 0.3 Konventionen

- Regeln stehen im Indikativ, Präsens und aktiv. Sie sind deklarativ: Sie beschreiben, was gilt, nicht wie es programmiert wird. Wo ein Ereignis mehrere Folgen hat, steht „Folgendes gilt, sobald …“.
- Die Begriffe aus Kapitel 1 werden in den Regeln unverändert und vollständig verwendet. Folgerungen und Beispiele stehen nicht in der Regel, sondern in einer kursiven *Erläuterung* darunter. Erläuterungen sind nicht normativ.
- Regel-IDs: R\<Kapitel>.\<Nr>. Alle Beträge sind in Euro.

### 0.4 Quellenkürzel und Belegarten

| Kürzel | Quelle | Kürzel | Quelle |
| --- | --- | --- | --- |
| SCH | Sabine Schaffmeier, Personalvorstand | LL | Lara Lässig, Unternehmensprozesse |
| RR | Richard Reich, Leiter Lohnbuchhaltung | II | Ingmar Intim, Datenschutzbeauftragter |
| BB | Barbara Baumeister, Enterprise Architekt | PP | Paul Pinke, Controlling |
| WW | Werner Wuchtig, Lohnbuchhaltung | HH | Hella Helfer, Allgemeines Personalwesen |
| KK | Karola Kohle, Buchhaltung und Steuern | SK | Vorlesungsskript SE II (F = Folie). SK F6 (Zielbild NGHR) gilt als Fachbeleg; alle übrigen Folien sind Methodenquelle. |

Belegarten hinter jeder Regel:

- **(B) belegt**: Die Quelle sagt es ausdrücklich.
- **(A) abgeleitet**: Die Regel folgt logisch aus belegten Aussagen; die Ableitung ist angegeben.
- **→ A\<n>**: Die Regel beruht auf einer getroffenen Annahme (Kapitel 8.1).
- **→ O\<n>**: Zu der Regel gibt es eine offene Frage an die Fachseite (Kapitel 8.2).

## 1 Begriffe

Begriffe benennen die „Dinge“, auf die sich die Regeln beziehen. Die Definitionen folgen der Schablone „Ein X ist ein Y, das …“ und enthalten nur das Wesentliche. Alles, was sich ändern kann (Beträge, Termine, Zuständigkeiten, Rechenwege), steht nicht in der Definition, sondern in den Regeln. Erläuterungen sind kursiv von der Definition abgesetzt.

### 1.1 Mitarbeiter und Gehaltsdaten

| Begriff | Definition | Beleg |
| --- | --- | --- |
| Mitarbeiter | Ein Mitarbeiter ist eine Person, mit der die Sonnenschein AG einen Arbeitsvertrag geschlossen hat. *Erläuterung: NGHR führt ihn unter einer Personalnummer. Ehemalige Mitarbeiter sind eingeschlossen. Externe ohne Arbeitsvertrag (z. B. externe Recruiter) sind keine Mitarbeiter, aber Anwender (1.5).* | LL, HH |
| Personalnummer | Die Personalnummer ist der Identifizierer eines Mitarbeiters in NGHR. *Erläuterung: Stellt die Sonnenschein AG dieselbe Person erneut ein, erhält sie eine neue Personalnummer und ist damit ein neuer Mitarbeiter.* | LL, BB |
| Einstellung | Die Einstellung ist die erstmalige Erfassung eines Mitarbeiters in NGHR, nachdem sein Arbeitsvertrag geschlossen ist. *Erläuterung: Sie kann auch erst am ersten Arbeitstag stattfinden.* | LL, HH |
| Vertragsbeginn | Der Vertragsbeginn ist der Tag, an dem das Arbeitsverhältnis eines Mitarbeiters laut Arbeitsvertrag beginnt. | LL |
| Vertragsende | Das Vertragsende ist der Tag, an dem das Arbeitsverhältnis eines Mitarbeiters tatsächlich endet. *Erläuterung: nicht der Tag der Kündigung oder des Auflösungsvertrags.* | LL |
| Arbeitsverhältnis | Das Arbeitsverhältnis eines Mitarbeiters ist der Zeitraum vom Vertragsbeginn bis einschließlich Vertragsende. *Erläuterung: Ist kein Vertragsende festgelegt, ist das Arbeitsverhältnis unbefristet.* | LL (A) |
| Sterbedatum | Das Sterbedatum ist der Tag, an dem ein Mitarbeiter verstorben ist. | LL, II |
| Mitarbeiterstatus | Der Mitarbeiterstatus ist ein Merkmal eines Mitarbeiters, das an jedem Kalendertag genau einen Wert hat. *Erläuterung: Das Fallbeispiel nennt unter anderem die Werte „aktiv“, „inaktiv“ und „entsendet“ (RR, LL) sowie für ehemalige Mitarbeiter „Rentner“ (LL). Die vollständige Werteliste gehört zum Lebenszyklus des Mitarbeiters (0.2). Für die Gehaltsabrechnung ist nur der Wert „aktiv“ maßgeblich.* | LL, RR |
| Aktiver Tag | Ein aktiver Tag ist ein Kalendertag, an dem der Mitarbeiterstatus eines Mitarbeiters „aktiv“ ist. | LL, RR |
| Manager | Ein Manager ist ein Mitarbeiter, der in NGHR das Manager-Kennzeichen trägt. *Erläuterung: In der Stellungnahme „Manager-Flag“, gesetzt durch das Personalwesen (HH). Wer der Manager eines Mitarbeiters ist, ist in NGHR gepflegt (PP).* | HH, PP |
| Kostenstelle | Eine Kostenstelle ist eine Organisationseinheit der Sonnenschein AG, der Mitarbeiter zugeordnet sind. *Erläuterung: Im ERP-System geführt; für jede Kostenstelle ist ein Manager verantwortlich (PP).* | PP |
| Bankverbindung | Die Bankverbindung ist das Konto eines Mitarbeiters, das in NGHR für Zahlungen an ihn hinterlegt ist. | HH, LL |
| Krankenkasse | Die Krankenkasse eines Mitarbeiters ist der Sozialversicherungsträger, der in NGHR für ihn hinterlegt ist. | HH |
| Steueridentifikationsnummer | Die Steueridentifikationsnummer ist der Identifizierer, unter dem das Betriebsfinanzamt einen Mitarbeiter führt. | KK |
| Gehaltsklasse | Die Gehaltsklasse ist ein im Arbeitsvertrag vereinbartes Merkmal eines Mitarbeiters, das festlegt, aus welchen Bruttopositionen sein Bruttogehalt besteht. *Erläuterung: Werte: „Gehalt“, „Gehalt und Provision“, „Gehalt und Bonus“.* | WW |
| Monatsgehalt | Das Monatsgehalt ist der im Arbeitsvertrag vereinbarte monatliche Bruttobetrag eines Mitarbeiters. *Erläuterung: In den Stellungnahmen „monatliches Bruttogehalt“. Eigener Begriff, damit es weder mit der Bruttoposition „Gehalt“ noch mit dem Bruttogehalt einer Gehaltsabrechnung verwechselt wird.* | WW |
| Gehaltsdaten | Die Gehaltsdaten sind die Gehaltsklasse und das Monatsgehalt eines Mitarbeiters. *Erläuterung: Wuchtig zählt genau diese beiden auf. Intims weiter gefasste Verwendung betrifft Zugriffsrechte auf Mitarbeiterdaten und ist nicht Gegenstand dieses Dokuments.* | WW |
| Vertriebsmitarbeiter | Ein Vertriebsmitarbeiter ist ein Mitarbeiter mit der Gehaltsklasse „Gehalt und Provision“. *Erläuterung: NGHR kennt keine Organisationsdaten (PP). Die Zugehörigkeit zum Vertrieb ergibt sich deshalb aus der Gehaltsklasse.* | WW, PP (A) |

### 1.2 Provision und Bonus

| Begriff | Definition | Beleg |
| --- | --- | --- |
| Kundenvertrag | Ein Kundenvertrag ist ein Vertrag, den ein Vertriebsmitarbeiter mit einem Kunden der Sonnenschein AG abgeschlossen hat und den das CRM-System führt. *Erläuterung: Nicht zu verwechseln mit dem Arbeitsvertrag.* | RR, WW |
| Abschlussdatum | Das Abschlussdatum ist der Tag, an dem ein Vertriebsmitarbeiter einen Kundenvertrag abschließt. | WW |
| Vertragsvolumen | Das Vertragsvolumen ist der Gesamtwert eines Kundenvertrags laut CRM-System. | WW, RR |
| Provisionszeitraum | Der Provisionszeitraum eines Abrechnungsmonats ist der Zeitraum, dessen Kundenverträge in die Provision dieses Abrechnungsmonats eingehen. | WW |
| Provision | Die Provision ist eine Bruttoposition, die einen Vertriebsmitarbeiter am Vertragsvolumen seiner Kundenverträge beteiligt. | WW |
| Bonusjahr | Ein Bonusjahr ist ein abgeschlossenes Kalenderjahr, auf dessen Geschäftsergebnis sich ein Bonus bezieht. | WW |
| Bonussatz | Ein Bonussatz ist ein Prozentsatz, der einem Bonusjahr zugeordnet ist. | WW, RR |
| Bonus | Der Bonus ist eine Bruttoposition, die einen Mitarbeiter am Geschäftsergebnis eines abgeschlossenen Kalenderjahres beteiligt. | WW, RR |

### 1.3 Gehaltsabrechnung und ihre Positionen

| Begriff | Definition | Beleg |
| --- | --- | --- |
| Abrechnungsmonat | Der Abrechnungsmonat ist der Kalendermonat, für den eine Gehaltsabrechnung gilt. | KK |
| Gehaltsposition | Eine Gehaltsposition ist ein benannter Betrag. | WW |
| Gehaltsabrechnung | Eine Gehaltsabrechnung ist eine Aufstellung der Gehaltspositionen eines Mitarbeiters für einen Abrechnungsmonat. *Erläuterung: Sie existiert bereits ohne Gehaltspositionen, bevor ihr Inhalt feststeht (Zustand „Angelegt“, Kapitel 2).* | WW |
| Zahlungsstatus | Der Zahlungsstatus ist ein Merkmal einer erstellten Gehaltsabrechnung, das angibt, ob alle für sie geschuldeten Überweisungen ausgelöst sind. *Erläuterung: Werte „offen“ und „ausgezahlt“ (2.1).* | KK, WW (A) |
| Meldestatus | Der Meldestatus ist ein Merkmal einer erstellten Gehaltsabrechnung, das angibt, ob ihr Bruttogehalt in einer Steuermeldung berücksichtigt ist. *Erläuterung: Werte „ungemeldet“ und „gemeldet“ (2.1).* | KK (A) |
| Bruttoposition | Eine Bruttoposition ist eine Gehaltsposition, die eine Vergütung des Mitarbeiters vor Abzug von Steuern und SV-Beiträgen ausweist. *Erläuterung: Gehalt, Provision, Bonus.* | WW, RR |
| Gehalt | Das Gehalt ist die Bruttoposition, die den auf den Abrechnungsmonat entfallenden Teil des Monatsgehalts ausweist. | WW |
| Bruttogehalt | Das Bruttogehalt ist die Gehaltsposition, die die gesamte Vergütung des Mitarbeiters für den Abrechnungsmonat vor Abzügen ausweist. | WW |
| Steuerart | Eine Steuerart ist eine Abgabe an das Betriebsfinanzamt, die vom Bruttogehalt abgezogen wird. | KK |
| Einkommensteuer (ESt) | Die Einkommensteuer ist die Steuerart, die auf das Jahresbruttogehalt erhoben wird. *Erläuterung: Grundfreibetrag und Steuersatz legen R4.13 und R4.14 fest.* | KK |
| Solidaritätszuschlag (Soli) | Der Solidaritätszuschlag ist die Steuerart, die auf die Einkommensteuer erhoben wird. | KK |
| Steuerposition | Eine Steuerposition ist eine Gehaltsposition, die eine Steuerart ausweist. | WW, KK |
| Nettogehalt | Das Nettogehalt ist die Gehaltsposition, die die Vergütung des Mitarbeiters nach Steuern ausweist. | WW |
| Versicherungsart | Eine Versicherungsart ist eine der vier Sozialversicherungen: Krankenversicherung (KV), Pflegeversicherung (PV), Arbeitslosenversicherung (AV), Rentenversicherung (RV). | WW |
| SV-Beitrag | Ein SV-Beitrag ist eine Gehaltsposition, die den gesamten Beitrag zu einer Versicherungsart ausweist. | WW, KK |
| Arbeitgeberanteil | Ein Arbeitgeberanteil ist eine Gehaltsposition, die den Teil eines SV-Beitrags ausweist, den die Sonnenschein AG trägt. | WW |
| Auszahlungsbetrag | Der Auszahlungsbetrag ist die Gehaltsposition, die den Betrag ausweist, den der Mitarbeiter für den Abrechnungsmonat erhält. | WW, KK |
| Gesamtlohnkosten | Die Gesamtlohnkosten sind der Betrag, den die Sonnenschein AG für einen Mitarbeiter und einen Abrechnungsmonat insgesamt aufwendet. *Erläuterung: Bruttogehalt zuzüglich aller Arbeitgeberanteile (WW). Nur für den Forecast relevant → O22.* | WW, PP |

### 1.4 Steuern und Sozialversicherung

| Begriff | Definition | Beleg |
| --- | --- | --- |
| Kalenderjahr einer Gehaltsabrechnung | Das Kalenderjahr einer Gehaltsabrechnung ist das Kalenderjahr, in dem ihr Abrechnungsmonat liegt. | KK, WW (A) |
| Frühere Gehaltsabrechnung | Eine frühere Gehaltsabrechnung einer Gehaltsabrechnung ist eine Gehaltsabrechnung desselben Mitarbeiters mit kleinerem Abrechnungsmonat im selben Kalenderjahr. | (A) |
| Kumuliertes Bruttogehalt | Das kumulierte Bruttogehalt ist die Summe der Bruttogehälter einer Gehaltsabrechnung und aller ihrer früheren Gehaltsabrechnungen. *Erläuterung: Für den Abrechnungsmonat Dezember entspricht es dem Jahresbruttogehalt.* | KK, WW (A) |
| Kumulierte Einkommensteuer | Die kumulierte Einkommensteuer ist die Einkommensteuer, die auf das kumulierte Bruttogehalt einer Gehaltsabrechnung entfällt. | KK (A) |
| Kumulierter Solidaritätszuschlag | Der kumulierte Solidaritätszuschlag ist der Solidaritätszuschlag, der auf die kumulierte Einkommensteuer einer Gehaltsabrechnung entfällt. | KK (A) |
| Jahresbruttogehalt | Das Jahresbruttogehalt ist die Summe der Bruttogehälter aller Gehaltsabrechnungen eines Mitarbeiters in einem Kalenderjahr. | KK, WW (A) |
| Grundfreibetrag | Der Grundfreibetrag ist der Teil des Jahresbruttogehalts, der keiner Einkommensteuer unterliegt. | KK |
| Beitragssatz | Der Beitragssatz ist der Prozentsatz, mit dem der SV-Beitrag einer Versicherungsart berechnet wird. | WW |
| Beitragsbemessungsgrenze (BBM) | Die Beitragsbemessungsgrenze ist der Betrag des Jahresbruttogehalts, bis zu dem für eine Versicherungsart Beiträge anfallen. | WW |
| Beitragspflichtiger Betrag | Der beitragspflichtige Betrag ist der Teil des Bruttogehalts einer Gehaltsabrechnung, auf den für eine Versicherungsart Beiträge anfallen. | WW (A) |

### 1.5 Abläufe, Termine, Systeme und Beteiligte

| Begriff | Definition | Beleg |
| --- | --- | --- |
| Gehaltslauf | Ein Gehaltslauf ist eine Verarbeitung in NGHR, die angelegte Gehaltsabrechnungen eines Abrechnungsmonats erstellt. | RR |
| Wochentag | Ein Wochentag ist ein Kalendertag von Montag bis Freitag. *Erläuterung: Feiertage bleiben unberücksichtigt → A9, O14.* | WW |
| Zahltag | Der Zahltag eines Abrechnungsmonats ist der Kalendertag, an dem die Auszahlungsbeträge seiner Gehaltsabrechnungen fällig sind. | WW, BB |
| Überweisung | Eine Überweisung ist eine Zahlung vom Bankkonto der Sonnenschein AG an einen Empfänger. | KK, BB |
| Buchungsdatum | Das Buchungsdatum ist der Tag, an dem NGHR eine Überweisung auslöst oder eine Steuerposition berechnet. | KK (A) |
| Zahlungsabfluss | Ein Zahlungsabfluss ist ein Geldbetrag, der durch eine Überweisung vom Bankkonto der Sonnenschein AG abfließt. | KK, PP |
| Lohnbuch | Das Lohnbuch ist das Buch im ERP-System, in dem die Buchhaltung die Personalkosten je Mitarbeiter führt. | KK |
| Lohnbuchung | Eine Lohnbuchung ist ein Eintrag im Lohnbuch, der einen Betrag einer Gehaltsabrechnung ausweist. *Erläuterung: Gebucht werden Zahlungsabflüsse und Steuerpositionen; Steuern „als ob diese monatlich abfließen“ (KK). Welche Angaben eine Lohnbuchung enthält, legen R5.1 und R5.10 fest.* | KK, PP |
| Meldequartal | Das Meldequartal einer Gehaltsabrechnung ist das Kalenderquartal, in dem ihr Abrechnungsmonat liegt. | KK |
| Quartalsbruttoeinkommen | Das Quartalsbruttoeinkommen ist die Summe der Bruttogehälter der Gehaltsabrechnungen eines Mitarbeiters mit demselben Meldequartal, die eine Steuermeldung berücksichtigt. *Erläuterung: In der Stellungnahme „Bruttoeinkommen“.* | KK (A) |
| Steuermeldung | Eine Steuermeldung ist eine elektronische Meldung an das Betriebsfinanzamt, die Bruttogehälter von Gehaltsabrechnungen je Mitarbeiter und Meldequartal übermittelt. *Erläuterung: Übertragungsweg und Termine legt R5.12 fest.* | KK |
| Betriebsfinanzamt | Das Betriebsfinanzamt ist die Finanzbehörde, die die Steuern auf die Gehälter der Sonnenschein AG einzieht. | KK |
| Löschzeitpunkt | Der Löschzeitpunkt ist der Tag, an dem NGHR alle Daten eines Mitarbeiters löscht. | II |
| PZ | PZ („Personal Zentral“) ist das bisherige Personalsystem der Sonnenschein AG, das NGHR ablöst. | SCH |
| ERP-System | Das ERP-System ist das System für Controlling und Buchhaltung, das Kostenstellen und das Lohnbuch führt. | BB, PP, KK |
| CRM-System | Das CRM-System ist das System, das die Kundenverträge führt. | RR |
| Hausbank | Die Hausbank ist die Bank, bei der die Sonnenschein AG das Bankkonto führt, von dem NGHR Überweisungen auslöst. | KK, BB |
| I&B | I&B ist der zentrale Identity-Provider, der User und Rollen führt und an NGHR verteilt. | BB |
| User | Ein User ist die Benutzerkennung eines Anwenders in I&B. | BB |
| Anwender | Ein Anwender ist eine Person, die einen User hat. *Erläuterung: Mitarbeiter und externe Recruiter.* | BB, HH (A) |
| Rolle | Eine Rolle ist eine Berechtigungsgruppe in I&B, die einem Anwender zugeordnet ist. | BB |
| Lohnbuchhaltung | Die Lohnbuchhaltung ist die Rolle der Anwender aus der Abteilung Lohnbuchhaltung der Sonnenschein AG. | BB, WW, II |
| Personalwesen | Das Personalwesen ist die Rolle der Anwender aus der Personalabteilung der Sonnenschein AG. *Erläuterung: Anwender der Lohnbuchhaltung haben zusätzlich die Rolle Lohnbuchhaltung (II, HH).* | BB, II, HH |
| Recruiting | Recruiting ist die Rolle der internen und externen Anwender aus dem Recruiting-Team der Sonnenschein AG. | BB, HH |
| Employee Self-Service (ESS) | Die ESS ist die Benutzerschnittstelle von NGHR, in der ein Mitarbeiter seine eigenen Daten einsieht. | BB |
| Geschäftsführung | Die Geschäftsführung ist das Leitungsorgan der Sonnenschein AG. | WW, PP |

### 1.6 Fachliches Datenmodell

Geschäftsobjekte mit Kernattributen (Identifizierer, Lebenszyklusstatus) und ihre Beziehungen (Bedeutung, Kardinalität, Richtung):

| Von | Beziehung | Nach | Kardinalität | Bedeutung |
| --- | --- | --- | --- | --- |
| Mitarbeiter (Personalnummer, Steueridentifikationsnummer, Mitarbeiterstatus je Tag, Vertragsbeginn, Vertragsende, Sterbedatum, Gehaltsklasse, Monatsgehalt, Manager-Kennzeichen, Bankverbindung, Krankenkasse) | hat | Gehaltsabrechnung (Personalnummer, Abrechnungsmonat, Zustand, Zahlungsstatus, Meldestatus, Zahltag, Tag des Gehaltslaufs, Gehaltsklasse, Monatsgehalt, Anzahl der aktiven Tage) | 1 : 0..\* | Jede Gehaltsabrechnung gehört zu genau einem Mitarbeiter; je Abrechnungsmonat höchstens eine (R3.3, R3.4). |
| Mitarbeiter | hat Manager | Mitarbeiter | 0..\* : 0..1 | In NGHR gepflegt (PP); Grundlage für R6.7. |
| Mitarbeiter | ist zugeordnet (tagesgenau) | Kostenstelle | 0..\* : 1 | Zuordnung durch das Controlling im ERP-System (R3.18). |
| Gehaltsabrechnung | ist zugeordnet | Kostenstelle | 0..\* : 1 | Kostenstelle am letzten aktiven Tag (R3.18). |
| Mitarbeiter (Vertriebsmitarbeiter) | hat abgeschlossen | Kundenvertrag (Abschlussdatum, Vertragsvolumen) | 1 : 0..\* | Nur Vertriebsmitarbeiter erhalten dafür Provision (R4.3). |
| Gehaltsabrechnung | enthält | Gehaltsposition (Bezeichnung, Betrag) | 1 : 0..\* | In den Zuständen „Angelegt“ und „Entfallen“ keine; ab „Erstellt“ alle nach R4.25. |
| Kundenvertrag | geht ein in | Gehaltsabrechnung | 0..\* : 0..1 | Höchstens eine Gehaltsabrechnung je Kundenvertrag (R4.6). |
| Bonussatz (Bonusjahr, Prozentsatz) | bemisst | Gehaltsabrechnung | 1 : 0..\* | Nur Abrechnungsmonat Mai, nur Gehaltsklasse „Gehalt und Bonus“ (R4.7). |
| Gehaltsabrechnung | löst aus | Zahlungsabfluss (Buchungsdatum, Betrag, Zweck) | 1 : 0..\* | Auszahlungsbetrag und je ein SV-Beitrag (R5.3, R5.4). |
| Gehaltsabrechnung | wird gebucht durch | Lohnbuchung (Buchungsdatum, Betrag, Zweck) | 1 : 0..\* | Je Steuerposition bei Erstellung, je Zahlungsabfluss bei Überweisung (R5.1, R5.10). |
| Gehaltsabrechnung | ist berücksichtigt in | Steuermeldung (Sendedatum) | 0..\* : 0..1 | Eine Gehaltsabrechnung gehört zu höchstens einer Steuermeldung (R5.13). |

## 2 Lebenszyklus der Gehaltsabrechnung

Jede Gehaltsabrechnung beginnt ohne Inhalt: NGHR legt sie an und erstellt sie im Gehaltslauf oder kennzeichnet sie als entfallen, wenn der Mitarbeiter im Abrechnungsmonat keinen aktiven Tag hat. Ab der Erstellung laufen zwei Vorgänge unabhängig voneinander: die Auszahlung am Zahltag und die Steuermeldung nach Quartalsende. Die Spezifikation bildet sie deshalb nicht als lineare Zustandsfolge ab, sondern als zwei Merkmale der erstellten Gehaltsabrechnung, den Zahlungsstatus und den Meldestatus (mehrere Zustände pro Geschäftsobjekt, SK F36). So meldet NGHR das Bruttogehalt auch dann, wenn die Auszahlung etwa wegen einer fehlenden Bankverbindung noch aussteht. Jahre später löscht NGHR die Gehaltsabrechnung mit allen Daten des Mitarbeiters. Es gibt keine Rücksprünge. „Gelöscht“ ist der Endzustand. Die Kapitel 3 bis 6 folgen dieser Reihenfolge.

### 2.1 Zustände

| Zustand | Bedeutung |
| --- | --- |
| Angelegt | Die Gehaltsabrechnung existiert für Mitarbeiter und Abrechnungsmonat, enthält aber noch keine Gehaltspositionen (Initialzustand). |
| Erstellt | Alle Gehaltspositionen sind berechnet. Der Inhalt ist endgültig. Die Gehaltsabrechnung hat zusätzlich einen Zahlungsstatus und einen Meldestatus (Tabelle unten). |
| Entfallen | Der Mitarbeiter hat im Abrechnungsmonat keinen aktiven Tag. Die Gehaltsabrechnung bleibt ohne Gehaltspositionen; NGHR zahlt und meldet nichts. |
| Gelöscht | Die Gehaltsabrechnung ist mit allen Daten des Mitarbeiters gelöscht (Endzustand). |

Merkmale einer Gehaltsabrechnung im Zustand „Erstellt“. Beide Merkmale ändern sich unabhängig voneinander (SK F36):

| Merkmal | Wert | Bedeutung |
| --- | --- | --- |
| Zahlungsstatus | offen | Mindestens eine geschuldete Überweisung ist noch nicht ausgelöst (Wert bei der Erstellung). |
| Zahlungsstatus | ausgezahlt | Alle geschuldeten Überweisungen sind ausgelöst. Die Gehaltsabrechnung ist in der ESS abrufbar. |
| Meldestatus | ungemeldet | Das Bruttogehalt ist in keiner Steuermeldung berücksichtigt (Wert bei der Erstellung). |
| Meldestatus | gemeldet | Das Bruttogehalt ist in einer Steuermeldung berücksichtigt. |

### 2.2 Zustandsübergänge und ausgelöste Aktionen

| Ereignis | Bedingung | Zustand alt | Zustand neu | Ausgelöste Aktionen | Regeln |
| --- | --- | --- | --- | --- | --- |
| Einstellung eines Mitarbeiters | – | – | Angelegt | Gehaltsabrechnung für den Abrechnungsmonat des Vertragsbeginns | R3.1 |
| Zahltag des Vormonats; Einstellung oder Änderung von Vertragsbeginn oder Vertragsende nach diesem Zahltag | Arbeitsverhältnis besteht im Abrechnungsmonat | – | Angelegt | Gehaltsabrechnung für den Abrechnungsmonat | R3.2 |
| Gehaltslauf | mindestens ein aktiver Tag, frühere Gehaltsabrechnungen verarbeitet, Eingangsdaten vollständig | Angelegt | Erstellt (Zahlungsstatus „offen“, Meldestatus „ungemeldet“) | Gehaltspositionen berechnen (Kapitel 4); Lohnbuchungen zu den Steuerpositionen | R3.10, R5.1 |
| Gehaltslauf | kein aktiver Tag im Abrechnungsmonat | Angelegt | Entfallen | – | R3.11 |
| Gehaltslauf | frühere Gehaltsabrechnung noch angelegt oder Eingangsdaten unvollständig (Bonussatz, Kostenstelle) | Angelegt | Angelegt | Meldung an die Lohnbuchhaltung | R3.12 |
| Angelegte Gehaltsabrechnung nach dem Gehaltslauf ihres Abrechnungsmonats verarbeitbar | – | Angelegt | Erstellt oder Entfallen | Weiterer Gehaltslauf spätestens am Folgetag | R3.7 |
| Zahltag (oder Erstellung nach dem Zahltag) | nötige Empfängerdaten hinterlegt (R5.5), Auszahlungsbetrag ≥ 0 € | Erstellt, Zahlungsstatus „offen“ | Erstellt, Zahlungsstatus „ausgezahlt“ | Überweisungen; Lohnbuchungen zu den Zahlungsabflüssen; Abruf in der ESS | R5.3 bis R5.10, R6.3 |
| Zahltag (oder Erstellung nach dem Zahltag) | nötige Empfängerdaten hinterlegt (R5.5), Auszahlungsbetrag < 0 € | Erstellt, Zahlungsstatus „offen“ | Erstellt, Zahlungsstatus „ausgezahlt“ | Überweisung der SV-Beiträge über 0 €; Lohnbuchungen zu den Zahlungsabflüssen; Meldung an die Lohnbuchhaltung; Abruf in der ESS | R4.24, R5.4, R5.8 bis R5.10, R6.3 |
| Zahltag (oder Erstellung nach dem Zahltag) | eine nötige Empfängerangabe fehlt (R5.5) | Erstellt, Zahlungsstatus „offen“ | Erstellt, Zahlungsstatus „offen“ | übrige Überweisungen und ihre Lohnbuchungen; Meldung an die Lohnbuchhaltung | R5.5 |
| Fehlende Empfängerangabe nachträglich hinterlegt | keine weitere nötige Empfängerangabe fehlt | Erstellt, Zahlungsstatus „offen“ | Erstellt, Zahlungsstatus „ausgezahlt“ | ausstehende Überweisungen; Lohnbuchungen; Abruf in der ESS | R5.5, R5.8, R5.9 |
| Steuermeldung gesendet | Meldequartal der Gehaltsabrechnung abgeschlossen; Zahlungsstatus beliebig | Erstellt, Meldestatus „ungemeldet“ | Erstellt, Meldestatus „gemeldet“ | – | R5.12 bis R5.14 |
| Löschzeitpunkt des Mitarbeiters erreicht | – | jeder | Gelöscht | Alle Daten des Mitarbeiters löschen | R6.10, R6.11 |

Die Bedingungen der Zahltag-Zeilen schließen sich gegenseitig aus und decken alle Fälle ab. Übergänge des Zahlungsstatus ändern den Meldestatus nicht und umgekehrt.

### 2.3 Termine im Überblick

| Termin | Regel |
| --- | --- |
| 16. des Vormonats bis einschließlich 15. des Abrechnungsmonats: Provisionszeitraum | R4.4 |
| Frühestens 16. des Abrechnungsmonats, spätestens am Tag vor dem Zahltag: erster Gehaltslauf | R3.6 |
| Letzter Wochentag des Abrechnungsmonats: Zahltag | R5.2 |
| Spätestens 10.04., 10.07., 10.10., 10.01.: Steuermeldung je Meldequartal | R5.12 |
| Jahresbeginn: Bonussatz für das vergangene Bonusjahr; Kumulation für Grundfreibetrag, Solidaritätszuschlag und BBM beginnt neu | R4.9, R4.14, R4.20 |
| Abrechnungsmonat Mai: Bonus | R4.7 |

## 3 Erstellen: Anlegen und Gehaltslauf

Für jeden Abrechnungsmonat, in dem ein Arbeitsverhältnis besteht, gibt es genau eine Gehaltsabrechnung. NGHR legt sie an und erstellt sie im Gehaltslauf zwischen dem 16. und dem Tag vor dem Zahltag. Gehalt erhält nur, wer im Abrechnungsmonat mindestens einen aktiven Tag hat.

### 3.1 Anlegen

**R3.1** Folgendes gilt, sobald die Einstellung eines Mitarbeiters mit Arbeitsvertrag in Deutschland erfolgt ist: Seine Gehaltsabrechnung für den Abrechnungsmonat seines Vertragsbeginns ist im Zustand „Angelegt“. *Beleg: SCH „die Gehaltsabrechnung für Deutschland“ (B); Anlegen bei Einstellung (A) → A14, O8.*

**R3.2** Für jeden Abrechnungsmonat, in dem das Arbeitsverhältnis eines Mitarbeiters an mindestens einem Kalendertag besteht, ist spätestens am Zahltag des Vormonats eine Gehaltsabrechnung im Zustand „Angelegt“. Erfolgt die Einstellung oder eine Änderung von Vertragsbeginn oder Vertragsende erst nach diesem Zahltag, ist sie mit dieser Einstellung oder Änderung im Zustand „Angelegt“. *Erläuterung: Eine bereits angelegte Gehaltsabrechnung für einen Abrechnungsmonat, der nach der Änderung außerhalb des Arbeitsverhältnisses liegt, entfällt im Gehaltslauf (R3.11).* *Beleg: WW, monatliche Zahlung (A) → A14.*

**R3.3** Für jeden Mitarbeiter existiert je Abrechnungsmonat höchstens eine Gehaltsabrechnung. *Beleg: WW, eine monatliche Zahlung (A).*

**R3.4** Jede Gehaltsabrechnung gehört zu genau einem Mitarbeiter. *Erläuterung: Stellt die Sonnenschein AG dieselbe Person erneut ein, ist sie ein neuer Mitarbeiter (Begriff Personalnummer); ihre früheren Gehaltsabrechnungen bleiben beim früheren Mitarbeiter.* *Beleg: LL „nie … mit derselben Personalnummer zu reaktivieren“, „gibt es eine neue Personalnummer“ (B).*

**R3.5** NGHR legt keine Gehaltsabrechnungen für Abrechnungsmonate vor seiner Einführung an. Diese verbleiben in PZ. *Beleg: SCH „lassen wir die alten Gehaltsabrechnungen in PZ“ (B) → O1.*

### 3.2 Gehaltslauf

**R3.6** NGHR führt für jeden Abrechnungsmonat einen Gehaltslauf durch, frühestens am Tag nach dem Ende des Provisionszeitraums und spätestens am Tag vor dem Zahltag dieses Abrechnungsmonats. *Erläuterung: Also frühestens am 16. des Abrechnungsmonats. Ob NGHR den Gehaltslauf zeitgesteuert startet oder die Lohnbuchhaltung ihn auslöst → O9.* *Beleg: RR „vor jedem Gehaltslauf“ (B); SCH „Das muss jeden Monat funktionieren“ (B); WW (Provisionszeitraum bis zum 15.), RR „immer pünktlich“ (A) → A4, O9.*

**R3.7** Folgendes gilt, sobald nach dem Gehaltslauf eines Abrechnungsmonats eine Gehaltsabrechnung dieses Abrechnungsmonats im Zustand „Angelegt“ ist, die nach R3.10 zu erstellen oder nach R3.11 als entfallen zu kennzeichnen ist: NGHR führt spätestens am folgenden Tag einen weiteren Gehaltslauf durch, der ausschließlich Gehaltsabrechnungen im Zustand „Angelegt“ verarbeitet. *Erläuterung: Weitere Gehaltsläufe decken die Einstellung nach dem ersten Gehaltslauf (LL: Vertragsabschluss am ersten Arbeitstag), eine rückwirkende Änderung des Vertragsbeginns, den nachträglich erfassten Bonussatz und die nachträglich zugeordnete Kostenstelle ab.* *Beleg: SCH „Das muss jeden Monat funktionieren“, RR „pünktlich und korrekt“ (A) → O8.*

**R3.8** Die Provision einer Gehaltsabrechnung beruht auf den Kundenverträgen, die das CRM-System zu Beginn des Gehaltslaufs mit Abschlussdatum, Vertragsvolumen und abschließendem Vertriebsmitarbeiter führt. NGHR übernimmt sie über die Vertragsschnittstelle des CRM-Systems. *Beleg: RR „das CRM-System hat schon eine Schnittstelle für die Verträge … NGHR diese nur vor jedem Gehaltslauf aufrufen müsste“ (B); Inhalt nach WW (A) → O4, O10.*

**R3.9** Jede Verarbeitung, die wegen eines Ausfalls von NGHR nicht an ihrem Termin stattgefunden hat (Anlegen, Gehaltslauf, Überweisung, Lohnbuchung, Steuermeldung), findet unmittelbar nach der Wiederherstellung von NGHR statt. *Beleg: SK F6, Zielbild NGHR „Ungeplanter Ausfall nicht mehr als ein Arbeitstag & Gehaltsabrechnung muss ggf. nachgeholt werden“ (B); Verallgemeinerung auf alle Verarbeitungen (A).*

### 3.3 Erstellt oder entfallen

**R3.10** Im Gehaltslauf erstellt NGHR jede angelegte Gehaltsabrechnung, für die alle drei Bedingungen erfüllt sind:

1. Der Mitarbeiter hat im Abrechnungsmonat mindestens einen aktiven Tag.
2. Alle früheren Gehaltsabrechnungen sind im Zustand „Erstellt“ oder „Entfallen“.
3. Die Eingangsdaten liegen vor: die Kostenstelle (R3.18) und, bei Gehaltsklasse „Gehalt und Bonus“ im Abrechnungsmonat Mai, der Bonussatz des vorangegangenen Bonusjahres (R4.10).

Danach ist die Gehaltsabrechnung im Zustand „Erstellt“ mit dem Zahlungsstatus „offen“ und dem Meldestatus „ungemeldet“. *Erläuterung: Bedingung 2 stellt sicher, dass kumulierte Werte (R4.14, R4.20) vollständig sind. Frühere Gehaltsabrechnungen sind nur die desselben Kalenderjahres (Begriff in 1.4). Eine noch angelegte Gehaltsabrechnung für Dezember hält die für Januar des Folgejahres daher nicht zurück, denn die kumulierten Werte beginnen im Januar neu (R4.14, R4.20).* *Beleg: RR „aktive Mitarbeiter bekommen in Deutschland Gehalt“ (B); WW „Wir bezahlen unsere aktiven Mitarbeiter“ (B); Bedingungen 2 und 3 (A).*

**R3.11** Die angelegte Gehaltsabrechnung eines Mitarbeiters ohne aktiven Tag im Abrechnungsmonat ist nach dem Gehaltslauf im Zustand „Entfallen“. *Erläuterung: Das betrifft entsendete Mitarbeiter (die ausländische Tochtergesellschaft zahlt ihr Gehalt, RR) und inaktive Mitarbeiter (Sabbatical, Freistellung aus familiären Gründen, längere Krankheit, LL).* *Beleg: RR „Bei entsendeten Mitarbeitern übernimmt unsere Tochtergesellschaft im Ausland die Gehaltszahlung“ (B); LL (inaktiv) (A).*

**R3.12** Folgendes gilt, sobald im Gehaltslauf für eine angelegte Gehaltsabrechnung Bedingung 1 nach R3.10 erfüllt, aber Bedingung 2 oder 3 nicht erfüllt ist: Die Gehaltsabrechnung bleibt im Zustand „Angelegt“, und die Lohnbuchhaltung ist über sie und die fehlende Bedingung informiert. *Erläuterung (Folgerung aus R3.10 und R3.7): Alle übrigen Gehaltsabrechnungen erstellt NGHR im selben Gehaltslauf; ein weiterer Gehaltslauf erstellt die zurückgestellte, sobald die Bedingung erfüllt ist. Die Folgemonate desselben Mitarbeiters warten bis dahin (Bedingung 2).* *Beleg: RR „immer pünktlich und korrekt“ (A) → A6, O21.*

**R3.13** An Kalendertagen außerhalb seines Arbeitsverhältnisses ist der Mitarbeiterstatus eines Mitarbeiters nicht „aktiv“. *Erläuterung: Eine Kündigung und ein Auflösungsvertrag ändern den Mitarbeiterstatus nicht; bis zum Vertragsende erstellt NGHR die Gehaltsabrechnungen nach R3.10 (LL: „bleibt der Mitarbeiter bis zum Vertragsende in seinem aktuellen Status. Damit wird ggf. weiter Gehalt bezahlt“).* *Beleg: LL „Mit dem Tag des Arbeitsbeginns, wird das Arbeitsverhältnis aktiv“, „Am Vertragsende ändert sich der Status des Mitarbeiters“ (B) → A15.*

**R3.14** Das Sterbedatum eines Mitarbeiters gilt als sein Vertragsende, sofern kein früheres Vertragsende festgelegt ist. *Erläuterung (Folgerung aus R3.13 und R3.10): Die Gehaltsabrechnung des Sterbemonats erstellt NGHR mit den aktiven Tagen bis einschließlich Sterbedatum.* *Beleg: LL „Was leider auch jederzeit passieren kann, ist das ein Mitarbeiter stirbt. Das müssen wir wissen“ (B); Gleichstellung mit dem Vertragsende (A) → A15, O15.*

### 3.4 Eingangsdaten und Kopfdaten

**R3.15** Jeder Mitarbeiter ist genau einer Gehaltsklasse zugeordnet. *Beleg: WW „Jeder Mitarbeiter ist einer Gehaltsklasse zugeordnet“ (B).*

**R3.16** Jeder Manager ist der Gehaltsklasse „Gehalt und Bonus“ zugeordnet. *Erläuterung: Auch ein Manager, der im Vertrieb arbeitet (WW). Er ist damit kein Vertriebsmitarbeiter und erhält keine Provision. NGHR berechnet nach der Gehaltsklasse der Gehaltsabrechnung (R3.17), nicht nach dem Manager-Kennzeichen → O11.* *Beleg: WW „Das gilt für das Management, auch wenn ein Manager im Vertrieb arbeitet“ (B).*

**R3.17** Gehaltsklasse und Monatsgehalt einer Gehaltsabrechnung sind die Gehaltsdaten des Mitarbeiters zu Beginn des Gehaltslaufs, der sie erstellt. Ebenso maßgeblich ist der zu Beginn dieses Gehaltslaufs in NGHR hinterlegte Mitarbeiterstatus und die hinterlegte Kostenstelle für alle Kalendertage des Abrechnungsmonats, auch für die noch folgenden. *Erläuterung: Der Gehaltslauf findet vor dem Monatsende statt (R3.6); Änderungen nach dem Gehaltslauf → O13.* *Beleg: WW „für die Pflege der Gehaltsdaten der Mitarbeiter zuständig. Das sind Gehaltsklasse und monatliches Bruttogehalt“ (B); Stichtag (A) → A2, O13.*

**R3.18** Die Kostenstelle einer Gehaltsabrechnung ist die Kostenstelle, der der Mitarbeiter am letzten aktiven Tag des Abrechnungsmonats zugeordnet ist. NGHR übernimmt die Zuordnung aus dem ERP-System. *Erläuterung: Das Controlling ordnet jeden Mitarbeiter tagesgenau einer Kostenstelle zu (PP); die Pflege ist nicht Gegenstand dieses Dokuments (0.2).* *Beleg: PP „da wir die aktiven Mitarbeiter den Kostenstellen tagesgenau zuordnen müssen“, „melden dann die Kostenstellen per Schnittstelle wieder an das Personalsystem zurück“ (B); Stichtag (A) → A3, O12, O21.*

**R3.19** Jede erstellte Gehaltsabrechnung weist neben ihren Gehaltspositionen aus: Personalnummer des Mitarbeiters, Abrechnungsmonat, Zahltag, Tag des Gehaltslaufs, Gehaltsklasse, Monatsgehalt, Anzahl der aktiven Tage im Abrechnungsmonat und Kostenstelle. *Beleg: KK „der Mitarbeiter, die Kostenstelle … den Monat“ (B); WW „Gehaltsklasse und monatliches Bruttogehalt“ (B); aktive Tage und Tag des Gehaltslaufs, benötigt für R4.2 und R3.17 (A).*

**R3.20** Der Inhalt einer Gehaltsabrechnung im Zustand „Erstellt“ ändert sich nicht. *Beleg: – (A) → A12, O13.*

## 4 Erstellen: Inhalt der Gehaltsabrechnung

NGHR bildet zuerst das Bruttogehalt (Gehalt, gegebenenfalls Provision und Bonus). Davon zieht es die Steuern ab, das ergibt das Nettogehalt. Davon zieht es die vollen SV-Beiträge ab und rechnet die Arbeitgeberanteile (je die Hälfte) wieder hinzu. Das Ergebnis ist der Auszahlungsbetrag. Grundfreibetrag, Solidaritätszuschlag-Schwelle und Beitragsbemessungsgrenzen gelten pro Kalenderjahr; deshalb rechnet NGHR jeden Monat auf Basis des bisher im Kalenderjahr Verdienten (A7). Beispiel: T1.

### 4.1 Bruttopositionen

**R4.1** Jede Gehaltsabrechnung im Zustand „Erstellt“ enthält die Bruttoposition „Gehalt“. *Beleg: WW, alle drei Gehaltsklassen haben ein monatliches Bruttogehalt (B).*

**R4.2** Das Gehalt beträgt Monatsgehalt × Anzahl der aktiven Tage im Abrechnungsmonat ÷ Anzahl der Kalendertage des Abrechnungsmonats. *Erläuterung: Für einen Mitarbeiter, der den ganzen Abrechnungsmonat aktiv ist, entspricht das Gehalt dem Monatsgehalt.* *Beleg: WW „Die Mitarbeiter haben ein monatliches Bruttogehalt“ (B); Teilmonat (A) → A1, O16.*

**R4.3** Eine Gehaltsabrechnung im Zustand „Erstellt“ enthält die Bruttoposition „Provision“ genau dann, wenn ihre Gehaltsklasse „Gehalt und Provision“ ist. *Beleg: WW „Diese gilt für unsere Vertriebsmitarbeiter. Die bekommen … dazu noch eine Vertriebsprovision“ (B).*

**R4.4** Der Provisionszeitraum eines Abrechnungsmonats beginnt am 16. des Vormonats und endet einschließlich am 15. des Abrechnungsmonats. *Beleg: WW „zwischen dem 16. des Vormonats und dem 15. des aktuellen Monats“ (B) → A5.*

**R4.5** Die Provision beträgt 3 % der Summe der Vertragsvolumen aller Kundenverträge des Vertriebsmitarbeiters, deren Abschlussdatum im Provisionszeitraum des Abrechnungsmonats liegt. NGHR kürzt die Provision nicht nach aktiven Tagen. *Erläuterung: Ohne solche Kundenverträge beträgt die Provision 0 €.* *Beleg: WW „3% des Gesamtvolumens aller Verträge, die dieser Mitarbeiter … abgeschlossen hat“ (B); keine Kürzung (A) → A1.*

**R4.6** Jeder Kundenvertrag geht in höchstens eine Provision ein: in die der Gehaltsabrechnung des Abrechnungsmonats, in dessen Provisionszeitraum sein Abschlussdatum liegt. Entfällt diese Gehaltsabrechnung oder existiert sie nicht, geht der Kundenvertrag in keine Provision ein. *Beleg: WW; RR „keinen Vertrag mehr vergessen und dann wieder nachkalkulieren“ (A); Verfall (A) → O4.*

**R4.7** Eine Gehaltsabrechnung im Zustand „Erstellt“ enthält die Bruttoposition „Bonus“ genau dann, wenn beide Bedingungen erfüllt sind:

1. Ihre Gehaltsklasse ist „Gehalt und Bonus“.
2. Ihr Abrechnungsmonat ist ein Mai.

*Beleg: WW „ein Mal im Jahr einen Bonus … mit dem Gehalt vom Mai ausbezahlt“ (B) → O5.*

**R4.8** Der Bonus einer Gehaltsabrechnung beträgt Bonussatz des Bonusjahres vor dem Kalenderjahr der Gehaltsabrechnung × Monatsgehalt der Gehaltsabrechnung. *Beleg: WW „als Prozent des monatlichen Bruttogehalts jeweils zu Jahresbeginn für das vergangene Jahr festgelegt“ (B); Bemessung am Monatsgehalt für Mai (A) → A6, O5.*

**R4.9** Die Geschäftsführung legt zu Jahresbeginn genau einen Bonussatz für das vorangegangene Bonusjahr fest. *Erläuterung: Ein Bonussatz gilt für alle Mitarbeiter der Gehaltsklasse „Gehalt und Bonus“ (RR: „für alle Manager“).* *Beleg: WW „von der Geschäftsführung als Prozent des monatlichen Bruttogehalts jeweils zu Jahresbeginn für das vergangene Jahr festgelegt“ (B); RR „den Bonus nur einmal im Jahr für alle Manager im System eingeben“ (B).*

**R4.10** Die Lohnbuchhaltung erfasst den Bonussatz eines Bonusjahres einmal in NGHR. *Beleg: RR „nur einmal im Jahr … im System eingeben“ (B); Erfassung durch die Lohnbuchhaltung (A) → A6.*

### 4.2 Bruttogehalt

**R4.11** Das Bruttogehalt ist die Summe aller Bruttopositionen der Gehaltsabrechnung. *Beleg: WW „als erstes deren Bruttogehalt“; RR „als Sonderposten dem Bruttogehalt … hinzugefügt“; WW „ein monatliches Bruttogehalt und dazu noch eine Vertriebsprovision“ (B).*

**R4.12** Gehaltsabrechnungen in den Zuständen „Angelegt“ und „Entfallen“ gehen mit einem Bruttogehalt, einer Einkommensteuer und einem Solidaritätszuschlag von je 0 € in alle Summen über frühere Gehaltsabrechnungen ein. *Beleg: – (A).*

### 4.3 Steuerpositionen

Grundfreibetrag und Solidaritätszuschlag-Schwelle sind Jahreswerte (KK), abgezogen wird aber monatlich. Die Spezifikation verteilt die Jahressteuer nach derselben Logik wie die Beitragsbemessungsgrenze: Jeden Monat berechnet NGHR die Steuer auf das kumulierte Bruttogehalt und zieht die bereits abgezogene Steuer ab (Begründung und Alternative → A7, O17).

**R4.13** Der Grundfreibetrag beträgt 16.000 €. *Beleg: KK „Grundfreibetrag von jährlich 16.000 €“ (B).*

**R4.14** Die kumulierte Einkommensteuer einer Gehaltsabrechnung beträgt 25 % des Betrags, um den ihr kumuliertes Bruttogehalt den Grundfreibetrag übersteigt, mindestens jedoch 0 €. *Beleg: KK „darüber hinaus ein fester Steuersatz von 25%“ (B) → A7, O1, O3.*

**R4.15** Die Steuerposition „Einkommensteuer“ einer Gehaltsabrechnung beträgt ihre kumulierte Einkommensteuer abzüglich der Einkommensteuer aller ihrer früheren Gehaltsabrechnungen. *Beleg: KK „Diese werden vom monatlichem Bruttogehalt abgezogen“ (A) → A7.*

**R4.16** Der kumulierte Solidaritätszuschlag einer Gehaltsabrechnung beträgt 5,5 % ihrer kumulierten Einkommensteuer, sofern diese mindestens 18.000 € beträgt. Andernfalls beträgt er 0 €. *Beleg: KK „ab einer jährlichen Einkommenssteuer von 18.000 € in Höhe von 5,5% der Einkommenssteuer“ (B) → A7.*

**R4.17** Die Steuerposition „Solidaritätszuschlag“ einer Gehaltsabrechnung beträgt ihren kumulierten Solidaritätszuschlag abzüglich des Solidaritätszuschlags aller ihrer früheren Gehaltsabrechnungen. *Beleg: KK (A) → A7.*

Zusammengefasst (Erläuterung):

```
kumuliertes Bruttogehalt = Bruttogehalt + Σ Bruttogehalt der früheren Gehaltsabrechnungen
kumulierte ESt           = 0,25 × max(0 ; kumuliertes Bruttogehalt − 16.000)
Einkommensteuer          = kumulierte ESt − Σ Einkommensteuer der früheren Gehaltsabrechnungen
kumulierter Soli         = 0,055 × kumulierte ESt, falls kumulierte ESt ≥ 18.000, sonst 0
Solidaritätszuschlag     = kumulierter Soli − Σ Solidaritätszuschlag der früheren Gehaltsabrechnungen
```

### 4.4 Nettogehalt

**R4.18** Das Nettogehalt ist das Bruttogehalt abzüglich Einkommensteuer und Solidaritätszuschlag. *Beleg: WW „erst werden die Steuern abgezogen … Das ergibt dann das Nettogehalt“ (B).*

### 4.5 SV-Beiträge und Arbeitgeberanteile

**R4.19** Für die Versicherungsarten gelten folgende Beitragssätze und Beitragsbemessungsgrenzen:

| Versicherungsart | Beitragssatz | BBM (Jahresbruttogehalt) |
| --- | --- | --- |
| Krankenversicherung (KV) | 14 % | 63.000 € |
| Pflegeversicherung (PV) | 4,5 % | 63.000 € |
| Arbeitslosenversicherung (AV) | 5 % | 94.000 € |
| Rentenversicherung (RV) | 21 % | 94.000 € |

*Beleg: WW (B).*

**R4.20** Der beitragspflichtige Betrag einer Gehaltsabrechnung für eine Versicherungsart ist der Teil ihres Bruttogehalts, der zusammen mit den Bruttogehältern aller ihrer früheren Gehaltsabrechnungen die BBM dieser Versicherungsart nicht übersteigt. *Erläuterung: „Gesetzlicher Bruttoverdienst“ (WW) ist das Bruttogehalt einschließlich Provision und Bonus (A8).* *Beleg: WW „Für jeden Euro bis einschließlich der BBM der entsprechende Prozentsatz. Für jeden Euro darüber nichts“ (B) → A8, O1, O3.*

**R4.21** Der SV-Beitrag einer Versicherungsart beträgt Beitragssatz × beitragspflichtiger Betrag dieser Versicherungsart. *Beleg: WW „als Prozentsätze des gesetzlichen Bruttoverdienstes bis zur jeweiligen Beitragsbemessungsgrenze“ (B).*

**R4.22** Der Arbeitgeberanteil einer Versicherungsart beträgt die Hälfte des SV-Beitrags derselben Versicherungsart. *Beleg: WW „Die Arbeitgeberanteile betragen die Hälfte der Beiträge“ (B).*

Zusammengefasst (Erläuterung):

```
beitragspflichtiger Betrag(v) = min( Bruttogehalt ; max(0 ; BBM(v) − Σ Bruttogehalt der früheren Gehaltsabrechnungen) )
SV-Beitrag(v)                 = Beitragssatz(v) × beitragspflichtiger Betrag(v)
Arbeitgeberanteil(v)          = SV-Beitrag(v) ÷ 2
```

### 4.6 Auszahlungsbetrag

**R4.23** Der Auszahlungsbetrag ist das Nettogehalt abzüglich aller SV-Beiträge zuzüglich aller Arbeitgeberanteile. *Beleg: WW „Von diesem werden die Beiträge zu den Sozialversicherungen abgezogen und die Arbeitgeberanteile … wieder hinzugerechnet. So gelangt man zum Auszahlungsbetrag“ (B).*

**R4.24** Folgendes gilt, sobald der Auszahlungsbetrag einer Gehaltsabrechnung negativ ist: Die Lohnbuchhaltung ist über die Gehaltsabrechnung informiert. *Erläuterung (Folgerung aus R5.3, R5.4): NGHR überweist keinen Auszahlungsbetrag, die SV-Beiträge über 0 € überweist es. Der Fall tritt ein, wenn der kumulierte Solidaritätszuschlag in einem Abrechnungsmonat mit sehr kleinem Gehalt erstmals anfällt (T18). Die Behandlung des Fehlbetrags → O18.* *Beleg: – (A) → A17, O18.*

### 4.7 Darstellung und Rundung

**R4.25** Eine Gehaltsabrechnung im Zustand „Erstellt“ enthält ihre Gehaltspositionen in dieser Reihenfolge:

1. Bruttopositionen: Gehalt, Provision, Bonus (soweit nach 4.1 vorhanden)
2. Bruttogehalt
3. Steuerpositionen: Einkommensteuer, Solidaritätszuschlag
4. Nettogehalt
5. SV-Beiträge: KV, PV, AV, RV
6. Arbeitgeberanteile: KV, PV, AV, RV
7. Auszahlungsbetrag

*Beleg: WW „Alles, was ich genannt habe, sind eigene Positionen“ (B); Reihenfolge nach WW (A) → O22.*

**R4.26** NGHR rundet den Betrag jeder Gehaltsposition, das kumulierte Bruttogehalt, die kumulierte Einkommensteuer und den kumulierten Solidaritätszuschlag kaufmännisch auf volle Cent. Jede Berechnung verwendet die gerundeten Beträge ihrer Eingangsgrößen. *Erläuterung: Das gilt für Summen, Differenzen, Produkte, Anteile und Vergleiche mit Schwellenwerten. Der Arbeitgeberanteil ist also die Hälfte des gerundeten SV-Beitrags (T14: PV 5,81 € ÷ 2 = 2,905 €, gerundet 2,91 €), der kumulierte Solidaritätszuschlag 5,5 % der gerundeten kumulierten Einkommensteuer (T18). Die Jahressumme der Steuerpositionen ist damit exakt der gerundete Jahreswert (T4).* *Beleg: – (A) → A10.*

## 5 Abarbeiten: Zahlung und Meldungen

Nach dem Erstellen erfährt das ERP-System sofort die Steuern als Lohnbuchungen. Am Zahltag überweist NGHR selbst Auszahlungsbetrag und SV-Beiträge; Steuern zieht das Betriebsfinanzamt ein. Alle Lohnbuchungen eines Tages meldet NGHR gesammelt und lückenlos an das ERP-System. Jedes Quartal meldet NGHR die Quartalsbruttoeinkommen per Elster.

### 5.1 Nach der Erstellung: Lohnbuchungen zu den Steuern

**R5.1** Folgendes gilt, sobald eine Gehaltsabrechnung im Zustand „Erstellt“ ist: Für jede ihrer Steuerpositionen über 0 € existiert eine Lohnbuchung mit diesen Angaben: Buchungsdatum = Tag des Gehaltslaufs, Betrag der Steuerposition, Personalnummer, Kostenstelle der Gehaltsabrechnung, Zweck = Steuerart, Abrechnungsmonat und Steueridentifikationsnummer des Mitarbeiters. *Beleg: KK „mit jeder Erstellung einer Gehaltsabrechnung über die Steuern … informiert werden, auch wenn diese noch nicht vom Fiskus eingezogen wurden“; „Aufpassen muss man … bei den Steuern: die fließen zwar immer nur quartalsweise ab, aber wir tun so als ob diese monatlich abfließen“ (B); Kostenstelle: PP „pro Kostenstelle aufgegliedert nach ausgezahltem Gehalt, Steuern und Sozialabgaben“ (B); Steueridentifikationsnummer: KK gleicht „anhand der vom Finanzamt bereitgestellten Steueridentifikationsnummer des Mitarbeiters ab, was das Personalsystem gemeldet hat“ (A) → A18, O19.*

### 5.2 Auszahlung am Zahltag

**R5.2** Der Zahltag eines Abrechnungsmonats ist der letzte Wochentag dieses Abrechnungsmonats. *Beleg: WW „wie alle Gehaltszahlungen am letzten Wochentag eines Monats ausgezahlt“ (B) → A9, O14.*

**R5.3** NGHR überweist am Zahltag den Auszahlungsbetrag über 0 € jeder Gehaltsabrechnung im Zustand „Erstellt“ an die Bankverbindung des Mitarbeiters. Ist die Gehaltsabrechnung erst nach dem Zahltag erstellt, überweist NGHR unmittelbar nach der Erstellung. Buchungsdatum ist der Tag der Überweisung. *Beleg: KK „Überweisungen der Gehälter an die Mitarbeiter“ (B); WW „am letzten Wochentag eines Monats ausgezahlt“ (B); Bankverbindung LL, HH (A); Buchungsdatum KK „tagesaktuell“ (A).*

**R5.4** NGHR überweist am Zahltag jeden SV-Beitrag über 0 € einer Gehaltsabrechnung im Zustand „Erstellt“ an die Krankenkasse des Mitarbeiters. Ist die Gehaltsabrechnung erst nach dem Zahltag erstellt, überweist NGHR unmittelbar nach der Erstellung. Buchungsdatum ist der Tag der Überweisung. *Beleg: KK, PZ führt „die Überweisungen der Gehälter an die Mitarbeiter und die Sozialabgaben selbst“ durch, NGHR übernimmt das (B); Empfänger und Termin (A) → A11, O20.*

**R5.5** Für die Überweisungen einer Gehaltsabrechnung sind folgende Empfängerdaten nötig:

1. die Bankverbindung, sofern der Auszahlungsbetrag über 0 € beträgt,
2. die Krankenkasse, sofern mindestens ein SV-Beitrag über 0 € beträgt.

Maßgeblich sind die Empfängerdaten, die zum Zeitpunkt der Überweisung in NGHR hinterlegt sind. Fehlt eine nötige Empfängerangabe, überweist NGHR den davon betroffenen Betrag nicht, und die Lohnbuchhaltung ist über die Gehaltsabrechnung informiert. Sobald die fehlende Angabe hinterlegt ist, überweist NGHR den ausstehenden Betrag unmittelbar. *Erläuterung: Die übrigen Überweisungen derselben Gehaltsabrechnung löst NGHR termingerecht aus. Ihr Zahlungsstatus bleibt bis zur letzten ausstehenden Überweisung „offen“ (R5.8); ihr Meldestatus ist davon unabhängig (R5.13).* *Beleg: HH, der Mitarbeiter pflegt „Adresse, Bankverbindung, Krankenkasse“ selbst (B); Verhalten bei fehlenden Daten (A) → A16.*

**R5.6** NGHR überweist keine Steuern. Das Betriebsfinanzamt zieht sie auf Grundlage der Steuermeldung per Lastschrift bei der Sonnenschein AG ein. *Beleg: KK „dann zieht das Betriebsfinanzamt die Steuern via Bankeinzug von uns ein“ (B).*

**R5.7** NGHR löst alle Überweisungen über die Anbindung an das Bankkonto der Hausbank aus. *Erläuterung: Solange das ERP-System diese Aufgabe nicht übernommen hat (BB, KK) → O6.* *Beleg: KK „muss NGHR die Überweisungen selbst auslösen“ (B); BB „direkten Anbindung von NGHR an das Bankkonto“ (B) → O6.*

**R5.8** Sobald NGHR jede nach R5.3 und R5.4 geschuldete Überweisung einer Gehaltsabrechnung ausgelöst hat, ist ihr Zahlungsstatus „ausgezahlt“. Ist für eine Gehaltsabrechnung keine Überweisung geschuldet, ist ihr Zahlungsstatus am Zahltag „ausgezahlt“; ist sie erst nach dem Zahltag erstellt, mit der Erstellung. *Erläuterung: Für eine Gehaltsabrechnung mit negativem Auszahlungsbetrag (R4.24) sind nur die SV-Beiträge über 0 € geschuldet.* *Beleg: KK, WW (A).*

**R5.9** Folgendes gilt, sobald der Zahlungsstatus einer Gehaltsabrechnung „ausgezahlt“ ist:

1. Für jeden ihrer Zahlungsabflüsse existiert eine Lohnbuchung (R5.10).
2. Die Gehaltsabrechnung ist für den Mitarbeiter in der ESS abrufbar (R6.3).

*Beleg: KK, BB (B).*

### 5.3 Lohnbuchungen zu den Zahlungsabflüssen

**R5.10** Die Lohnbuchung eines Zahlungsabflusses hat diese Angaben: Buchungsdatum = Tag der Überweisung, Betrag des Zahlungsabflusses, Personalnummer, Kostenstelle der Gehaltsabrechnung, Zweck = „ausgezahltes Gehalt“ oder die Versicherungsart des SV-Beitrags, Abrechnungsmonat. *Beleg: KK „für jeden Zahlungsabfluss das Buchungsdatum, der Betrag, der Mitarbeiter, die Kostenstelle, den Zweck und den Monat“; „pro Mitarbeiter aufgeschlüsselt nach ausgezahltem Gehalt und jedem der Sozialversicherungsbeitragsarten“ (B).*

**R5.11** NGHR meldet dem ERP-System alle Lohnbuchungen eines Tages gesammelt in einer Meldung, am selben Tag und höchstens einmal pro Tag. Jede Lohnbuchung ist dem ERP-System genau einmal gemeldet. *Beleg: KK „tagesaktuell über jeden Geldabfluss“, „garantiert … keine Information verloren“, „maximal ein Mal pro Tag alle zusammen“ (B); Steuern in derselben Meldung (A) → A18.*

### 5.4 Steuermeldung an das Betriebsfinanzamt

**R5.12** NGHR sendet für jedes Meldequartal eine Steuermeldung per Elster an das Betriebsfinanzamt, spätestens am 10. Tag nach Quartalsende: 10.04., 10.07., 10.10. und 10.01. *Beleg: KK „spätestens am 10. Tag nach Quartalsende. Also: 10.04. für das erste Quartal, 10.07. für das zweite Quartal usw.“ (B); 10.10. und 10.01. aus „usw.“ (A).*

**R5.13** Eine Steuermeldung berücksichtigt jede Gehaltsabrechnung im Zustand „Erstellt“ mit dem Meldestatus „ungemeldet“, deren Meldequartal abgeschlossen ist. Sie weist je Mitarbeiter und je Meldequartal der berücksichtigten Gehaltsabrechnungen die Steueridentifikationsnummer und das Quartalsbruttoeinkommen aus. *Erläuterung: Der Zahlungsstatus spielt keine Rolle, denn gemeldet wird das Bruttoeinkommen (KK), nicht die Überweisung. Steuer und Lohnbuchung entstehen bereits mit der Erstellung (R5.1). Eine Gehaltsabrechnung, die erst nach dem Meldetermin erstellt ist (etwa nach R3.12 zurückgestellt), wird mit der nächsten Steuermeldung unter ihrem eigenen Meldequartal nachgemeldet.* *Beleg: KK „Das Bruttoeinkommen wird für jeden Mitarbeiter … einmal pro Quartal elektronisch per Elster an das Betriebsfinanzamt gemeldet“ (B); Meldung unabhängig von der Auszahlung, abgeschlossenes Meldequartal, Steueridentifikationsnummer und Nachmeldung (A) → O1, O19.*

**R5.14** Sobald eine Steuermeldung gesendet ist, ist der Meldestatus jeder darin berücksichtigten Gehaltsabrechnung „gemeldet“. *Beleg: KK (A).*

## 6 Abarbeiten: Einsicht und Löschung

Gehaltsabrechnungen unterliegen dem Steuergeheimnis. NGHR gewährt Einsicht nur der Lohnbuchhaltung (alle) und dem Mitarbeiter selbst (seine eigenen, ab Auszahlung, in der ESS). Weder der eigene Manager noch das Personalwesen noch das Recruiting sehen eine fremde Gehaltsabrechnung. NGHR sperrt nicht; es löscht Jahre später mit allen Daten des Mitarbeiters.

### 6.1 Einsicht

| Wer | Zustand „Erstellt“, Zahlungsstatus „offen“ | Zustand „Erstellt“, Zahlungsstatus „ausgezahlt“ | Nach Vertragsende (ehemaliger Mitarbeiter) | Regel |
| --- | --- | --- | --- | --- |
| Mitarbeiter – eigene Gehaltsabrechnungen (ESS) | – | ✓ | – | R6.3, R6.4 |
| Mitarbeiter – fremde Gehaltsabrechnungen | – | – | – | R6.1 |
| Manager – Gehaltsabrechnungen der Mitarbeiter, deren Manager er ist | – | – | – | R6.7 |
| Lohnbuchhaltung – alle Gehaltsabrechnungen | ✓ | ✓ | ✓ | R6.2 |
| Personalwesen (ohne Rolle Lohnbuchhaltung) | – | – | – | R6.5 |
| Recruiting (intern und extern) | – | – | – | R6.6 |
| Jede andere Person oder Rolle | – | – | – | R6.1 |

Gehaltsabrechnungen in den Zuständen „Angelegt“ und „Entfallen“ enthalten keine Gehaltspositionen und sind nicht Gegenstand der Einsicht.

**R6.1** NGHR gewährt Einsicht in eine Gehaltsabrechnung ausschließlich nach R6.2 und R6.3. Jeder andere Anwender und jede andere Rolle hat keine Einsicht. *Erläuterung: R6.5 bis R6.7 benennen die Fälle, die das Fallbeispiel ausdrücklich ausschließt.* *Beleg: II „dass die Gehaltsdaten, Gehaltsabrechnungen und andere personenbezogene Daten von möglichst wenigen Personen eingesehen werden können“; „Außerdem gibt es in Deutschland das Steuergeheimnis“ (B).*

**R6.2** NGHR gewährt Anwendern mit der Rolle Lohnbuchhaltung Einsicht in die Gehaltsabrechnungen aller Mitarbeiter ab dem Zustand „Erstellt“. *Erläuterung: Eingeschlossen sind die Gehaltsabrechnungen ehemaliger Mitarbeiter (Begriff Mitarbeiter).* *Beleg: II „Die Lohnbuchhaltung darf meine Gehaltsdaten sehen und die Gehaltsabrechnungen“ (B); ab Zustand „Erstellt“ (A).*

**R6.3** NGHR gewährt einem Mitarbeiter in der ESS Einsicht ausschließlich in seine eigenen Gehaltsabrechnungen mit dem Zahlungsstatus „ausgezahlt“. *Erläuterung: Regulär also ab dem Zahltag (BB). Ist eine Gehaltsabrechnung am Zahltag nicht ausgezahlt, etwa weil die Bankverbindung fehlt (R5.5) oder weil sie erst nach dem Zahltag erstellt ist, ist sie erst ab ihrer Auszahlung abrufbar → A19.* *Beleg: BB „ihre Gehaltsabrechnungen ab dem Zahltag abrufen“ (B); II „So gehen mich die Daten meines Kollegen nichts an“ (B); RR „alle Mitarbeiter jederzeit die Möglichkeit haben, ihre Gehaltsabrechnungen abzurufen“ (B); Zahlungsstatus statt Datum (A) → A19.*

**R6.4** Der Zugang zur ESS setzt einen aktiven User voraus. Der User eines Mitarbeiters ist von seinem Vertragsbeginn bis zu seinem Vertragsende aktiv. *Erläuterung: Ehemalige Mitarbeiter sehen ihre Gehaltsabrechnungen daher nicht in der ESS. Das widerspricht RR („jederzeit“, „Jahre später ihre Abrechnungen haben wollen“) → O7.* *Beleg: BB „Mitarbeiter, die einen aktiven User haben“, „bei Vertragsbeginn aktivieren und bei Vertragsende deaktivieren“ (B) → O7.*

**R6.5** NGHR gewährt Anwendern mit der Rolle Personalwesen keine Einsicht in Gehaltsabrechnungen, sofern sie nicht zugleich die Rolle Lohnbuchhaltung haben. *Beleg: II „Letzteres hat Einblick in alle anderen Personaldaten, außer Gehaltsdaten und Gehaltsabrechnung“ (B); HH „sollen auch die Kolleginnen und Kollegen von der Lohnbuchhaltung die Mitarbeiterdaten pflegen können“ (B).*

**R6.6** NGHR gewährt Anwendern mit der Rolle Recruiting keine Einsicht in Gehaltsabrechnungen. *Beleg: HH „darf keinen Zugriff auf Mitarbeiterdaten haben mit einer Ausnahme: … neu anlegen“ (B); II (B).*

**R6.7** NGHR gewährt einem Manager keine Einsicht in die Gehaltsabrechnungen der Mitarbeiter, deren Manager er ist. *Erläuterung: Seine eigenen Gehaltsabrechnungen sieht er nach R6.3.* *Beleg: II „Aber die Gehaltsabrechnung geht den Manager nichts an … Daher darf er sie nicht sehen“ (B); PP „wer der Manager eines Mitarbeiters ist, das wird in NGHR gepflegt“ (B).*

**R6.8** NGHR bezieht die Rollen Lohnbuchhaltung, Personalwesen und Recruiting aus I&B und pflegt selbst keine Rollen. *Beleg: BB „Rollen werden nicht in den einzelnen Anwendungen gepflegt, sondern zentral in I&B“ (B).*

### 6.2 Aufbewahrung und Löschung

**R6.9** NGHR sperrt Gehaltsabrechnungen nicht. Sie bleiben bis zur Löschung nach 6.1 einsehbar. *Beleg: II „Wir haben uns darauf verständigt, dass wir kein Sperren vornehmen“ (B).*

**R6.10** Der Löschzeitpunkt eines Mitarbeiters ist der spätere der beiden folgenden Tage:

1. fünf Jahre nach seinem Sterbedatum,
2. zehn Jahre nach dem Buchungsdatum der letzten Überweisung eines Auszahlungsbetrags an ihn; hat NGHR nie einen Auszahlungsbetrag an ihn überwiesen, zehn Jahre nach seinem Vertragsende.

Ist kein Sterbedatum erfasst, tritt der Löschzeitpunkt nicht ein. Fällt der so bestimmte Tag auf einen 29. Februar eines Jahres ohne diesen Tag, gilt der 1. März. Am Löschzeitpunkt löscht NGHR alle Gehaltsabrechnungen des Mitarbeiters unabhängig von ihrem Zustand zusammen mit allen anderen Daten dieses Mitarbeiters. *Beleg: II „zu dem späteren Zeitpunkt von: Fünf Jahre nach dem Ableben, Zehn Jahre nach der letzten Gehaltszahlung“ (B); letzte Gehaltszahlung, Ersatzregel und Schaltjahr (A); kein Sterbedatum erfasst (A) → A13, A20, O2.*

**R6.11** Mit der Löschung ist die Gehaltsabrechnung im Zustand „Gelöscht“. Kein Anwendungsfall löst danach noch etwas an ihr aus. *Beleg: Endzustand, Kapitel 2 (A).*

## 7 Testbeispiele

Beispiele verhindern Missverständnisse (SK F48). Jedes Beispiel ist ein Testfall nach der Schablone Gegeben – Wenn – Dann und vertritt eine Äquivalenzklasse: Positivtest, Negativtest oder Grenzwerttest (SK Kapitel 07, F21–F23). Alle Beträge sind mit den Regeln aus Kapitel 4 nachgerechnet. Annahme für T1 bis T7, T13 und T18: Der Mitarbeiter ist im Kalenderjahr durchgehend aktiv, ein Bonussatz für das Vorjahr ist erfasst, und Kostenstelle, Bankverbindung und Krankenkasse sind hinterlegt, sofern nichts anderes angegeben ist.

**T1 – Positivtest: Gehaltsklasse „Gehalt“, Grundfreibetrag aufgebraucht** (R4.1, R4.2, R4.11–R4.23)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“ und Monatsgehalt 4.000 €, dessen Gehaltsabrechnungen Januar bis April zusammen 16.000 € Bruttogehalt ausweisen
- Wenn der Gehaltslauf für Mai stattfindet
- Dann enthält seine Gehaltsabrechnung: Gehalt 4.000,00 €, Bruttogehalt 4.000,00 €, Einkommensteuer 1.000,00 €, Solidaritätszuschlag 0,00 €, Nettogehalt 3.000,00 €, SV-Beiträge KV 560,00 €, PV 180,00 €, AV 200,00 €, RV 840,00 €, Arbeitgeberanteile KV 280,00 €, PV 90,00 €, AV 100,00 €, RV 420,00 €, Auszahlungsbetrag 2.110,00 €
- Und die Gehaltsabrechnungen Januar bis April weisen je 0,00 € Einkommensteuer aus; die Jahressumme beträgt 8.000,00 € = 25 % × (48.000 € − 16.000 €)

**T2 – Grenzwerttest: Grenzen des Provisionszeitraums** (R4.3–R4.6)

- Gegeben ein Vertriebsmitarbeiter mit Monatsgehalt 4.000 € und Kundenverträgen mit Abschlussdatum 15.02. (10.000 €), 16.02. (20.000 €), 15.03. (30.000 €) und 16.03. (40.000 €)
- Wenn der Gehaltslauf für März stattfindet
- Dann beträgt die Provision 1.500,00 € (3 % von 50.000 €) und das Bruttogehalt 5.500,00 €
- Und der Kundenvertrag vom 15.02. ist bereits in der Provision für Februar enthalten; der vom 16.03. geht in die Provision für April ein

**T3 – Positivtest: Manager im Vertrieb, Bonus im Mai** (R3.16, R4.3, R4.7, R4.8)

- Gegeben ein Manager, der im Vertrieb arbeitet, mit Gehaltsklasse „Gehalt und Bonus“, Monatsgehalt 8.000 €, einem Kundenvertrag vom 02.05. über 100.000 €, ein erfasster Bonussatz von 50 % für das Vorjahr und Gehaltsabrechnungen Januar bis April mit zusammen 32.000 € Bruttogehalt
- Wenn der Gehaltslauf für Mai stattfindet
- Dann enthält die Gehaltsabrechnung keine Provision, einen Bonus von 4.000,00 € und Bruttogehalt 12.000,00 €, Einkommensteuer 3.000,00 €, Solidaritätszuschlag 0,00 €, Nettogehalt 9.000,00 €, SV-Beiträge KV 1.680,00 €, PV 540,00 €, AV 600,00 €, RV 2.520,00 €, Arbeitgeberanteile KV 840,00 €, PV 270,00 €, AV 300,00 €, RV 1.260,00 €, Auszahlungsbetrag 6.330,00 €

**T4 – Grenzwerttest: Solidaritätszuschlag-Schwelle und BBM im Jahresverlauf** (R4.14–R4.17, R4.20)

- Gegeben der Manager aus T3
- Wenn die Gehaltsläufe für August bis Dezember stattfinden
- Dann beträgt der KV-Beitrag im August 420,00 € (BBM 63.000 € erreicht) und ab September 0,00 €
- Und der Solidaritätszuschlag ist bis Oktober 0,00 € (kumulierte Einkommensteuer 17.000,00 €), im November 1.045,00 € (kumulierte Einkommensteuer 19.000,00 € ≥ 18.000 €, Nachholung ab Januar) und im Dezember 110,00 €
- Und die Jahressumme Solidaritätszuschlag beträgt 1.155,00 € = 5,5 % × 21.000,00 €

Jahresverlauf zu T3/T4 (Beträge in €; ESt = Einkommensteuer, Soli = Solidaritätszuschlag):

| Monat | Bruttogehalt | kumuliert | kum. ESt | ESt | Soli | KV | PV | AV | RV | Auszahlung |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Jan | 8.000,00 | 8.000,00 | 0,00 | 0,00 | 0,00 | 1.120,00 | 360,00 | 400,00 | 1.680,00 | 6.220,00 |
| Feb | 8.000,00 | 16.000,00 | 0,00 | 0,00 | 0,00 | 1.120,00 | 360,00 | 400,00 | 1.680,00 | 6.220,00 |
| Mär | 8.000,00 | 24.000,00 | 2.000,00 | 2.000,00 | 0,00 | 1.120,00 | 360,00 | 400,00 | 1.680,00 | 4.220,00 |
| Apr | 8.000,00 | 32.000,00 | 4.000,00 | 2.000,00 | 0,00 | 1.120,00 | 360,00 | 400,00 | 1.680,00 | 4.220,00 |
| Mai | 12.000,00 | 44.000,00 | 7.000,00 | 3.000,00 | 0,00 | 1.680,00 | 540,00 | 600,00 | 2.520,00 | 6.330,00 |
| Jun | 8.000,00 | 52.000,00 | 9.000,00 | 2.000,00 | 0,00 | 1.120,00 | 360,00 | 400,00 | 1.680,00 | 4.220,00 |
| Jul | 8.000,00 | 60.000,00 | 11.000,00 | 2.000,00 | 0,00 | 1.120,00 | 360,00 | 400,00 | 1.680,00 | 4.220,00 |
| Aug | 8.000,00 | 68.000,00 | 13.000,00 | 2.000,00 | 0,00 | 420,00 | 135,00 | 400,00 | 1.680,00 | 4.682,50 |
| Sep | 8.000,00 | 76.000,00 | 15.000,00 | 2.000,00 | 0,00 | 0,00 | 0,00 | 400,00 | 1.680,00 | 4.960,00 |
| Okt | 8.000,00 | 84.000,00 | 17.000,00 | 2.000,00 | 0,00 | 0,00 | 0,00 | 400,00 | 1.680,00 | 4.960,00 |
| Nov | 8.000,00 | 92.000,00 | 19.000,00 | 2.000,00 | 1.045,00 | 0,00 | 0,00 | 400,00 | 1.680,00 | 3.915,00 |
| Dez | 8.000,00 | 100.000,00 | 21.000,00 | 2.000,00 | 110,00 | 0,00 | 0,00 | 100,00 | 420,00 | 5.630,00 |
| Summe | 100.000,00 |  |  | 21.000,00 | 1.155,00 | 8.820,00 | 2.835,00 | 4.700,00 | 19.740,00 | 59.797,50 |

**T5 – Negativtest: Kein Solidaritätszuschlag bei Jahres-Einkommensteuer unter 18.000 €; Rundung der Provision** (R4.5, R4.16, R4.26)

- Gegeben ein Vertriebsmitarbeiter mit Monatsgehalt 5.000 € und einem Kundenvertrag vom 01.03. über 333.333,33 €, sonst ohne Kundenverträge
- Wenn der Gehaltslauf für März stattfindet
- Dann beträgt die Provision 10.000,00 € (3 % = 9.999,9999 €, gerundet), das Bruttogehalt 15.000,00 € (kumuliert 25.000,00 €), die Einkommensteuer 2.250,00 € und der Solidaritätszuschlag 0,00 €
- Und der Solidaritätszuschlag bleibt das ganze Jahr 0,00 €, da die Jahres-Einkommensteuer 13.500,00 € beträgt

**T6 – Grenzwerttest: Beitragsbemessungsgrenze KV/PV** (R4.20 bis R4.22, R4.26)

Getestet werden die drei Werte nach SK Kapitel 07 F23: einen Cent unter, genau auf und einen Cent über der BBM von 63.000 €.

- Gegeben drei Vertriebsmitarbeiter a, b und c mit Monatsgehalt 7.000 € ohne Kundenverträge in den Provisionszeiträumen für September und Oktober (Provision 0,00 €), deren Gehaltsabrechnungen Januar bis August zusammen 55.999,99 € (a), 56.000,00 € (b) und 56.000,01 € (c) Bruttogehalt ausweisen
- Wenn der Gehaltslauf für September stattfindet
- Dann gilt:

| Mitarbeiter | kumuliertes Bruttogehalt | beitragspflichtiger Betrag KV/PV | KV-Beitrag | PV-Beitrag |
| --- | --- | --- | --- | --- |
| a (ein Cent darunter) | 62.999,99 € | 7.000,00 € | 980,00 € | 315,00 € |
| b (genau) | 63.000,00 € | 7.000,00 € | 980,00 € | 315,00 € |
| c (ein Cent darüber) | 63.000,01 € | 6.999,99 € | 980,00 € (979,9986 €, gerundet) | 315,00 € (314,99955 €, gerundet) |

- Wenn der Gehaltslauf für Oktober stattfindet
- Dann beträgt der beitragspflichtige Betrag KV/PV für a 0,01 € (KV-Beitrag 0,00 € und PV-Beitrag 0,00 € nach Rundung) und für b und c 0,00 €
- Und für b betragen KV- und PV-Beitrag 0,00 €, AV-Beitrag 350,00 €, RV-Beitrag 1.470,00 €, Einkommensteuer 1.750,00 € und Auszahlungsbetrag 4.340,00 €

**T7 – Grenzwerttest: Eintritt mitten im Monat und im Jahr** (R3.13, R4.2, R4.14)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“, Monatsgehalt 4.000 € und Vertragsbeginn am 16.06.
- Wenn der Gehaltslauf für Juni stattfindet
- Dann hat die Gehaltsabrechnung 15 aktive Tage, ein Gehalt von 2.000,00 €, Einkommensteuer 0,00 € und Auszahlungsbetrag 1.555,00 €
- Und die Einkommensteuer Juni bis Dezember beträgt zusammen 2.500,00 € = 25 % × (26.000 € − 16.000 €)

**T8 – Grenzwerttest: Zahltag** (R5.2)

- Gegeben die Abrechnungsmonate Oktober 2026 (31.10. ist ein Samstag), Januar 2027 (31.01. ist ein Sonntag) und Mai 2027 (31.05. ist ein Montag)
- Dann ist der Zahltag Freitag, 30.10.2026, Freitag, 29.01.2027 und Montag, 31.05.2027

**T9a – Negativtest: Entsendung** (R3.2, R3.11)

- Gegeben ein Mitarbeiter, der vom 01.07. bis 31.07. entsendet ist
- Wenn der Gehaltslauf für Juli stattfindet
- Dann ist seine Gehaltsabrechnung für Juli im Zustand „Entfallen“
- Und am Zahltag Juli ist die für August im Zustand „Angelegt“

**T9b – Positivtest: Gehalt bis zum Vertragsende nach Kündigung** (R3.2, R3.13)

- Gegeben ein Mitarbeiter, der am 10.07. kündigt, mit Vertragsende 30.09.
- Wenn die Gehaltsläufe für August und September stattfinden
- Dann erstellt NGHR beide Gehaltsabrechnungen mit Gehalt in Höhe des Monatsgehalts
- Und am Zahltag September legt NGHR keine Gehaltsabrechnung für Oktober an

**T10 – Negativtest: Einsicht** (R6.1, R6.3, R6.5, R6.7)

- Gegeben eine erstellte Gehaltsabrechnung für Oktober 2026 (Zahltag 30.10.2026)
- Wenn der Mitarbeiter sie am 29.10.2026 in der ESS aufruft, dann verweigert NGHR die Einsicht (Zahlungsstatus „offen“)
- Wenn der Mitarbeiter sie am 30.10.2026 nach der Auszahlung in der ESS aufruft, dann zeigt NGHR sie an
- Wenn sein Manager sie aufruft, dann verweigert NGHR die Einsicht
- Wenn ein Anwender mit der Rolle Personalwesen sie aufruft, dann verweigert NGHR die Einsicht

**T11 – Positivtest: Lohnbuchungen am Zahltag** (R5.10, R5.11)

- Gegeben 7.000 am Zahltag ausgezahlte Gehaltsabrechnungen
- Wenn der Zahltag endet
- Dann hat das ERP-System an diesem Tag genau eine Meldung erhalten, die je Gehaltsabrechnung höchstens fünf Lohnbuchungen enthält (ausgezahltes Gehalt, KV, PV, AV, RV), jeweils mit Buchungsdatum, Betrag, Personalnummer, Kostenstelle, Zweck und Abrechnungsmonat; SV-Beiträge von 0,00 € (BBM erreicht) sind nicht enthalten

**T12 – Grenzwerttest: Löschzeitpunkt** (R6.10)

- Gegeben ein Mitarbeiter mit Vertragsende 28.02.2030, dessen letzte Überweisung eines Auszahlungsbetrags das Buchungsdatum 28.02.2030 hat und dessen Sterbedatum der 03.03.2030 ist
- Dann ist sein Löschzeitpunkt der 28.02.2040, der spätere von 03.03.2035 und 28.02.2040

**T13 – Grenzwerttest: Solidaritätszuschlag-Schwelle genau erreicht** (R4.16, R4.17)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“ und Monatsgehalt 8.000 €, dessen Gehaltsabrechnungen Januar bis Oktober zusammen 80.000 € Bruttogehalt ausweisen
- Wenn der Gehaltslauf für November stattfindet (kumuliert 88.000,00 €)
- Dann beträgt die kumulierte Einkommensteuer genau 18.000,00 € und der Solidaritätszuschlag 990,00 €
- Und im Dezember beträgt der Solidaritätszuschlag 110,00 € (kumuliert 1.100,00 € = 5,5 % × 20.000,00 €)

**T14 – Grenzwerttest: Rundung im Teilmonat** (R4.2, R4.21, R4.22, R4.26)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“, Monatsgehalt 4.000 € und Vertragsbeginn am 31.01.
- Wenn der Gehaltslauf für Januar stattfindet
- Dann beträgt das Gehalt 129,03 € (4.000 € × 1 ÷ 31), der KV-Beitrag 18,06 €, der PV-Beitrag 5,81 €, der AV-Beitrag 6,45 €, der RV-Beitrag 27,10 €, die Arbeitgeberanteile 9,03 €, 2,91 €, 3,23 € und 13,55 € und der Auszahlungsbetrag 100,33 €

**T15 – Positivtest: Nachholung nach Ausfall** (R3.9, R5.3, R5.11, R6.3)

- Gegeben der Abrechnungsmonat Oktober 2026 (Zahltag 30.10.2026), ein für den 29.10.2026 vorgesehener Gehaltslauf und ein Ausfall von NGHR vom 29.10. bis 01.11.2026
- Wenn NGHR am 02.11.2026 wiederhergestellt ist
- Dann findet der Gehaltslauf am 02.11.2026 statt, die Überweisungen haben das Buchungsdatum 02.11.2026, das ERP-System erhält am 02.11.2026 genau eine Meldung mit den Lohnbuchungen zu Steuern und Zahlungsabflüssen, die Gehaltsabrechnungen sind ab dem 02.11.2026 in der ESS abrufbar, und die Gehaltsabrechnungen für November sind am 02.11.2026 im Zustand „Angelegt“

**T16 – Positiv- und Negativtest: Steuermeldung unabhängig von der Auszahlung** (R5.5, R5.12 bis R5.14)

- Gegeben vier Mitarbeiter: A mit drei ausgezahlten Gehaltsabrechnungen Januar bis März (je 4.000 € Bruttogehalt), B mit Monatsgehalt 3.875 € und Vertragsbeginn 16.03. (16 aktive Tage, Gehaltsabrechnung März 2.000,00 € Bruttogehalt, ausgezahlt), C, der das ganze erste Quartal entsendet ist, und D mit Monatsgehalt 3.000 € und Vertragsbeginn 01.03., dessen Gehaltsabrechnung März erstellt ist (3.000,00 € Bruttogehalt), für den aber keine Bankverbindung hinterlegt ist
- Wenn NGHR die Steuermeldung am 10.04. sendet
- Dann enthält sie für das erste Meldequartal A mit Quartalsbruttoeinkommen 12.000,00 €, B mit 2.000,00 € und D mit 3.000,00 €, nicht C
- Und die fünf Gehaltsabrechnungen von A, B und D haben den Meldestatus „gemeldet“, die drei von C bleiben im Zustand „Entfallen“
- Und die Gehaltsabrechnung von D behält den Zahlungsstatus „offen“, bis ihre Bankverbindung hinterlegt ist

**T17 – Grenzwerttest: Vertragsende mitten im Monat und ESS** (R3.2, R3.13, R4.2, R6.4)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“, Monatsgehalt 6.200 € und Vertragsende 15.10.2026
- Wenn der Gehaltslauf für Oktober stattfindet
- Dann beträgt das Gehalt 3.000,00 € (6.200 € × 15 ÷ 31)
- Und am Zahltag 30.10.2026 legt NGHR keine Gehaltsabrechnung für November an
- Und beim Aufruf der ESS am 30.10.2026 verweigert NGHR den Zugang, weil der User seit dem 16.10.2026 inaktiv ist

**T18 – Negativtest: Negativer Auszahlungsbetrag** (R4.24, R5.8)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“ und Monatsgehalt 8.799,99 €, Januar bis Oktober durchgehend aktiv (kumuliert 87.999,90 €, kumulierte Einkommensteuer 17.999,98 €) und im November genau ein aktiver Tag
- Wenn der Gehaltslauf für November stattfindet
- Dann beträgt das Gehalt 293,33 €, die Einkommensteuer 73,33 €, der Solidaritätszuschlag 994,03 € (kumulierte Einkommensteuer 18.073,31 €) und der Auszahlungsbetrag −812,16 €
- Und am Zahltag überweist NGHR keinen Auszahlungsbetrag, überweist die SV-Beiträge AV 14,67 € und RV 61,60 € (KV und PV sind 0,00 €, BBM erreicht), informiert die Lohnbuchhaltung, und der Zahlungsstatus der Gehaltsabrechnung ist „ausgezahlt“

**T19 – Negativtest: Zurückgestellte Gehaltsabrechnung** (R3.7, R3.10, R3.12)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt und Bonus“, für den am Tag des Gehaltslaufs für Mai (20.05.) kein Bonussatz für das Vorjahr erfasst ist
- Wenn der Gehaltslauf für Mai stattfindet
- Dann bleibt seine Gehaltsabrechnung für Mai im Zustand „Angelegt“, die Lohnbuchhaltung ist informiert, und alle übrigen Gehaltsabrechnungen für Mai sind im Zustand „Erstellt“
- Wenn die Lohnbuchhaltung den Bonussatz am 03.06. erfasst
- Dann findet spätestens am 04.06. ein weiterer Gehaltslauf statt, der nur seine Gehaltsabrechnung für Mai erstellt, und NGHR überweist unmittelbar nach der Erstellung
- Und der Gehaltslauf für Juni erstellt seine Gehaltsabrechnung für Juni erst, nachdem die für Mai erstellt ist

## 8 Annahmen und offene Punkte

Das Fallbeispiel lässt einige Fragen offen. Statt die Lücken stillschweigend mit Alltagswissen zu füllen (SK F54), weisen wir jede getroffene Entscheidung aus, mit der verworfenen Alternative. Fragen, die nur die Fachseite beantworten kann, stehen in 8.2 mit Ansprechpartner. Annahmen mit unmittelbarer Geldwirkung haben zusätzlich einen offenen Punkt.

### 8.1 Getroffene Annahmen

| Nr. | Thema | Annahme und Begründung | Verworfene Alternative |
| --- | --- | --- | --- |
| A1 | Teilmonat | Das Gehalt wird nach aktiven Tagen anteilig nach Kalendertagen berechnet, Provision und Bonus nicht. Begründung: Gehalt erhalten nur aktive Mitarbeiter (RR, WW); das Fallbeispiel nennt keine Regel für den Teilmonat → O16. | Stichtagsregel (voller Monat oder nichts); Aufteilung nach Arbeitstagen; 30-Tage-Monat |
| A2 | Stand der Daten beim Gehaltslauf | Maßgeblich sind Gehaltsdaten, Mitarbeiterstatus und Kostenstelle, wie sie zu Beginn des Gehaltslaufs in NGHR hinterlegt sind, auch für die restlichen Kalendertage des Abrechnungsmonats. | Tagesgenaue Aufteilung bei Änderung im Monat; Korrektur im Folgemonat |
| A3 | Kostenstelle | Maßgeblich ist die Kostenstelle am letzten aktiven Tag → O12. | Aufteilung der Lohnbuchungen nach Tagen je Kostenstelle |
| A4 | Termin Gehaltslauf | Zwischen dem 16. und dem Tag vor dem Zahltag, damit der Provisionszeitraum abgeschlossen ist → O9. | Fester Kalendertag |
| A5 | Provisionszeitraum | Beide Grenztage gehören dazu, maßgeblich ist das Abschlussdatum im CRM-System. So schließen die Zeiträume lückenlos und überschneidungsfrei aneinander an (RR: „keinen Vertrag mehr vergessen“). | – |
| A6 | Bonus | Ein Bonussatz je Bonusjahr für alle Mitarbeiter der Gehaltsklasse „Gehalt und Bonus“, erfasst von der Lohnbuchhaltung (sie pflegt die Gehaltsdaten, WW). Bemessung am Monatsgehalt der Gehaltsabrechnung für Mai. Fehlt der Bonussatz, bleibt nur die Bonus-Klasse angelegt; alle anderen werden pünktlich erstellt (RR: „pünktlich“). Folgemonate desselben Mitarbeiters werden bis dahin ebenfalls zurückgestellt (R3.10 Bedingung 2) → O5. | Individueller Bonussatz; Bemessung am Dezembergehalt des Bonusjahres; gesamter Gehaltslauf wartet |
| A7 | Verteilung der Steuer auf Monate | Kumulierte Jahresbetrachtung wie bei der BBM. Begründung: Nur so entspricht die Jahressumme immer den Jahresregeln nach KK. Die Hochrechnung (Monat × 12) zieht bei schwankendem Einkommen Solidaritätszuschlag ab, obwohl die Jahres-Einkommensteuer unter 18.000 € bleibt (T5: 187,92 € im März), und bei Eintritt mitten im Jahr zu viel Steuer (T7: 4.166,69 € statt 2.500,00 €). Folge: Steuer fällt erst nach Verbrauch des Grundfreibetrags an; der Solidaritätszuschlag wird im Monat des Schwellenübertritts nachgeholt (T4) → O17. | Monatliche Hochrechnung (× 12, ÷ 12); monatlicher Freibetrag 16.000 € ÷ 12 mit Jahresausgleich |
| A8 | Sozialversicherung | „Gesetzlicher Bruttoverdienst“ = Bruttogehalt inklusive Provision und Bonus. Die BBM gilt kumuliert je Kalenderjahr. | Monatliche BBM = BBM ÷ 12 |
| A9 | Zahltag | Wochentag = Montag bis Freitag. Feiertage bleiben unberücksichtigt → O14. | Letzter Bankarbeitstag; Werktag Montag bis Samstag (Überweisung am Samstag nicht ausführbar) |
| A10 | Rundung | Kaufmännisch auf volle Cent je Gehaltsposition und je kumuliertem Wert. Jede Berechnung, auch ein Schwellenvergleich, verwendet die gerundeten Beträge ihrer Eingangsgrößen. Begründung: Nur so ist jeder Betrag eindeutig und aus der Gehaltsabrechnung nachrechenbar. | Rechnen mit ungerundeten Zwischenwerten, gerundet wird nur die ausgewiesene Gehaltsposition (T14: Arbeitgeberanteil PV 2,90 € statt 2,91 €, Auszahlungsbetrag 100,32 € statt 100,33 €) |
| A11 | SV-Überweisung | Die Krankenkasse des Mitarbeiters nimmt alle SV-Beiträge entgegen (sie ist das einzige in NGHR hinterlegte Versicherungsdatum, HH). Überwiesen wird am Zahltag → O20. | Je Versicherungsträger einzeln, anderer Termin |
| A12 | Korrekturen | Eine erstellte Gehaltsabrechnung wird nicht geändert. Ein Korrekturprozess ist im Fallbeispiel nicht beschrieben → O13. | Storno und Neuerstellung; Differenzposition im Folgemonat |
| A13 | Letzte Gehaltszahlung | Buchungsdatum der letzten Überweisung eines Auszahlungsbetrags; ersatzweise das Vertragsende. | – |
| A14 | Beginn des Lebenszyklus | Die Gehaltsabrechnung entsteht ohne Inhalt: bei der Einstellung (SK F42: „Erste Gehaltsabrechnung als Hülle angelegt“) und danach spätestens am Zahltag des Vormonats. So unterscheidet die Spezifikation, wie in der Aufgabenstellung, zwischen Erzeugung und Festlegung des Inhalts. Das Fallbeispiel selbst nennt nur den Gehaltslauf. | Erzeugung erst im Gehaltslauf (dann entfallen die Zustände „Angelegt“ und „Entfallen“) |
| A15 | Grenzen des Mitarbeiterstatus | Außerhalb des Arbeitsverhältnisses ist ein Mitarbeiter nicht aktiv; Vertragsbeginn und Vertragsende gehören zum Arbeitsverhältnis. Das Sterbedatum gilt als Vertragsende, sofern kein früheres festgelegt ist → O15. | Vertragsende als erster nicht aktiver Tag |
| A16 | Fehlende Bankverbindung oder Krankenkasse | NGHR überweist den betroffenen Betrag nicht, bis der Wert hinterlegt ist; die Lohnbuchhaltung wird informiert. | Gehaltslauf verweigert die Erstellung |
| A17 | Negativer Auszahlungsbetrag | NGHR überweist keinen Auszahlungsbetrag, überweist die SV-Beiträge und informiert die Lohnbuchhaltung; der Zahlungsstatus wird „ausgezahlt“ → O18. | Vortrag auf die nächste Gehaltsabrechnung; Zahlungsstatus bleibt „offen“ |
| A18 | Lohnbuchungen zu Steuern | Steuerpositionen werden wie Zahlungsabflüsse als Lohnbuchungen gemeldet (KK: „als ob diese monatlich abfließen“), mit Buchungsdatum = Tag des Gehaltslaufs, gesammelt in der Tagesmeldung. | Separate Steuer-Schnittstelle ohne Lohnbuchstruktur |
| A19 | Einsicht in der ESS | Der Mitarbeiter sieht eine Gehaltsabrechnung ab ihrer Auszahlung (Zahlungsstatus „ausgezahlt“). BB nennt den Zahltag als Regelfall; in der ESS steht damit immer eine Gehaltsabrechnung, deren Auszahlung erfolgt ist. | Abruf ab dem Kalenderdatum des Zahltags, sobald die Gehaltsabrechnung erstellt ist, unabhängig von der Auszahlung |
| A20 | Löschung ohne Sterbedatum | Ist kein Sterbedatum erfasst, tritt der Löschzeitpunkt nicht ein. Begründung: wörtliche Lesart von II („zu dem späteren Zeitpunkt von“); ein Zeitpunkt, der nicht eingetreten ist, kann nicht der frühere sein → O2. | Löschung zehn Jahre nach der letzten Gehaltszahlung, solange kein Sterbedatum erfasst ist |

### 8.2 Offene Punkte

| Nr. | Frage | Regeln | Klären mit |
| --- | --- | --- | --- |
| O1 | Wie werden kumulierte Werte (Steuer, BBM) und die Steuermeldung im Einführungsjahr berechnet, wenn die Vormonate in PZ verbleiben? | R3.5, R4.14–R4.20, R5.13 | Schaffmeier, Wuchtig, Kohle |
| O2 | Nach wörtlicher Lesart werden die Daten lebender ehemaliger Mitarbeiter nie gelöscht, weil Zeitpunkt 1 nicht eintritt. Ist das gewollt, etwa wegen der Betriebsrente? | R6.10 | Intim |
| O3 | Gilt die Kumulation je Personalnummer oder je Person, wenn jemand im selben Kalenderjahr erneut eingestellt wird? | R4.14–R4.20 | Wuchtig, Kohle |
| O4 | Wie wird ein Kundenvertrag vergütet, (a) der erst nach dem Gehaltslauf im CRM-System erfasst wird, (b) dessen Vertriebsmitarbeiter im Abrechnungsmonat keinen aktiven Tag hat, (c) der nach dem 15. des Monats des Vertragsendes abgeschlossen wird? | R3.8, R4.5, R4.6 | Reich |
| O5 | Wer erhält den Bonus, wenn sich die Gehaltsklasse im Bonusjahr ändert (Manager erst seit März; Manager des Vorjahres, im Mai bereits ausgeschieden)? Bemessungsgrundlage: Monatsgehalt im Mai des Auszahlungsjahres oder im Dezember des Bonusjahres? | R4.7, R4.8 | Reich, Wuchtig |
| O6 | Sobald das ERP-System die Bankanbindung übernimmt, ändern sich R5.3–R5.11: NGHR meldet dann die zu überweisenden Beträge. Ab wann? | R5.3–R5.11 | Baumeister, Kohle |
| O7 | Wie erhalten ehemalige Mitarbeiter ihre Gehaltsabrechnungen (RR: „Jahre später“)? Sie haben keinen aktiven User mehr. | R6.4 | Reich, Baumeister |
| O8 | Ist ein weiterer Gehaltslauf am Folgetag die gewünschte Lösung für Einstellungen nach dem ersten Gehaltslauf (Vertragsabschluss am ersten Arbeitstag, LL) und nachträglich erfasste Eingangsdaten? | R3.1, R3.7 | Wuchtig, Lässig |
| O9 | Startet NGHR den Gehaltslauf zeitgesteuert oder löst ihn die Lohnbuchhaltung aus? An welchem Tag? | R3.6 | Reich |
| O10 | Wie identifiziert das CRM-System den Vertriebsmitarbeiter eines Kundenvertrags – über die User-ID, die I&B aus der Personalnummer bildet (BB)? | R3.8 | Reich, Baumeister |
| O11 | Manager-Kennzeichen (Personalwesen) und Gehaltsklasse (Lohnbuchhaltung) pflegen verschiedene Rollen. Soll NGHR einen Widerspruch zwischen beiden melden? | R3.16 | Helfer, Wuchtig |
| O12 | Soll NGHR die Lohnbuchungen bei Kostenstellenwechsel im Abrechnungsmonat tagesgenau auf die Kostenstellen aufteilen (PP: „tagesgenau“) statt nach Stichtag? | R3.18, R5.1, R5.10 | Pinke |
| O13 | Wie werden Fehler in einer erstellten Gehaltsabrechnung korrigiert (RR: „Dateneingabefehler“, „nachkalkulieren“), auch Statusänderungen nach dem Gehaltslauf (z. B. Entsendung ab dem 25.)? Storno und Neuerstellung oder Differenzposition im Folgemonat? | R3.17, R3.20 | Reich, Kohle |
| O14 | Ist der Zahltag der letzte Wochentag Montag bis Freitag auch dann, wenn er ein Feiertag ist (z. B. Karfreitag), oder der letzte Bankarbeitstag? | R5.2 | Wuchtig, Kohle |
| O15 | An wen überweist NGHR den Auszahlungsbetrag eines verstorbenen Mitarbeiters? | R3.14, R5.3 | Helfer, Kohle |
| O16 | Gilt bei Teilmonaten die Aufteilung nach Kalendertagen, nach Arbeitstagen oder ein pauschaler 30-Tage-Monat? | R4.2 | Wuchtig |
| O17 | Bestätigung der kumulierten Steuerberechnung (A7, T1, T4) gegenüber einem monatlichen Freibetrag von 1.333,33 € mit Jahresausgleich. | R4.14–R4.17 | Kohle |
| O18 | Wie ist der Fehlbetrag eines negativen Auszahlungsbetrags zu behandeln (T18): Vortrag auf die nächste Gehaltsabrechnung oder Einzug? | R4.24 | Kohle, Wuchtig |
| O19 | Die Steueridentifikationsnummer ist im Fallbeispiel nicht als Mitarbeiterdatum genannt, wird aber für den Abgleich im ERP-System (KK) und die Elster-Meldung benötigt. Wer pflegt sie in NGHR? | R5.1, R5.13 | Kohle, Helfer |
| O20 | An wen und wann überweist NGHR die SV-Beiträge – je Versicherungsart an die Krankenkasse des Mitarbeiters am Zahltag? | R5.4 | Kohle |
| O21 | Was gilt, wenn das Controlling einem neuen Mitarbeiter bis zum Gehaltslauf noch keine Kostenstelle zugeordnet hat? Vorschlag: Zurückstellung nach R3.12. | R3.10, R3.12, R3.18 | Pinke |
| O22 | Sind die Gesamtlohnkosten (Bruttogehalt + Arbeitgeberanteile, WW) eine eigene Gehaltsposition der Gehaltsabrechnung oder nur eine Kennzahl für den Forecast (PP)? | R4.25 | Wuchtig, Pinke |

## Quellen

- NGHR-Fallbeispiel, Stellungnahmen: Schaffmeier (Roadmap, PZ), Reich (Provision, Bonus, Entsendung, Abruf), Baumeister (I&B, ESS, ERP, Bank), Wuchtig (Gehaltsklassen, Aufbau, Sozialversicherung), Lässig (Mitarbeiterstatus, Personalnummer, Tod), Intim (Datenschutz, Löschung), Pinke (Kostenstellen, Manager, Forecast), Helfer (Rollen, Daten), Kohle (Steuern, Lohnbuch, Elster).
- Vorlesung SE II, Kapitel 03 Spezifikation: F5–F6 (Ziele, Abgrenzung, Zielbild NGHR), F14–F18 (Begriffe), F19–F21 (Datenmodell), F23–F29 (Regeln), F30–F37 (Zustandsautomat, F36 mehrere Zustände pro Geschäftsobjekt), F42 (Use Case „Mitarbeiter einstellen“), F48 (Gherkin), F54 (Kontext und Plausibilisieren).
- Vorlesung SE II, Kapitel 07 Testen: F21–F23 (Äquivalenzklassen; Positiv-, Negativ- und Grenzwerttests), F56 (ein Prüfkriterium je Testfall).

## Quelldatei für die Übertragung nach Typst

Die exakte Markdown-Fassung dieses Tabs liegt als Datei im Dokument: NGHR\_Regeln\_Gehaltsabrechnung\_Gruppe3\_final.md (86.805 Bytes). Hinweis für Claude Code: Diese Datei mit dem Claude-Docs-Connector lesen (Blob `0c12382d-eafe`) oder den Tab als Markdown exportieren. In der Datei stehen Erläuterung und Beleg jeder Regel auf eigenen Zeilen; im Tab sind sie zu einem Absatz zusammengefasst. Breite Tabellen (Jahresverlauf zu T4, Tabelle 2.2) im Querformat setzen, damit sie auf A4 lesbar bleiben.
