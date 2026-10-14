= Erstellen: Inhalt der Gehaltsabrechnung

NGHR bildet zuerst das Bruttogehalt (Gehalt, gegebenenfalls Provision und Bonus). Davon zieht es die Steuern ab, das ergibt das Nettogehalt. Davon zieht es die vollen SV-Beiträge ab und rechnet die Arbeitgeberanteile (je die Hälfte) wieder hinzu. Das Ergebnis ist der Auszahlungsbetrag. Grundfreibetrag, Solidaritätszuschlag-Schwelle und Beitragsbemessungsgrenzen gelten pro Kalenderjahr; deshalb rechnet NGHR jeden Monat auf Basis des bisher im Kalenderjahr Verdienten (A7). Beispiel: T1.

== Bruttopositionen

*R4.1* Jede Gehaltsabrechnung im Zustand „Erstellt“ enthält die Bruttoposition „Gehalt“. \
_Beleg: WW, alle drei Gehaltsklassen haben ein monatliches Bruttogehalt (B)._

*R4.2* Das Gehalt beträgt Monatsgehalt × Anzahl der aktiven Tage im Abrechnungsmonat ÷ Anzahl der Kalendertage des Abrechnungsmonats. \
_Erläuterung: Für einen Mitarbeiter, der den ganzen Abrechnungsmonat aktiv ist, entspricht das Gehalt dem Monatsgehalt._ \
_Beleg: WW „Die Mitarbeiter haben ein monatliches Bruttogehalt“ (B); Teilmonat (A) → A1, O16._

*R4.3* Eine Gehaltsabrechnung im Zustand „Erstellt“ enthält die Bruttoposition „Provision“ genau dann, wenn ihre Gehaltsklasse „Gehalt und Provision“ ist. \
_Beleg: WW „Diese gilt für unsere Vertriebsmitarbeiter. Die bekommen … dazu noch eine Vertriebsprovision“ (B)._

*R4.4* Der Provisionszeitraum eines Abrechnungsmonats beginnt am 16. des Vormonats und endet einschließlich am 15. des Abrechnungsmonats. \
_Beleg: WW „zwischen dem 16. des Vormonats und dem 15. des aktuellen Monats“ (B) → A5._

*R4.5* Die Provision beträgt 3 % der Summe der Vertragsvolumen aller Kundenverträge des Vertriebsmitarbeiters, deren Abschlussdatum im Provisionszeitraum des Abrechnungsmonats liegt. NGHR kürzt die Provision nicht nach aktiven Tagen. \
_Erläuterung: Ohne solche Kundenverträge beträgt die Provision 0 €._ \
_Beleg: WW „3% des Gesamtvolumens aller Verträge, die dieser Mitarbeiter … abgeschlossen hat“ (B); keine Kürzung (A) → A1._

*R4.6* Jeder Kundenvertrag geht in höchstens eine Provision ein: in die der Gehaltsabrechnung des Abrechnungsmonats, in dessen Provisionszeitraum sein Abschlussdatum liegt. Entfällt diese Gehaltsabrechnung oder existiert sie nicht, geht der Kundenvertrag in keine Provision ein. \
_Beleg: WW; RR „keinen Vertrag mehr vergessen und dann wieder nachkalkulieren“ (A); Verfall (A) → O4._

*R4.7* Eine Gehaltsabrechnung im Zustand „Erstellt“ enthält die Bruttoposition „Bonus“ genau dann, wenn beide Bedingungen erfüllt sind:

1. Ihre Gehaltsklasse ist „Gehalt und Bonus“.
2. Ihr Abrechnungsmonat ist ein Mai.

_Beleg: WW „ein Mal im Jahr einen Bonus … mit dem Gehalt vom Mai ausbezahlt“ (B) → O5._

*R4.8* Der Bonus einer Gehaltsabrechnung beträgt Bonussatz des Bonusjahres vor dem Kalenderjahr der Gehaltsabrechnung × Monatsgehalt der Gehaltsabrechnung. \
_Beleg: WW „als Prozent des monatlichen Bruttogehalts jeweils zu Jahresbeginn für das vergangene Jahr festgelegt“ (B); Bemessung am Monatsgehalt für Mai (A) → A6, O5._

*R4.9* Die Geschäftsführung legt zu Jahresbeginn genau einen Bonussatz für das vorangegangene Bonusjahr fest. \
_Erläuterung: Ein Bonussatz gilt für alle Mitarbeiter der Gehaltsklasse „Gehalt und Bonus“ (RR: „für alle Manager“)._ \
_Beleg: WW „von der Geschäftsführung als Prozent des monatlichen Bruttogehalts jeweils zu Jahresbeginn für das vergangene Jahr festgelegt“ (B); RR „den Bonus nur einmal im Jahr für alle Manager im System eingeben“ (B)._

