= Testbeispiele

Beispiele verhindern Missverständnisse (SK F48). Jedes Beispiel ist ein Testfall nach der Schablone Gegeben – Wenn – Dann und vertritt eine Äquivalenzklasse: Positivtest, Negativtest oder Grenzwerttest (SK Kapitel 07, F21–F23). Alle Beträge sind mit den Regeln aus Kapitel 4 nachgerechnet. Annahme für T1 bis T7, T13 und T18: Der Mitarbeiter ist im Kalenderjahr durchgehend aktiv, ein Bonussatz für das Vorjahr ist erfasst, und Kostenstelle, Bankverbindung und Krankenkasse sind hinterlegt, sofern nichts anderes angegeben ist.

*T1 – Positivtest: Gehaltsklasse „Gehalt“, Grundfreibetrag aufgebraucht* (R4.1, R4.2, R4.11–R4.23)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“ und Monatsgehalt 4.000 €, dessen Gehaltsabrechnungen Januar bis April zusammen 16.000 € Bruttogehalt ausweisen
- Wenn der Gehaltslauf für Mai stattfindet
- Dann enthält seine Gehaltsabrechnung: Gehalt 4.000,00 €, Bruttogehalt 4.000,00 €, Einkommensteuer 1.000,00 €, Solidaritätszuschlag 0,00 €, Nettogehalt 3.000,00 €, SV-Beiträge KV 560,00 €, PV 180,00 €, AV 200,00 €, RV 840,00 €, Arbeitgeberanteile KV 280,00 €, PV 90,00 €, AV 100,00 €, RV 420,00 €, Auszahlungsbetrag 2.110,00 €
- Und die Gehaltsabrechnungen Januar bis April weisen je 0,00 € Einkommensteuer aus; die Jahressumme beträgt 8.000,00 € = 25 % × (48.000 € − 16.000 €)

*T2 – Grenzwerttest: Grenzen des Provisionszeitraums* (R4.3–R4.6)

- Gegeben ein Vertriebsmitarbeiter mit Monatsgehalt 4.000 € und Kundenverträgen mit Abschlussdatum 15.02. (10.000 €), 16.02. (20.000 €), 15.03. (30.000 €) und 16.03. (40.000 €)
- Wenn der Gehaltslauf für März stattfindet
- Dann beträgt die Provision 1.500,00 € (3 % von 50.000 €) und das Bruttogehalt 5.500,00 €
- Und der Kundenvertrag vom 15.02. ist bereits in der Provision für Februar enthalten; der vom 16.03. geht in die Provision für April ein

*T3 – Positivtest: Manager im Vertrieb, Bonus im Mai* (R3.16, R4.3, R4.7, R4.8)

- Gegeben ein Manager, der im Vertrieb arbeitet, mit Gehaltsklasse „Gehalt und Bonus“, Monatsgehalt 8.000 €, einem Kundenvertrag vom 02.05. über 100.000 €, ein erfasster Bonussatz von 50 % für das Vorjahr und Gehaltsabrechnungen Januar bis April mit zusammen 32.000 € Bruttogehalt
- Wenn der Gehaltslauf für Mai stattfindet
- Dann enthält die Gehaltsabrechnung keine Provision, einen Bonus von 4.000,00 € und Bruttogehalt 12.000,00 €, Einkommensteuer 3.000,00 €, Solidaritätszuschlag 0,00 €, Nettogehalt 9.000,00 €, SV-Beiträge KV 1.680,00 €, PV 540,00 €, AV 600,00 €, RV 2.520,00 €, Arbeitgeberanteile KV 840,00 €, PV 270,00 €, AV 300,00 €, RV 1.260,00 €, Auszahlungsbetrag 6.330,00 €

*T4 – Grenzwerttest: Solidaritätszuschlag-Schwelle und BBM im Jahresverlauf* (R4.14–R4.17, R4.20)

