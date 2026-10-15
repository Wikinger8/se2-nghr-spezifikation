= Erstellen: Inhalt der Gehaltsabrechnung

NGHR bildet das Bruttogehalt, zieht die Steuern ab (Nettogehalt), zieht die vollen SV-Beiträge ab und rechnet die Arbeitgeberanteile wieder hinzu (Auszahlungsbetrag) (WW). Grundfreibetrag, Soli-Schwelle und BBM sind Jahreswerte; deshalb rechnet NGHR jeden Monat auf Basis des im Kalenderjahr bisher Verdienten (→ A7, A8).

== Bruttopositionen und Bruttogehalt

*R4.0* Die Bruttopositionen einer Gehaltsabrechnung sind Grundgehalt, Provision und Bonus. [WW, RR] \
_Erläuterung: Welche dieser Bruttopositionen eine erstellte Gehaltsabrechnung enthält, legen R4.1, R4.3 und R4.7 fest._

*R4.1* Jede erstellte Gehaltsabrechnung enthält die Bruttoposition „Grundgehalt“. [WW]

*R4.2* Das Grundgehalt beträgt Monatsgehalt × Anzahl der aktiven Tage im Abrechnungsmonat ÷ Anzahl der Kalendertage des Abrechnungsmonats. [WW, LL → A1]

*R4.3* Eine erstellte Gehaltsabrechnung enthält die Bruttoposition „Provision“ genau dann, wenn ihre Gehaltsklasse „Gehalt und Provision“ ist. [WW]

*R4.4* Der Provisionszeitraum eines Abrechnungsmonats beginnt am 16. des Vormonats und endet einschließlich am 15. des Abrechnungsmonats. [WW → A5] \
_Erläuterung: Für März: 16.02. bis 15.03. Ein Kundenvertrag vom 15.02. zählt für Februar, einer vom 16.03. für April._

*R4.5* Die Provision beträgt 3 % der Summe der Vertragsvolumen aller Kundenverträge des Vertriebsmitarbeiters, deren Abschlussdatum im Provisionszeitraum liegt; ohne solche Kundenverträge beträgt sie 0 €. [WW]

*R4.6* NGHR kürzt die Provision nicht nach aktiven Tagen. [→ A1]

*R4.7* Eine erstellte Gehaltsabrechnung enthält die Bruttoposition „Bonus“ genau dann, wenn ihre Gehaltsklasse „Gehalt und Bonus“ und ihr Abrechnungsmonat ein Mai ist. [WW → O20]

*R4.8* Der Bonus beträgt Bonussatz des Vorjahres × Monatsgehalt der Gehaltsabrechnung. [WW → A6, O5]

*R4.9* Die Geschäftsführung legt zu Jahresbeginn genau einen Bonussatz für das vorangegangene Bonusjahr fest. [WW]

*R4.10* Der Bonussatz eines Bonusjahres gilt für alle Mitarbeiter der Gehaltsklasse „Gehalt und Bonus“. [WW, RR]

*R4.11* Anwender mit der Rolle Lohnbuchhaltung erfassen den Bonussatz einmal im Jahr in NGHR. [RR → A20]

*R4.12* Das Bruttogehalt ist die Summe aller Bruttopositionen der Gehaltsabrechnung. [WW, RR]

== Steuerpositionen und Nettogehalt

*R4.12a* Die Steuerarten sind die Einkommensteuer (ESt) und der Solidaritätszuschlag (Soli). [KK]

*R4.13* Die kumulierte ESt einer Gehaltsabrechnung beträgt 25 % des Betrags, um den ihr kumuliertes Bruttogehalt den Grundfreibetrag von 16.000 € übersteigt, mindestens 0 €. [KK → A7]

*R4.14* Die Steuerposition „Einkommensteuer“ beträgt die kumulierte ESt abzüglich der Einkommensteuer aller früheren Gehaltsabrechnungen. [KK → A7]

*R4.15* Der kumulierte Soli einer Gehaltsabrechnung beträgt 5,5 % ihrer kumulierten ESt, sofern diese mindestens 18.000 € beträgt; andernfalls 0 €. [KK → A7]

