= Zustände der Gehaltsabrechnung

Eine Gehaltsabrechnung befindet sich zu jedem Zeitpunkt in genau einem Zustand. Im Zustand „Erstellt“ hat sie zusätzlich die beiden voneinander unabhängigen Merkmale Zahlungsstatus und Meldestatus.

#figure(
  caption: "Zustände und Merkmale einer Gehaltsabrechnung",
  table(
    columns: (1.05fr, 2.6fr, 0.75fr),
    align: (left, left, left),
    table.header([*Zustand / Merkmal*], [*Bedeutung*], [*Regeln*]),
    [Angelegt], [Die Gehaltsabrechnung existiert für Mitarbeiter und Abrechnungsmonat, enthält aber noch keine Gehaltspositionen (Anfangszustand).], [R3.1, R3.2],
    [Erstellt], [Alle Gehaltspositionen sind berechnet; der Inhalt ist endgültig.], [R3.9, R3.10, R3.12],
    [– Zahlungsstatus], [„offen“: Die Überweisungen nach R5.3 und R5.4 sind noch nicht ausgelöst. „ausgezahlt“: Sie sind ausgelöst.], [R5.7],
    [– Meldestatus], [„ungemeldet“: Das Bruttogehalt ist in keiner Steuermeldung berücksichtigt. „gemeldet“: Es ist in einer Steuermeldung berücksichtigt.], [R5.12, R5.14],
    [Entfallen], [Der Mitarbeiter hat im Abrechnungsmonat keinen aktiven Tag. Die Gehaltsabrechnung bleibt ohne Gehaltspositionen; NGHR zahlt nichts. Ob der Mitarbeiter in der Steuermeldung erscheint, ist offen (O22).], [R3.11],
    [Gelöscht], [Die Gehaltsabrechnung ist mit allen Daten des Mitarbeiters gelöscht (Endzustand).], [R6.8, R6.9],
  ),
)

== Zustandsübergänge

Der Zustandsautomat zeigt jeden Übergang mit dem auslösenden Ereignis, der Bedingung in eckigen Klammern und der ausgelösten Aktion hinter dem Schrägstrich. Das Vorlesungsskript lässt eine Tabelle als Ergänzung oder Alternative zu; dieses Dokument führt die Übergänge nur als Automaten, die zugehörigen Regeln stehen in Kapitel 3, 5 und 6.

#figure(
  caption: [Zustandsautomat der Gehaltsabrechnung. Das Ereignis „Gehaltslauf“ meint stets den Gehaltslauf des Abrechnungsmonats der Gehaltsabrechnung (R3.9, R3.11); für jeden Übergang nach „Gelöscht“ gelten R6.8 und R6.9.],
  image("../assets/zustandsdiagramm.svg", width: 100%),
)