- Gegeben der Manager aus T3
- Wenn die Gehaltsläufe für August bis Dezember stattfinden
- Dann beträgt der KV-Beitrag im August 420,00 € (BBM 63.000 € erreicht) und ab September 0,00 €
- Und der Solidaritätszuschlag ist bis Oktober 0,00 € (kumulierte Einkommensteuer 17.000,00 €), im November 1.045,00 € (kumulierte Einkommensteuer 19.000,00 € ≥ 18.000 €, Nachholung ab Januar) und im Dezember 110,00 €
- Und die Jahressumme Solidaritätszuschlag beträgt 1.155,00 € = 5,5 % × 21.000,00 €

Jahresverlauf zu T3/T4 (Beträge in €; ESt = Einkommensteuer, Soli = Solidaritätszuschlag):

#page(flipped: true)[
  #figure(
    caption: "Jahresverlauf zu T3/T4 (Beträge in €)",
    table(
      columns: 11,
      align: (left, right, right, right, right, right, right, right, right, right, right),
      table.header(
        [*Monat*], [*Bruttogehalt*], [*kumuliert*], [*kum. ESt*], [*ESt*], [*Soli*], [*KV*], [*PV*], [*AV*], [*RV*], [*Auszahlung*],
      ),
      [Jan], [8.000,00], [8.000,00], [0,00], [0,00], [0,00], [1.120,00], [360,00], [400,00], [1.680,00], [6.220,00],
      [Feb], [8.000,00], [16.000,00], [0,00], [0,00], [0,00], [1.120,00], [360,00], [400,00], [1.680,00], [6.220,00],
      [Mär], [8.000,00], [24.000,00], [2.000,00], [2.000,00], [0,00], [1.120,00], [360,00], [400,00], [1.680,00], [4.220,00],
      [Apr], [8.000,00], [32.000,00], [4.000,00], [2.000,00], [0,00], [1.120,00], [360,00], [400,00], [1.680,00], [4.220,00],
      [Mai], [12.000,00], [44.000,00], [7.000,00], [3.000,00], [0,00], [1.680,00], [540,00], [600,00], [2.520,00], [6.330,00],
      [Jun], [8.000,00], [52.000,00], [9.000,00], [2.000,00], [0,00], [1.120,00], [360,00], [400,00], [1.680,00], [4.220,00],
      [Jul], [8.000,00], [60.000,00], [11.000,00], [2.000,00], [0,00], [1.120,00], [360,00], [400,00], [1.680,00], [4.220,00],
      [Aug], [8.000,00], [68.000,00], [13.000,00], [2.000,00], [0,00], [420,00], [135,00], [400,00], [1.680,00], [4.682,50],
      [Sep], [8.000,00], [76.000,00], [15.000,00], [2.000,00], [0,00], [0,00], [0,00], [400,00], [1.680,00], [4.960,00],
      [Okt], [8.000,00], [84.000,00], [17.000,00], [2.000,00], [0,00], [0,00], [0,00], [400,00], [1.680,00], [4.960,00],
      [Nov], [8.000,00], [92.000,00], [19.000,00], [2.000,00], [1.045,00], [0,00], [0,00], [400,00], [1.680,00], [3.915,00],
      [Dez], [8.000,00], [100.000,00], [21.000,00], [2.000,00], [110,00], [0,00], [0,00], [100,00], [420,00], [5.630,00],
      [Summe], [100.000,00], [], [], [21.000,00], [1.155,00], [8.820,00], [2.835,00], [4.700,00], [19.740,00], [59.797,50],
    ),
  )
]

*T5 – Negativtest: Kein Solidaritätszuschlag bei Jahres-Einkommensteuer unter 18.000 €; Rundung der Provision* (R4.5, R4.16, R4.26)

- Gegeben ein Vertriebsmitarbeiter mit Monatsgehalt 5.000 € und einem Kundenvertrag vom 01.03. über 333.333,33 €, sonst ohne Kundenverträge
- Wenn der Gehaltslauf für März stattfindet
- Dann beträgt die Provision 10.000,00 € (3 % = 9.999,9999 €, gerundet), das Bruttogehalt 15.000,00 € (kumuliert 25.000,00 €), die Einkommensteuer 2.250,00 € und der Solidaritätszuschlag 0,00 €
- Und der Solidaritätszuschlag bleibt das ganze Jahr 0,00 €, da die Jahres-Einkommensteuer 13.500,00 € beträgt

