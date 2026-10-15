= Erstellen: Anlegen und Gehaltslauf

== Anlegen

*R3.0* NGHR darf Gehaltsabrechnungen nur für Inlandsmitarbeiter anlegen. [SCH, RR → O19]

*R3.1* Folgendes gilt, sobald die Einstellung eines Inlandsmitarbeiters erfolgt ist: Seine Gehaltsabrechnung für den späteren der beiden folgenden Abrechnungsmonate ist im Zustand „Angelegt“: (1) Abrechnungsmonat seines Vertragsbeginns, (2) Einführungsmonat seiner Gehaltsklasse. [→ A10, A14]

*R3.2* Für jeden Abrechnungsmonat eines Inlandsmitarbeiters, der auf seinen Abrechnungsmonat nach R3.1 folgt und in dem sein Arbeitsverhältnis an mindestens einem Kalendertag besteht, ist spätestens am Zahltag des Vormonats eine Gehaltsabrechnung im Zustand „Angelegt“. [WW → A10] \
_Erläuterung: Der Abrechnungsmonat nach R3.1 ist durch R3.1 abgedeckt; Abrechnungsmonate davor bleiben in PZ (R3.5). Liegt ein angelegter Abrechnungsmonat nach einer Änderung außerhalb des Arbeitsverhältnisses, entfällt die Gehaltsabrechnung im Gehaltslauf (R3.12)._

*R3.3* Für jeden Mitarbeiter existiert je Abrechnungsmonat höchstens eine Gehaltsabrechnung. [WW]

*R3.4* Jede Gehaltsabrechnung gehört zu genau einem Mitarbeiter. [WW, LL] \
_Erläuterung: Stellt die Sonnenschein AG dieselbe Person erneut ein, ist sie ein neuer Mitarbeiter mit neuer Personalnummer; ihre früheren Gehaltsabrechnungen bleiben beim früheren Mitarbeiter (LL)._

*R3.5* NGHR legt für keinen Mitarbeiter eine Gehaltsabrechnung für einen Abrechnungsmonat vor dem Einführungsmonat seiner Gehaltsklasse an. [SCH → A14] \
_Erläuterung: Gehaltsabrechnungen früherer Abrechnungsmonate verbleiben in PZ (SCH)._

== Gehaltslauf

*R3.6a* NGHR führt für jeden Abrechnungsmonat genau einen Gehaltslauf durch. [RR → A17, O6]

*R3.6b* Der Gehaltslauf eines Abrechnungsmonats findet frühestens am 16. dieses Abrechnungsmonats statt. [WW → A4]

*R3.6c* Der Gehaltslauf eines Abrechnungsmonats findet spätestens am Kalendertag vor seinem Zahltag statt. [RR, SCH → A4]

*R3.7* NGHR ruft vor jedem Gehaltslauf die Kundenverträge über die Vertragsschnittstelle ab. [RR]

*R3.8* Die Provisionen eines Gehaltslaufs beruhen auf den Kundenverträgen aus dem Abruf vor diesem Gehaltslauf. [RR → O7]

== Erstellt oder entfallen

*R3.10* Im Gehaltslauf erstellt NGHR jede angelegte Gehaltsabrechnung, deren Mitarbeiter im Abrechnungsmonat mindestens einen aktiven Tag hat. [RR, WW]

*R3.11* Eine Gehaltsabrechnung ist nach ihrer Erstellung im Zustand „Erstellt“ mit Zahlungsstatus „offen“ und Meldestatus „ungemeldet“. [RR, WW]

*R3.12* Die angelegte Gehaltsabrechnung eines Mitarbeiters ohne aktiven Tag im Abrechnungsmonat ist nach dem Gehaltslauf im Zustand „Entfallen“. [RR, LL] \
_Erläuterung: Betrifft entsendete Mitarbeiter (die ausländische Tochtergesellschaft zahlt, RR) und inaktive Mitarbeiter (Sabbatical, Freistellung, längere Krankheit, LL)._

*R3.13* Der Inhalt einer Gehaltsabrechnung im Zustand „Erstellt“ ändert sich nicht. [→ A16, O3]

== Eingangsdaten

Die Pflege von Mitarbeiterstatus, Gehaltsdaten und Kostenstellen-Zuordnung ist nicht Gegenstand dieses Dokuments. Die Regeln R3.14 bis R3.17 legen fest, welche Eigenschaften dieser Daten die Gehaltsabrechnung voraussetzt; R3.18 bis R3.21 legen fest, welcher Datenstand gilt.

*R3.14* An Kalendertagen außerhalb seines Arbeitsverhältnisses ist der Mitarbeiterstatus eines Mitarbeiters nicht „aktiv“. [LL]

*R3.15* Kündigung und Auflösungsvertrag ändern den Mitarbeiterstatus nicht. [LL] \
_Erläuterung: Bis zum Vertragsende behält der Mitarbeiter daher seinen Mitarbeiterstatus; NGHR erstellt weiter Gehaltsabrechnungen für ihn._

*R3.16* Jeder Mitarbeiter ist genau einer Gehaltsklasse zugeordnet. [WW]

*R3.17* Jeder Manager ist der Gehaltsklasse „Gehalt und Bonus“ zugeordnet, auch wenn er im Vertrieb arbeitet. [WW → O18] \
_Erläuterung: Ein Manager im Vertrieb erhält daher keine Provision._

*R3.18* Die Gehaltsdaten einer Gehaltsabrechnung sind die Gehaltsdaten, die zu Beginn ihres Gehaltslaufs in NGHR hinterlegt sind. [WW → A2]

*R3.19* Der Mitarbeiterstatus einer Gehaltsabrechnung ist für jeden Kalendertag ihres Abrechnungsmonats der Wert, der zu Beginn ihres Gehaltslaufs in NGHR für diesen Kalendertag hinterlegt ist. [RR, LL → A2] \
_Erläuterung: Das gilt auch für die Kalendertage nach dem Gehaltslauf._

*R3.20* Die Kostenstelle einer Gehaltsabrechnung ist die Kostenstelle, der der Mitarbeiter zu Beginn ihres Gehaltslaufs zugeordnet ist. [PP → A3, O4]

*R3.21* NGHR übernimmt die Zuordnung der Mitarbeiter zu Kostenstellen aus dem ERP-System. [PP]