*R4.16* Die Steuerposition „Solidaritätszuschlag“ beträgt der kumulierte Soli abzüglich des Solidaritätszuschlags aller früheren Gehaltsabrechnungen. [KK → A7]

*R4.17* Das Nettogehalt ist das Bruttogehalt abzüglich Einkommensteuer und Solidaritätszuschlag. [WW]

== SV-Beiträge, Arbeitgeberanteile und Auszahlungsbetrag

*R4.17a* Die Versicherungsarten sind die Krankenversicherung (KV), die Pflegeversicherung (PV), die Arbeitslosenversicherung (AV) und die Rentenversicherung (RV). [WW]

Für die Versicherungsarten gelten folgende Beitragssätze und BBM: [WW]

#figure(
  caption: "Beitragssätze und Beitragsbemessungsgrenzen",
  table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr),
    align: (left, right, right, right, right),
    table.header([], [*KV*], [*PV*], [*AV*], [*RV*]),
    [Beitragssatz], [14 %], [4,5 %], [5 %], [21 %],
    [BBM (Jahresbruttogehalt)], [63.000 €], [63.000 €], [94.000 €], [94.000 €],
  ),
)

*R4.18* Der beitragspflichtige Betrag einer Gehaltsabrechnung für eine Versicherungsart ist der Teil ihres Bruttogehalts, der zusammen mit den Bruttogehältern aller früheren Gehaltsabrechnungen die BBM dieser Versicherungsart nicht übersteigt. [WW → A8]

*R4.19* Der SV-Beitrag einer Versicherungsart beträgt Beitragssatz × beitragspflichtiger Betrag. [WW]

*R4.20* Der Arbeitgeberanteil einer Versicherungsart beträgt die Hälfte des SV-Beitrags derselben Versicherungsart. [WW]

*R4.21* Der Auszahlungsbetrag ist das Nettogehalt abzüglich aller SV-Beiträge zuzüglich aller Arbeitgeberanteile. [WW]

*R4.22* Eine erstellte Gehaltsabrechnung enthält ihre Gehaltspositionen in dieser Reihenfolge: Grundgehalt, Provision, Bonus (soweit vorhanden) · Bruttogehalt · Einkommensteuer, Solidaritätszuschlag · Nettogehalt · SV-Beiträge KV, PV, AV, RV · Arbeitgeberanteile KV, PV, AV, RV · Auszahlungsbetrag. [WW → A21]

=== Zusammengefasst (nicht normativ)

_„Frühere GA“ = frühere Gehaltsabrechnungen im Sinne von Kapitel 1. Die Rundung regelt das Fallbeispiel nicht (O1)._

// Die Quelle setzt die Formeln als Monospace-Block. Der laengste Ausdruck ist
// dafuer zu breit fuer das Hochformat. Statt die Schrift zu verkleinern oder
// die Seite zu drehen, stehen die Formeln hier als Tabelle: Die rechte Spalte
// bricht um, die Zuordnung Groesse → Berechnung bleibt lesbar.
#figure(
  caption: "Berechnung der Gehaltspositionen im Überblick",
  table(
    columns: (auto, 1fr),
    align: (left, left),
    table.header([*Größe*], [*Berechnung*]),
    [kum. Bruttogehalt], [Bruttogehalt + Σ Bruttogehalt der früheren GA],
    [Einkommensteuer], [0,25 × max(0; kum. Bruttogehalt − 16.000) − Σ ESt der früheren GA],
    [Solidaritätszuschlag], [(0,055 × kum. ESt, falls kum. ESt ≥ 18.000, sonst 0) − Σ Soli der früheren GA],
    [SV-Beitrag(v)], [Beitragssatz(v) × min(Bruttogehalt; max(0; BBM(v) − Σ Brutto der früheren GA))],
    [Auszahlungsbetrag], [Bruttogehalt − ESt − Soli − Σ SV-Beitrag + Σ SV-Beitrag ÷ 2],
  ),
)