*R4.10* Die Lohnbuchhaltung erfasst den Bonussatz eines Bonusjahres einmal in NGHR. \
_Beleg: RR „nur einmal im Jahr … im System eingeben“ (B); Erfassung durch die Lohnbuchhaltung (A) → A6._

== Bruttogehalt

*R4.11* Das Bruttogehalt ist die Summe aller Bruttopositionen der Gehaltsabrechnung. \
_Beleg: WW „als erstes deren Bruttogehalt“; RR „als Sonderposten dem Bruttogehalt … hinzugefügt“; WW „ein monatliches Bruttogehalt und dazu noch eine Vertriebsprovision“ (B)._

*R4.12* Gehaltsabrechnungen in den Zuständen „Angelegt“ und „Entfallen“ gehen mit einem Bruttogehalt, einer Einkommensteuer und einem Solidaritätszuschlag von je 0 € in alle Summen über frühere Gehaltsabrechnungen ein. \
_Beleg: – (A)._

== Steuerpositionen

Grundfreibetrag und Solidaritätszuschlag-Schwelle sind Jahreswerte (KK), abgezogen wird aber monatlich. Die Spezifikation verteilt die Jahressteuer nach derselben Logik wie die Beitragsbemessungsgrenze: Jeden Monat berechnet NGHR die Steuer auf das kumulierte Bruttogehalt und zieht die bereits abgezogene Steuer ab (Begründung und Alternative → A7, O17).

*R4.13* Der Grundfreibetrag beträgt 16.000 €. \
_Beleg: KK „Grundfreibetrag von jährlich 16.000 €“ (B)._

*R4.14* Die kumulierte Einkommensteuer einer Gehaltsabrechnung beträgt 25 % des Betrags, um den ihr kumuliertes Bruttogehalt den Grundfreibetrag übersteigt, mindestens jedoch 0 €. \
_Beleg: KK „darüber hinaus ein fester Steuersatz von 25%“ (B) → A7, O1, O3._

*R4.15* Die Steuerposition „Einkommensteuer“ einer Gehaltsabrechnung beträgt ihre kumulierte Einkommensteuer abzüglich der Einkommensteuer aller ihrer früheren Gehaltsabrechnungen. \
_Beleg: KK „Diese werden vom monatlichem Bruttogehalt abgezogen“ (A) → A7._

*R4.16* Der kumulierte Solidaritätszuschlag einer Gehaltsabrechnung beträgt 5,5 % ihrer kumulierten Einkommensteuer, sofern diese mindestens 18.000 € beträgt. Andernfalls beträgt er 0 €. \
_Beleg: KK „ab einer jährlichen Einkommenssteuer von 18.000 € in Höhe von 5,5% der Einkommenssteuer“ (B) → A7._

*R4.17* Die Steuerposition „Solidaritätszuschlag“ einer Gehaltsabrechnung beträgt ihren kumulierten Solidaritätszuschlag abzüglich des Solidaritätszuschlags aller ihrer früheren Gehaltsabrechnungen. \
_Beleg: KK (A) → A7._

Zusammengefasst (Erläuterung):

```
kumuliertes Bruttogehalt = Bruttogehalt + Σ Bruttogehalt der früheren Gehaltsabrechnungen
kumulierte ESt           = 0,25 × max(0 ; kumuliertes Bruttogehalt − 16.000)
Einkommensteuer          = kumulierte ESt − Σ Einkommensteuer der früheren Gehaltsabrechnungen
kumulierter Soli         = 0,055 × kumulierte ESt, falls kumulierte ESt ≥ 18.000, sonst 0
Solidaritätszuschlag     = kumulierter Soli − Σ Solidaritätszuschlag der früheren Gehaltsabrechnungen
```

== Nettogehalt

*R4.18* Das Nettogehalt ist das Bruttogehalt abzüglich Einkommensteuer und Solidaritätszuschlag. \
_Beleg: WW „erst werden die Steuern abgezogen … Das ergibt dann das Nettogehalt“ (B)._

== SV-Beiträge und Arbeitgeberanteile

*R4.19* Für die Versicherungsarten gelten folgende Beitragssätze und Beitragsbemessungsgrenzen:

#figure(
  caption: "Beitragssätze und Beitragsbemessungsgrenzen",
  table(
    columns: (auto, auto, auto),
    align: (left, right, right),
    table.header([*Versicherungsart*], [*Beitragssatz*], [*BBM (Jahresbruttogehalt)*]),
    [Krankenversicherung (KV)], [14 %], [63.000 €],
    [Pflegeversicherung (PV)], [4,5 %], [63.000 €],
    [Arbeitslosenversicherung (AV)], [5 %], [94.000 €],
    [Rentenversicherung (RV)], [21 %], [94.000 €],
  ),
)