*T6 – Grenzwerttest: Beitragsbemessungsgrenze KV/PV* (R4.20 bis R4.22, R4.26)

Getestet werden die drei Werte nach SK Kapitel 07 F23: einen Cent unter, genau auf und einen Cent über der BBM von 63.000 €.

- Gegeben drei Vertriebsmitarbeiter a, b und c mit Monatsgehalt 7.000 € ohne Kundenverträge in den Provisionszeiträumen für September und Oktober (Provision 0,00 €), deren Gehaltsabrechnungen Januar bis August zusammen 55.999,99 € (a), 56.000,00 € (b) und 56.000,01 € (c) Bruttogehalt ausweisen
- Wenn der Gehaltslauf für September stattfindet
- Dann gilt:

#page(flipped: true)[
  #figure(
    caption: "T6: Beitragspflichtiger Betrag und Beiträge an der BBM KV/PV",
    table(
      columns: (1fr, 1fr, 1.1fr, 1.2fr, 1.2fr),
      align: (left, right, right, left, left),
      table.header(
        [*Mitarbeiter*], [*kumuliertes Bruttogehalt*], [*beitragspflichtiger Betrag KV/PV*], [*KV-Beitrag*], [*PV-Beitrag*],
      ),
      [a (ein Cent darunter)], [62.999,99 €], [7.000,00 €], [980,00 €], [315,00 €],
      [b (genau)], [63.000,00 €], [7.000,00 €], [980,00 €], [315,00 €],
      [c (ein Cent darüber)], [63.000,01 €], [6.999,99 €], [980,00 € (979,9986 €, gerundet)], [315,00 € (314,99955 €, gerundet)],
    ),
  )
]

- Wenn der Gehaltslauf für Oktober stattfindet
- Dann beträgt der beitragspflichtige Betrag KV/PV für a 0,01 € (KV-Beitrag 0,00 € und PV-Beitrag 0,00 € nach Rundung) und für b und c 0,00 €
- Und für b betragen KV- und PV-Beitrag 0,00 €, AV-Beitrag 350,00 €, RV-Beitrag 1.470,00 €, Einkommensteuer 1.750,00 € und Auszahlungsbetrag 4.340,00 €

*T7 – Grenzwerttest: Eintritt mitten im Monat und im Jahr* (R3.13, R4.2, R4.14)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“, Monatsgehalt 4.000 € und Vertragsbeginn am 16.06.
- Wenn der Gehaltslauf für Juni stattfindet
- Dann hat die Gehaltsabrechnung 15 aktive Tage, ein Gehalt von 2.000,00 €, Einkommensteuer 0,00 € und Auszahlungsbetrag 1.555,00 €
- Und die Einkommensteuer Juni bis Dezember beträgt zusammen 2.500,00 € = 25 % × (26.000 € − 16.000 €)

*T8 – Grenzwerttest: Zahltag* (R5.2)

- Gegeben die Abrechnungsmonate Oktober 2026 (31.10. ist ein Samstag), Januar 2027 (31.01. ist ein Sonntag) und Mai 2027 (31.05. ist ein Montag)
- Dann ist der Zahltag Freitag, 30.10.2026, Freitag, 29.01.2027 und Montag, 31.05.2027

*T9a – Negativtest: Entsendung* (R3.2, R3.11)

- Gegeben ein Mitarbeiter, der vom 01.07. bis 31.07. entsendet ist
- Wenn der Gehaltslauf für Juli stattfindet
- Dann ist seine Gehaltsabrechnung für Juli im Zustand „Entfallen“
- Und am Zahltag Juli ist die für August im Zustand „Angelegt“

*T9b – Positivtest: Gehalt bis zum Vertragsende nach Kündigung* (R3.2, R3.13)

- Gegeben ein Mitarbeiter, der am 10.07. kündigt, mit Vertragsende 30.09.
- Wenn die Gehaltsläufe für August und September stattfinden
- Dann erstellt NGHR beide Gehaltsabrechnungen mit Gehalt in Höhe des Monatsgehalts
- Und am Zahltag September legt NGHR keine Gehaltsabrechnung für Oktober an

