= Abarbeiten: Zahlung und Meldungen

Nach dem Erstellen erfährt das ERP-System sofort die Steuern als Lohnbuchungen. Am Zahltag überweist NGHR selbst Auszahlungsbetrag und SV-Beiträge; Steuern zieht das Betriebsfinanzamt ein. Alle Lohnbuchungen eines Tages meldet NGHR gesammelt und lückenlos an das ERP-System. Jedes Quartal meldet NGHR die Quartalsbruttoeinkommen per Elster.

== Nach der Erstellung: Lohnbuchungen zu den Steuern

*R5.1* Folgendes gilt, sobald eine Gehaltsabrechnung im Zustand „Erstellt“ ist: Für jede ihrer Steuerpositionen über 0 € existiert eine Lohnbuchung mit diesen Angaben: Buchungsdatum = Tag des Gehaltslaufs, Betrag der Steuerposition, Personalnummer, Kostenstelle der Gehaltsabrechnung, Zweck = Steuerart, Abrechnungsmonat und Steueridentifikationsnummer des Mitarbeiters. \
_Beleg: KK „mit jeder Erstellung einer Gehaltsabrechnung über die Steuern … informiert werden, auch wenn diese noch nicht vom Fiskus eingezogen wurden“; „Aufpassen muss man … bei den Steuern: die fließen zwar immer nur quartalsweise ab, aber wir tun so als ob diese monatlich abfließen“ (B); Kostenstelle: PP „pro Kostenstelle aufgegliedert nach ausgezahltem Gehalt, Steuern und Sozialabgaben“ (B); Steueridentifikationsnummer: KK gleicht „anhand der vom Finanzamt bereitgestellten Steueridentifikationsnummer des Mitarbeiters ab, was das Personalsystem gemeldet hat“ (A) → A18, O19._

== Auszahlung am Zahltag

*R5.2* Der Zahltag eines Abrechnungsmonats ist der letzte Wochentag dieses Abrechnungsmonats. \
_Beleg: WW „wie alle Gehaltszahlungen am letzten Wochentag eines Monats ausgezahlt“ (B) → A9, O14._

*R5.3* NGHR überweist am Zahltag den Auszahlungsbetrag über 0 € jeder Gehaltsabrechnung im Zustand „Erstellt“ an die Bankverbindung des Mitarbeiters. Ist die Gehaltsabrechnung erst nach dem Zahltag erstellt, überweist NGHR unmittelbar nach der Erstellung. Buchungsdatum ist der Tag der Überweisung. \
_Beleg: KK „Überweisungen der Gehälter an die Mitarbeiter“ (B); WW „am letzten Wochentag eines Monats ausgezahlt“ (B); Bankverbindung LL, HH (A); Buchungsdatum KK „tagesaktuell“ (A)._

*R5.4* NGHR überweist am Zahltag jeden SV-Beitrag über 0 € einer Gehaltsabrechnung im Zustand „Erstellt“ an die Krankenkasse des Mitarbeiters. Ist die Gehaltsabrechnung erst nach dem Zahltag erstellt, überweist NGHR unmittelbar nach der Erstellung. Buchungsdatum ist der Tag der Überweisung. \
_Beleg: KK, PZ führt „die Überweisungen der Gehälter an die Mitarbeiter und die Sozialabgaben selbst“ durch, NGHR übernimmt das (B); Empfänger und Termin (A) → A11, O20._

*R5.5* Für die Überweisungen einer Gehaltsabrechnung sind folgende Empfängerdaten nötig:

1. die Bankverbindung, sofern der Auszahlungsbetrag über 0 € beträgt,
2. die Krankenkasse, sofern mindestens ein SV-Beitrag über 0 € beträgt.

Maßgeblich sind die Empfängerdaten, die zum Zeitpunkt der Überweisung in NGHR hinterlegt sind. Fehlt eine nötige Empfängerangabe, überweist NGHR den davon betroffenen Betrag nicht, und die Lohnbuchhaltung ist über die Gehaltsabrechnung informiert. Sobald die fehlende Angabe hinterlegt ist, überweist NGHR den ausstehenden Betrag unmittelbar. \
_Erläuterung: Die übrigen Überweisungen derselben Gehaltsabrechnung löst NGHR termingerecht aus. Ihr Zahlungsstatus bleibt bis zur letzten ausstehenden Überweisung „offen“ (R5.8); ihr Meldestatus ist davon unabhängig (R5.13)._ \
_Beleg: HH, der Mitarbeiter pflegt „Adresse, Bankverbindung, Krankenkasse“ selbst (B); Verhalten bei fehlenden Daten (A) → A16._

*R5.6* NGHR überweist keine Steuern. Das Betriebsfinanzamt zieht sie auf Grundlage der Steuermeldung per Lastschrift bei der Sonnenschein AG ein. \
_Beleg: KK „dann zieht das Betriebsfinanzamt die Steuern via Bankeinzug von uns ein“ (B)._

