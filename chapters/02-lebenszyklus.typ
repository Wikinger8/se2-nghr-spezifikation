= Lebenszyklus der Gehaltsabrechnung

Jede Gehaltsabrechnung beginnt ohne Inhalt: NGHR legt sie an und erstellt sie im Gehaltslauf oder kennzeichnet sie als entfallen, wenn der Mitarbeiter im Abrechnungsmonat keinen aktiven Tag hat. Ab der Erstellung laufen zwei Vorgänge unabhängig voneinander: die Auszahlung am Zahltag und die Steuermeldung nach Quartalsende. Die Spezifikation bildet sie deshalb nicht als lineare Zustandsfolge ab, sondern als zwei Merkmale der erstellten Gehaltsabrechnung, den Zahlungsstatus und den Meldestatus (mehrere Zustände pro Geschäftsobjekt, SK F36). So meldet NGHR das Bruttogehalt auch dann, wenn die Auszahlung etwa wegen einer fehlenden Bankverbindung noch aussteht. Jahre später löscht NGHR die Gehaltsabrechnung mit allen Daten des Mitarbeiters. Es gibt keine Rücksprünge. „Gelöscht“ ist der Endzustand. Die Kapitel 3 bis 6 folgen dieser Reihenfolge.

== Zustände

#figure(
  caption: "Zustände einer Gehaltsabrechnung",
  table(
    columns: (auto, 1fr),
    align: (left, left),
    table.header([*Zustand*], [*Bedeutung*]),
    [Angelegt], [Die Gehaltsabrechnung existiert für Mitarbeiter und Abrechnungsmonat, enthält aber noch keine Gehaltspositionen (Initialzustand).],
    [Erstellt], [Alle Gehaltspositionen sind berechnet. Der Inhalt ist endgültig. Die Gehaltsabrechnung hat zusätzlich einen Zahlungsstatus und einen Meldestatus (Tabelle unten).],
    [Entfallen], [Der Mitarbeiter hat im Abrechnungsmonat keinen aktiven Tag. Die Gehaltsabrechnung bleibt ohne Gehaltspositionen; NGHR zahlt und meldet nichts.],
    [Gelöscht], [Die Gehaltsabrechnung ist mit allen Daten des Mitarbeiters gelöscht (Endzustand).],
  ),
)

Merkmale einer Gehaltsabrechnung im Zustand „Erstellt“. Beide Merkmale ändern sich unabhängig voneinander (SK F36):

#figure(
  caption: "Zahlungsstatus und Meldestatus",
  table(
    columns: (auto, auto, 1fr),
    align: (left, left, left),
    table.header([*Merkmal*], [*Wert*], [*Bedeutung*]),
    [Zahlungsstatus], [offen], [Mindestens eine geschuldete Überweisung ist noch nicht ausgelöst (Wert bei der Erstellung).],
    [Zahlungsstatus], [ausgezahlt], [Alle geschuldeten Überweisungen sind ausgelöst. Die Gehaltsabrechnung ist in der ESS abrufbar.],
    [Meldestatus], [ungemeldet], [Das Bruttogehalt ist in keiner Steuermeldung berücksichtigt (Wert bei der Erstellung).],
    [Meldestatus], [gemeldet], [Das Bruttogehalt ist in einer Steuermeldung berücksichtigt.],
  ),
)

