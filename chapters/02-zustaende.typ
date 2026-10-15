= Zustände der Gehaltsabrechnung

Eine Gehaltsabrechnung befindet sich zu jedem Zeitpunkt in genau einem Zustand. Im Zustand „Erstellt“ hat sie zusätzlich die beiden voneinander unabhängigen Merkmale Zahlungsstatus und Meldestatus.

#figure(
  caption: "Zustände und Merkmale einer Gehaltsabrechnung",
  table(
    columns: (1.05fr, 2.6fr, 0.75fr),
    align: (left, left, left),
    table.header([*Zustand / Merkmal*], [*Bedeutung*], [*Regeln*]),
    [Angelegt], [Die Gehaltsabrechnung existiert für Mitarbeiter und Abrechnungsmonat, enthält aber noch keine Gehaltspositionen (Anfangszustand).], [R3.1, R3.2],
    [Erstellt], [Alle Gehaltspositionen sind berechnet; der Inhalt ist endgültig.], [R3.10, R3.11, R3.13],
    [– Zahlungsstatus], [„offen“: Die Überweisungen nach R5.3 und R5.4 sind noch nicht ausgelöst. „ausgezahlt“: Sie sind ausgelöst.], [R5.7],
    [– Meldestatus], [„ungemeldet“: Das Bruttogehalt ist in keiner Steuermeldung berücksichtigt. „gemeldet“: Es ist in einer Steuermeldung berücksichtigt.], [R5.13, R5.15],
    [Entfallen], [Der Mitarbeiter hat im Abrechnungsmonat keinen aktiven Tag. Die Gehaltsabrechnung bleibt ohne Gehaltspositionen; NGHR zahlt nichts. Ob der Mitarbeiter in der Steuermeldung erscheint, ist offen (O22).], [R3.12],
    [Gelöscht], [Die Gehaltsabrechnung ist mit allen Daten des Mitarbeiters gelöscht (Endzustand).], [R6.8, R6.9],
  ),
)

== Zustandsübergänge

// Diese Tabelle darf umbrechen (Ausnahme von der Regel in main.typ). Haelt man
// sie zusammen, rutscht sie als Ganzes auf die naechste Seite und laesst die
// Seite davor halb leer. Sie ist lang genug, dass beim Umbruch mehrere Zeilen
// auf jeder Seite stehen; die Kopfzeile wiederholt sich.
#[
#show figure: set block(breakable: true)
#figure(
  caption: "Zustandsübergänge und ausgelöste Aktionen",
  table(
    columns: (1.25fr, 1fr, 1.15fr, 1.25fr, 0.75fr),
    align: (left, left, left, left, left),
    table.header([*Ereignis*], [*Zustand alt*], [*Zustand neu*], [*Aktion*], [*Regeln*]),
    [Einstellung des Inlandsmitarbeiters], [–], [Angelegt (späterer Abrechnungsmonat aus Vertragsbeginn und Einführungsmonat seiner Gehaltsklasse)], [–], [R3.0, R3.1],
    [Zeitpunkt nach R3.2 (spätestens Zahltag des Vormonats)], [–], [Angelegt (jeder Folgemonat nach R3.2)], [–], [R3.2],
    [Gehaltslauf ihres Abrechnungsmonats; Mitarbeiter hat mindestens einen aktiven Tag], [Angelegt], [Erstellt (offen, ungemeldet)], [Lohnbuchungen zu den Steuerpositionen], [R3.10, R3.11, R5.1],
    [Gehaltslauf ihres Abrechnungsmonats; Mitarbeiter hat keinen aktiven Tag], [Angelegt], [Entfallen], [–], [R3.12],
    [Zahltag: Überweisungen ausgelöst], [Erstellt / offen], [Erstellt / ausgezahlt], [Lohnbuchungen zu den Zahlungsabflüssen], [R5.3–R5.7, R5.8],
    [Steuermeldung gesendet], [Erstellt / ungemeldet], [Erstellt / gemeldet], [–], [R5.15],
    [Löschzeitpunkt des Mitarbeiters erreicht], [Angelegt, Erstellt, Entfallen], [Gelöscht], [Löschung aller Daten des Mitarbeiters], [R6.8, R6.9],
  ),
)
]
