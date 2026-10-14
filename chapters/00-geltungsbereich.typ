= Geltungsbereich, Abgrenzung und Lesehinweise

== Geltungsbereich

Die Regeln gelten für Gehaltsabrechnungen, die NGHR für Mitarbeiter mit Arbeitsvertrag in Deutschland erstellt, in allen drei Gehaltsklassen „Gehalt“, „Gehalt und Provision“ und „Gehalt und Bonus“ (Roadmap: Releases 2 und 3). Sie decken den gesamten Lebenszyklus einer Gehaltsabrechnung ab: vom Anlegen bis zur Löschung. Danach löst kein Anwendungsfall mehr etwas an ihr aus.

== Nicht Gegenstand dieses Dokuments

#figure(
  caption: "Nicht Gegenstand dieses Dokuments",
  table(
    columns: (0.9fr, 2.1fr),
    align: (left, left),
    table.header([*Thema*], [*Grund*]),
    [Gehaltsabrechnungen für Mitarbeiter in anderen Ländern], [Spätere Phasen der Roadmap (SCH).],
    [Gehaltsabrechnungen aus der Zeit vor NGHR], [Sie verbleiben laut Personalvorstand in PZ (SCH).],
    [Pflege von Mitarbeiterdaten, Mitarbeiterstatus und Gehaltsdaten], [Eigener Lebenszyklus des Mitarbeiters. Den Mitarbeiterstatus setzt das Personalwesen (HH), die Gehaltsdaten pflegt die Lohnbuchhaltung (WW), die Kostenstelle ordnet das Controlling zu (PP). NGHR leitet den Mitarbeiterstatus nicht aus Krankheits- oder Abwesenheitstagen ab. Die Regeln hier _verwenden_ diese Daten nur.],
    [Lohnkostenplan und 12-Monats-Forecast der Gesamtlohnkosten], [Beruht auf Gehaltsdaten, nicht auf Gehaltsabrechnungen (PP). Die Rechenregeln aus Kapitel 4 sind dafür wiederverwendbar → O22.],
    [Betriebsrenten], [Das Fallbeispiel nennt sie nur als Grund für Statuswissen, nicht als Zahlung durch NGHR (LL, PP).],
    [Korrektur einer erstellten Gehaltsabrechnung], [Im Fallbeispiel nicht beschrieben → A12, O13.],
    [Übernahme der Bankanbindung durch das ERP-System], [Roadmap-Entscheidung der IT (BB, KK) → O6.],
  ),
)

== Konventionen

- Regeln stehen im Indikativ, Präsens und aktiv. Sie sind deklarativ: Sie beschreiben, was gilt, nicht wie es programmiert wird. Wo ein Ereignis mehrere Folgen hat, steht „Folgendes gilt, sobald …“.
- Die Begriffe aus Kapitel 1 werden in den Regeln unverändert und vollständig verwendet. Folgerungen und Beispiele stehen nicht in der Regel, sondern in einer kursiven _Erläuterung_ darunter. Erläuterungen sind nicht normativ.
- Regel-IDs: R\<Kapitel\>.\<Nr\>. Alle Beträge sind in Euro.

== Quellenkürzel und Belegarten

#figure(
  caption: "Quellenkürzel",
  table(
    columns: (auto, 1fr, auto, 1fr),
    align: (left, left, left, left),
    table.header([*Kürzel*], [*Quelle*], [*Kürzel*], [*Quelle*]),
    [SCH], [Sabine Schaffmeier, Personalvorstand], [LL], [Lara Lässig, Unternehmensprozesse],
    [RR], [Richard Reich, Leiter Lohnbuchhaltung], [II], [Ingmar Intim, Datenschutzbeauftragter],
    [BB], [Barbara Baumeister, Enterprise Architekt], [PP], [Paul Pinke, Controlling],
    [WW], [Werner Wuchtig, Lohnbuchhaltung], [HH], [Hella Helfer, Allgemeines Personalwesen],
    [KK], [Karola Kohle, Buchhaltung und Steuern], [SK], [Vorlesungsskript SE II (F = Folie). SK F6 (Zielbild NGHR) gilt als Fachbeleg; alle übrigen Folien sind Methodenquelle.],
  ),
)

Belegarten hinter jeder Regel:

- *(B) belegt*: Die Quelle sagt es ausdrücklich.
- *(A) abgeleitet*: Die Regel folgt logisch aus belegten Aussagen; die Ableitung ist angegeben.
- *→ A\<n\>*: Die Regel beruht auf einer getroffenen Annahme (Kapitel 8.1).
- *→ O\<n\>*: Zu der Regel gibt es eine offene Frage an die Fachseite (Kapitel 8.2).