*T10 – Negativtest: Einsicht* (R6.1, R6.3, R6.5, R6.7)

- Gegeben eine erstellte Gehaltsabrechnung für Oktober 2026 (Zahltag 30.10.2026)
- Wenn der Mitarbeiter sie am 29.10.2026 in der ESS aufruft, dann verweigert NGHR die Einsicht (Zahlungsstatus „offen“)
- Wenn der Mitarbeiter sie am 30.10.2026 nach der Auszahlung in der ESS aufruft, dann zeigt NGHR sie an
- Wenn sein Manager sie aufruft, dann verweigert NGHR die Einsicht
- Wenn ein Anwender mit der Rolle Personalwesen sie aufruft, dann verweigert NGHR die Einsicht

*T11 – Positivtest: Lohnbuchungen am Zahltag* (R5.10, R5.11)

- Gegeben 7.000 am Zahltag ausgezahlte Gehaltsabrechnungen
- Wenn der Zahltag endet
- Dann hat das ERP-System an diesem Tag genau eine Meldung erhalten, die je Gehaltsabrechnung höchstens fünf Lohnbuchungen enthält (ausgezahltes Gehalt, KV, PV, AV, RV), jeweils mit Buchungsdatum, Betrag, Personalnummer, Kostenstelle, Zweck und Abrechnungsmonat; SV-Beiträge von 0,00 € (BBM erreicht) sind nicht enthalten

*T12 – Grenzwerttest: Löschzeitpunkt* (R6.10)

- Gegeben ein Mitarbeiter mit Vertragsende 28.02.2030, dessen letzte Überweisung eines Auszahlungsbetrags das Buchungsdatum 28.02.2030 hat und dessen Sterbedatum der 03.03.2030 ist
- Dann ist sein Löschzeitpunkt der 28.02.2040, der spätere von 03.03.2035 und 28.02.2040

*T13 – Grenzwerttest: Solidaritätszuschlag-Schwelle genau erreicht* (R4.16, R4.17)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“ und Monatsgehalt 8.000 €, dessen Gehaltsabrechnungen Januar bis Oktober zusammen 80.000 € Bruttogehalt ausweisen
- Wenn der Gehaltslauf für November stattfindet (kumuliert 88.000,00 €)
- Dann beträgt die kumulierte Einkommensteuer genau 18.000,00 € und der Solidaritätszuschlag 990,00 €
- Und im Dezember beträgt der Solidaritätszuschlag 110,00 € (kumuliert 1.100,00 € = 5,5 % × 20.000,00 €)

*T14 – Grenzwerttest: Rundung im Teilmonat* (R4.2, R4.21, R4.22, R4.26)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“, Monatsgehalt 4.000 € und Vertragsbeginn am 31.01.
- Wenn der Gehaltslauf für Januar stattfindet
- Dann beträgt das Gehalt 129,03 € (4.000 € × 1 ÷ 31), der KV-Beitrag 18,06 €, der PV-Beitrag 5,81 €, der AV-Beitrag 6,45 €, der RV-Beitrag 27,10 €, die Arbeitgeberanteile 9,03 €, 2,91 €, 3,23 € und 13,55 € und der Auszahlungsbetrag 100,33 €

*T15 – Positivtest: Nachholung nach Ausfall* (R3.9, R5.3, R5.11, R6.3)

- Gegeben der Abrechnungsmonat Oktober 2026 (Zahltag 30.10.2026), ein für den 29.10.2026 vorgesehener Gehaltslauf und ein Ausfall von NGHR vom 29.10. bis 01.11.2026
- Wenn NGHR am 02.11.2026 wiederhergestellt ist
- Dann findet der Gehaltslauf am 02.11.2026 statt, die Überweisungen haben das Buchungsdatum 02.11.2026, das ERP-System erhält am 02.11.2026 genau eine Meldung mit den Lohnbuchungen zu Steuern und Zahlungsabflüssen, die Gehaltsabrechnungen sind ab dem 02.11.2026 in der ESS abrufbar, und die Gehaltsabrechnungen für November sind am 02.11.2026 im Zustand „Angelegt“