_Beleg: WW (B)._

*R4.20* Der beitragspflichtige Betrag einer Gehaltsabrechnung für eine Versicherungsart ist der Teil ihres Bruttogehalts, der zusammen mit den Bruttogehältern aller ihrer früheren Gehaltsabrechnungen die BBM dieser Versicherungsart nicht übersteigt. \
_Erläuterung: „Gesetzlicher Bruttoverdienst“ (WW) ist das Bruttogehalt einschließlich Provision und Bonus (A8)._ \
_Beleg: WW „Für jeden Euro bis einschließlich der BBM der entsprechende Prozentsatz. Für jeden Euro darüber nichts“ (B) → A8, O1, O3._

*R4.21* Der SV-Beitrag einer Versicherungsart beträgt Beitragssatz × beitragspflichtiger Betrag dieser Versicherungsart. \
_Beleg: WW „als Prozentsätze des gesetzlichen Bruttoverdienstes bis zur jeweiligen Beitragsbemessungsgrenze“ (B)._

*R4.22* Der Arbeitgeberanteil einer Versicherungsart beträgt die Hälfte des SV-Beitrags derselben Versicherungsart. \
_Beleg: WW „Die Arbeitgeberanteile betragen die Hälfte der Beiträge“ (B)._

Zusammengefasst (Erläuterung):

```
beitragspflichtiger Betrag(v) = min( Bruttogehalt ; max(0 ; BBM(v) − Σ Bruttogehalt der früheren Gehaltsabrechnungen) )
SV-Beitrag(v)                 = Beitragssatz(v) × beitragspflichtiger Betrag(v)
Arbeitgeberanteil(v)          = SV-Beitrag(v) ÷ 2
```

== Auszahlungsbetrag

*R4.23* Der Auszahlungsbetrag ist das Nettogehalt abzüglich aller SV-Beiträge zuzüglich aller Arbeitgeberanteile. \
_Beleg: WW „Von diesem werden die Beiträge zu den Sozialversicherungen abgezogen und die Arbeitgeberanteile … wieder hinzugerechnet. So gelangt man zum Auszahlungsbetrag“ (B)._

*R4.24* Folgendes gilt, sobald der Auszahlungsbetrag einer Gehaltsabrechnung negativ ist: Die Lohnbuchhaltung ist über die Gehaltsabrechnung informiert. \
_Erläuterung (Folgerung aus R5.3, R5.4): NGHR überweist keinen Auszahlungsbetrag, die SV-Beiträge über 0 € überweist es. Der Fall tritt ein, wenn der kumulierte Solidaritätszuschlag in einem Abrechnungsmonat mit sehr kleinem Gehalt erstmals anfällt (T18). Die Behandlung des Fehlbetrags → O18._ \
_Beleg: – (A) → A17, O18._

== Darstellung und Rundung

*R4.25* Eine Gehaltsabrechnung im Zustand „Erstellt“ enthält ihre Gehaltspositionen in dieser Reihenfolge:

1. Bruttopositionen: Gehalt, Provision, Bonus (soweit nach 4.1 vorhanden)
2. Bruttogehalt
3. Steuerpositionen: Einkommensteuer, Solidaritätszuschlag
4. Nettogehalt
5. SV-Beiträge: KV, PV, AV, RV
6. Arbeitgeberanteile: KV, PV, AV, RV
7. Auszahlungsbetrag

_Beleg: WW „Alles, was ich genannt habe, sind eigene Positionen“ (B); Reihenfolge nach WW (A) → O22._

*R4.26* NGHR rundet den Betrag jeder Gehaltsposition, das kumulierte Bruttogehalt, die kumulierte Einkommensteuer und den kumulierten Solidaritätszuschlag kaufmännisch auf volle Cent. Jede Berechnung verwendet die gerundeten Beträge ihrer Eingangsgrößen. \
_Erläuterung: Das gilt für Summen, Differenzen, Produkte, Anteile und Vergleiche mit Schwellenwerten. Der Arbeitgeberanteil ist also die Hälfte des gerundeten SV-Beitrags (T14: PV 5,81 € ÷ 2 = 2,905 €, gerundet 2,91 €), der kumulierte Solidaritätszuschlag 5,5 % der gerundeten kumulierten Einkommensteuer (T18). Die Jahressumme der Steuerpositionen ist damit exakt der gerundete Jahreswert (T4)._ \
_Beleg: – (A) → A10._