*R5.7* NGHR löst alle Überweisungen über die Anbindung an das Bankkonto der Hausbank aus. \
_Erläuterung: Solange das ERP-System diese Aufgabe nicht übernommen hat (BB, KK) → O6._ \
_Beleg: KK „muss NGHR die Überweisungen selbst auslösen“ (B); BB „direkten Anbindung von NGHR an das Bankkonto“ (B) → O6._

*R5.8* Sobald NGHR jede nach R5.3 und R5.4 geschuldete Überweisung einer Gehaltsabrechnung ausgelöst hat, ist ihr Zahlungsstatus „ausgezahlt“. Ist für eine Gehaltsabrechnung keine Überweisung geschuldet, ist ihr Zahlungsstatus am Zahltag „ausgezahlt“; ist sie erst nach dem Zahltag erstellt, mit der Erstellung. \
_Erläuterung: Für eine Gehaltsabrechnung mit negativem Auszahlungsbetrag (R4.24) sind nur die SV-Beiträge über 0 € geschuldet._ \
_Beleg: KK, WW (A)._

*R5.9* Folgendes gilt, sobald der Zahlungsstatus einer Gehaltsabrechnung „ausgezahlt“ ist:

1. Für jeden ihrer Zahlungsabflüsse existiert eine Lohnbuchung (R5.10).
2. Die Gehaltsabrechnung ist für den Mitarbeiter in der ESS abrufbar (R6.3).

_Beleg: KK, BB (B)._

== Lohnbuchungen zu den Zahlungsabflüssen

*R5.10* Die Lohnbuchung eines Zahlungsabflusses hat diese Angaben: Buchungsdatum = Tag der Überweisung, Betrag des Zahlungsabflusses, Personalnummer, Kostenstelle der Gehaltsabrechnung, Zweck = „ausgezahltes Gehalt“ oder die Versicherungsart des SV-Beitrags, Abrechnungsmonat. \
_Beleg: KK „für jeden Zahlungsabfluss das Buchungsdatum, der Betrag, der Mitarbeiter, die Kostenstelle, den Zweck und den Monat“; „pro Mitarbeiter aufgeschlüsselt nach ausgezahltem Gehalt und jedem der Sozialversicherungsbeitragsarten“ (B)._

*R5.11* NGHR meldet dem ERP-System alle Lohnbuchungen eines Tages gesammelt in einer Meldung, am selben Tag und höchstens einmal pro Tag. Jede Lohnbuchung ist dem ERP-System genau einmal gemeldet. \
_Beleg: KK „tagesaktuell über jeden Geldabfluss“, „garantiert … keine Information verloren“, „maximal ein Mal pro Tag alle zusammen“ (B); Steuern in derselben Meldung (A) → A18._

== Steuermeldung an das Betriebsfinanzamt

*R5.12* NGHR sendet für jedes Meldequartal eine Steuermeldung per Elster an das Betriebsfinanzamt, spätestens am 10. Tag nach Quartalsende: 10.04., 10.07., 10.10. und 10.01. \
_Beleg: KK „spätestens am 10. Tag nach Quartalsende. Also: 10.04. für das erste Quartal, 10.07. für das zweite Quartal usw.“ (B); 10.10. und 10.01. aus „usw.“ (A)._

*R5.13* Eine Steuermeldung berücksichtigt jede Gehaltsabrechnung im Zustand „Erstellt“ mit dem Meldestatus „ungemeldet“, deren Meldequartal abgeschlossen ist. Sie weist je Mitarbeiter und je Meldequartal der berücksichtigten Gehaltsabrechnungen die Steueridentifikationsnummer und das Quartalsbruttoeinkommen aus. \
_Erläuterung: Der Zahlungsstatus spielt keine Rolle, denn gemeldet wird das Bruttoeinkommen (KK), nicht die Überweisung. Steuer und Lohnbuchung entstehen bereits mit der Erstellung (R5.1). Eine Gehaltsabrechnung, die erst nach dem Meldetermin erstellt ist (etwa nach R3.12 zurückgestellt), wird mit der nächsten Steuermeldung unter ihrem eigenen Meldequartal nachgemeldet._ \
_Beleg: KK „Das Bruttoeinkommen wird für jeden Mitarbeiter … einmal pro Quartal elektronisch per Elster an das Betriebsfinanzamt gemeldet“ (B); Meldung unabhängig von der Auszahlung, abgeschlossenes Meldequartal, Steueridentifikationsnummer und Nachmeldung (A) → O1, O19._

*R5.14* Sobald eine Steuermeldung gesendet ist, ist der Meldestatus jeder darin berücksichtigten Gehaltsabrechnung „gemeldet“. \
_Beleg: KK (A)._