*T16 – Positiv- und Negativtest: Steuermeldung unabhängig von der Auszahlung* (R5.5, R5.12 bis R5.14)

- Gegeben vier Mitarbeiter: A mit drei ausgezahlten Gehaltsabrechnungen Januar bis März (je 4.000 € Bruttogehalt), B mit Monatsgehalt 3.875 € und Vertragsbeginn 16.03. (16 aktive Tage, Gehaltsabrechnung März 2.000,00 € Bruttogehalt, ausgezahlt), C, der das ganze erste Quartal entsendet ist, und D mit Monatsgehalt 3.000 € und Vertragsbeginn 01.03., dessen Gehaltsabrechnung März erstellt ist (3.000,00 € Bruttogehalt), für den aber keine Bankverbindung hinterlegt ist
- Wenn NGHR die Steuermeldung am 10.04. sendet
- Dann enthält sie für das erste Meldequartal A mit Quartalsbruttoeinkommen 12.000,00 €, B mit 2.000,00 € und D mit 3.000,00 €, nicht C
- Und die fünf Gehaltsabrechnungen von A, B und D haben den Meldestatus „gemeldet“, die drei von C bleiben im Zustand „Entfallen“
- Und die Gehaltsabrechnung von D behält den Zahlungsstatus „offen“, bis ihre Bankverbindung hinterlegt ist

*T17 – Grenzwerttest: Vertragsende mitten im Monat und ESS* (R3.2, R3.13, R4.2, R6.4)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“, Monatsgehalt 6.200 € und Vertragsende 15.10.2026
- Wenn der Gehaltslauf für Oktober stattfindet
- Dann beträgt das Gehalt 3.000,00 € (6.200 € × 15 ÷ 31)
- Und am Zahltag 30.10.2026 legt NGHR keine Gehaltsabrechnung für November an
- Und beim Aufruf der ESS am 30.10.2026 verweigert NGHR den Zugang, weil der User seit dem 16.10.2026 inaktiv ist

*T18 – Negativtest: Negativer Auszahlungsbetrag* (R4.24, R5.8)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt“ und Monatsgehalt 8.799,99 €, Januar bis Oktober durchgehend aktiv (kumuliert 87.999,90 €, kumulierte Einkommensteuer 17.999,98 €) und im November genau ein aktiver Tag
- Wenn der Gehaltslauf für November stattfindet
- Dann beträgt das Gehalt 293,33 €, die Einkommensteuer 73,33 €, der Solidaritätszuschlag 994,03 € (kumulierte Einkommensteuer 18.073,31 €) und der Auszahlungsbetrag −812,16 €
- Und am Zahltag überweist NGHR keinen Auszahlungsbetrag, überweist die SV-Beiträge AV 14,67 € und RV 61,60 € (KV und PV sind 0,00 €, BBM erreicht), informiert die Lohnbuchhaltung, und der Zahlungsstatus der Gehaltsabrechnung ist „ausgezahlt“

*T19 – Negativtest: Zurückgestellte Gehaltsabrechnung* (R3.7, R3.10, R3.12)

- Gegeben ein Mitarbeiter mit Gehaltsklasse „Gehalt und Bonus“, für den am Tag des Gehaltslaufs für Mai (20.05.) kein Bonussatz für das Vorjahr erfasst ist
- Wenn der Gehaltslauf für Mai stattfindet
- Dann bleibt seine Gehaltsabrechnung für Mai im Zustand „Angelegt“, die Lohnbuchhaltung ist informiert, und alle übrigen Gehaltsabrechnungen für Mai sind im Zustand „Erstellt“
- Wenn die Lohnbuchhaltung den Bonussatz am 03.06. erfasst
- Dann findet spätestens am 04.06. ein weiterer Gehaltslauf statt, der nur seine Gehaltsabrechnung für Mai erstellt, und NGHR überweist unmittelbar nach der Erstellung
- Und der Gehaltslauf für Juni erstellt seine Gehaltsabrechnung für Juni erst, nachdem die für Mai erstellt ist