#page(flipped: true)[
  == Zustandsübergänge und ausgelöste Aktionen

  #figure(
    caption: "Zustandsübergänge und ausgelöste Aktionen",
    table(
      columns: (1.15fr, 1.15fr, 0.85fr, 0.85fr, 1.3fr, 0.6fr),
      align: (left, left, left, left, left, left),
      table.header([*Ereignis*], [*Bedingung*], [*Zustand alt*], [*Zustand neu*], [*Ausgelöste Aktionen*], [*Regeln*]),
      [Einstellung eines Mitarbeiters], [–], [–], [Angelegt], [Gehaltsabrechnung für den Abrechnungsmonat des Vertragsbeginns], [R3.1],
      [Zahltag des Vormonats; Einstellung oder Änderung von Vertragsbeginn oder Vertragsende nach diesem Zahltag], [Arbeitsverhältnis besteht im Abrechnungsmonat], [–], [Angelegt], [Gehaltsabrechnung für den Abrechnungsmonat], [R3.2],
      [Gehaltslauf], [mindestens ein aktiver Tag, frühere Gehaltsabrechnungen verarbeitet, Eingangsdaten vollständig], [Angelegt], [Erstellt (Zahlungsstatus „offen“, Meldestatus „ungemeldet“)], [Gehaltspositionen berechnen (Kapitel 4); Lohnbuchungen zu den Steuerpositionen], [R3.10, R5.1],
      [Gehaltslauf], [kein aktiver Tag im Abrechnungsmonat], [Angelegt], [Entfallen], [–], [R3.11],
      [Gehaltslauf], [frühere Gehaltsabrechnung noch angelegt oder Eingangsdaten unvollständig (Bonussatz, Kostenstelle)], [Angelegt], [Angelegt], [Meldung an die Lohnbuchhaltung], [R3.12],
      [Angelegte Gehaltsabrechnung nach dem Gehaltslauf ihres Abrechnungsmonats verarbeitbar], [–], [Angelegt], [Erstellt oder Entfallen], [Weiterer Gehaltslauf spätestens am Folgetag], [R3.7],
      [Zahltag (oder Erstellung nach dem Zahltag)], [nötige Empfängerdaten hinterlegt (R5.5), Auszahlungsbetrag ≥ 0 €], [Erstellt, Zahlungsstatus „offen“], [Erstellt, Zahlungsstatus „ausgezahlt“], [Überweisungen; Lohnbuchungen zu den Zahlungsabflüssen; Abruf in der ESS], [R5.3 bis R5.10, R6.3],
      [Zahltag (oder Erstellung nach dem Zahltag)], [nötige Empfängerdaten hinterlegt (R5.5), Auszahlungsbetrag \< 0 €], [Erstellt, Zahlungsstatus „offen“], [Erstellt, Zahlungsstatus „ausgezahlt“], [Überweisung der SV-Beiträge über 0 €; Lohnbuchungen zu den Zahlungsabflüssen; Meldung an die Lohnbuchhaltung; Abruf in der ESS], [R4.24, R5.4, R5.8 bis R5.10, R6.3],
      [Zahltag (oder Erstellung nach dem Zahltag)], [eine nötige Empfängerangabe fehlt (R5.5)], [Erstellt, Zahlungsstatus „offen“], [Erstellt, Zahlungsstatus „offen“], [übrige Überweisungen und ihre Lohnbuchungen; Meldung an die Lohnbuchhaltung], [R5.5],
      [Fehlende Empfängerangabe nachträglich hinterlegt], [keine weitere nötige Empfängerangabe fehlt], [Erstellt, Zahlungsstatus „offen“], [Erstellt, Zahlungsstatus „ausgezahlt“], [ausstehende Überweisungen; Lohnbuchungen; Abruf in der ESS], [R5.5, R5.8, R5.9],
      [Steuermeldung gesendet], [Meldequartal der Gehaltsabrechnung abgeschlossen; Zahlungsstatus beliebig], [Erstellt, Meldestatus „ungemeldet“], [Erstellt, Meldestatus „gemeldet“], [–], [R5.12 bis R5.14],
      [Löschzeitpunkt des Mitarbeiters erreicht], [–], [jeder], [Gelöscht], [Alle Daten des Mitarbeiters löschen], [R6.10, R6.11],
    ),
  )
]

Die Bedingungen der Zahltag-Zeilen schließen sich gegenseitig aus und decken alle Fälle ab. Übergänge des Zahlungsstatus ändern den Meldestatus nicht und umgekehrt.

== Termine im Überblick

#figure(
  caption: "Termine im Überblick",
  table(
    columns: (1fr, auto),
    align: (left, left),
    table.header([*Termin*], [*Regel*]),
    [16. des Vormonats bis einschließlich 15. des Abrechnungsmonats: Provisionszeitraum], [R4.4],
    [Frühestens 16. des Abrechnungsmonats, spätestens am Tag vor dem Zahltag: erster Gehaltslauf], [R3.6],
    [Letzter Wochentag des Abrechnungsmonats: Zahltag], [R5.2],
    [Spätestens 10.04., 10.07., 10.10., 10.01.: Steuermeldung je Meldequartal], [R5.12],
    [Jahresbeginn: Bonussatz für das vergangene Bonusjahr; Kumulation für Grundfreibetrag, Solidaritätszuschlag und BBM beginnt neu], [R4.9, R4.14, R4.20],
    [Abrechnungsmonat Mai: Bonus], [R4.7],
  ),
)
