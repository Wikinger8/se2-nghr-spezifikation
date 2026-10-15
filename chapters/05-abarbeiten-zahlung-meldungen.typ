= Abarbeiten: Zahlung und Meldungen

== Lohnbuchungen zu den Steuern

*R5.1* Folgendes gilt, sobald eine Gehaltsabrechnung im Zustand „Erstellt“ ist: Für jede ihrer Steuerpositionen über 0 € existiert eine Lohnbuchung mit Buchungsdatum = Tag des Gehaltslaufs, Betrag, Personalnummer, Kostenstelle der Gehaltsabrechnung, Zweck = Steuerart, Abrechnungsmonat und Steuer-ID. [KK, PP → A11, A19]

== Auszahlung

*R5.2* Der Zahltag eines Abrechnungsmonats ist der letzte Wochentag dieses Abrechnungsmonats. [WW → A9, O2] \
_Erläuterung: Oktober 2026: 31.10. ist ein Samstag, Zahltag ist Freitag, 30.10.2026._

*R5.3* NGHR überweist am Zahltag für jede erstellte Gehaltsabrechnung den Auszahlungsbetrag an die Bankverbindung des Mitarbeiters, sofern der Auszahlungsbetrag über 0 € liegt. [KK, WW, HH → O10, O12]

*R5.4* NGHR überweist am Zahltag für jede erstellte Gehaltsabrechnung jeden ihrer SV-Beiträge über 0 €. [KK → A15, O11]

*R5.5* NGHR löst alle Überweisungen über die direkte Anbindung an das Konto bei der Hausbank aus. [KK, BB]

*R5.6* NGHR überweist keine Steuern. [KK] \
_Erläuterung: Das Betriebsfinanzamt zieht die Steuern auf Grundlage der Steuermeldungen per Lastschrift ein._

*R5.7* Am Zahltag ihres Abrechnungsmonats wechselt der Zahlungsstatus einer erstellten Gehaltsabrechnung auf „ausgezahlt“, sobald NGHR alle Überweisungen nach R5.3 und R5.4 für sie ausgelöst hat. [KK → O12]

== Lohnbuchungen zu den Zahlungsabflüssen und Meldung an das ERP-System

*R5.8* Für jeden Zahlungsabfluss existiert eine Lohnbuchung mit Buchungsdatum = Tag der Überweisung, Betrag, Personalnummer, Kostenstelle der Gehaltsabrechnung, Zweck = „ausgezahltes Gehalt“ oder die Versicherungsart des SV-Beitrags, und Abrechnungsmonat. [KK, PP]

*R5.9* NGHR meldet dem ERP-System alle Lohnbuchungen mit demselben Buchungsdatum gemeinsam in genau einer Meldung an diesem Buchungsdatum. [KK → A11]

*R5.11* Jede Lohnbuchung ist dem ERP-System genau einmal gemeldet. [KK]

== Steuermeldung an das Betriebsfinanzamt

*R5.12* NGHR sendet für jedes Meldequartal spätestens am 10. Tag nach Quartalsende (10.04., 10.07., 10.10., 10.01.) eine Steuermeldung per Elster an das Betriebsfinanzamt. [KK]

*R5.13* Eine Steuermeldung berücksichtigt jede erstellte Gehaltsabrechnung mit Meldestatus „ungemeldet“, deren Meldequartal abgeschlossen ist, unabhängig vom Zahlungsstatus. [KK → A11]

*R5.14* Eine Steuermeldung weist je Mitarbeiter und Meldequartal die Steuer-ID und das Quartalsbruttoeinkommen aus. [KK → A18, O22]

*R5.15* Sobald eine Steuermeldung gesendet ist, ist der Meldestatus jeder darin berücksichtigten Gehaltsabrechnung „gemeldet“. [KK]
