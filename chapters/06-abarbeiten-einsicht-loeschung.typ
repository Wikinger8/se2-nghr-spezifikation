= Abarbeiten: Einsicht und Löschung

Gehaltsabrechnungen unterliegen dem Steuergeheimnis. NGHR gewährt Einsicht nur der Lohnbuchhaltung (alle) und dem Mitarbeiter selbst (seine eigenen, ab Auszahlung, in der ESS). Weder der eigene Manager noch das Personalwesen noch das Recruiting sehen eine fremde Gehaltsabrechnung. NGHR sperrt nicht; es löscht Jahre später mit allen Daten des Mitarbeiters.

#page(flipped: true)[
  == Einsicht

  #figure(
    caption: "Einsicht in Gehaltsabrechnungen",
    table(
      columns: (1.6fr, 1fr, 1fr, 1fr, 0.7fr),
      align: (left, center, center, center, left),
      table.header(
        [*Wer*],
        [*Zustand „Erstellt“, Zahlungsstatus „offen“*],
        [*Zustand „Erstellt“, Zahlungsstatus „ausgezahlt“*],
        [*Nach Vertragsende (ehemaliger Mitarbeiter)*],
        [*Regel*],
      ),
      [Mitarbeiter – eigene Gehaltsabrechnungen (ESS)], [–], [✓], [–], [R6.3, R6.4],
      [Mitarbeiter – fremde Gehaltsabrechnungen], [–], [–], [–], [R6.1],
      [Manager – Gehaltsabrechnungen der Mitarbeiter, deren Manager er ist], [–], [–], [–], [R6.7],
      [Lohnbuchhaltung – alle Gehaltsabrechnungen], [✓], [✓], [✓], [R6.2],
      [Personalwesen (ohne Rolle Lohnbuchhaltung)], [–], [–], [–], [R6.5],
      [Recruiting (intern und extern)], [–], [–], [–], [R6.6],
      [Jede andere Person oder Rolle], [–], [–], [–], [R6.1],
    ),
  )
]

Gehaltsabrechnungen in den Zuständen „Angelegt“ und „Entfallen“ enthalten keine Gehaltspositionen und sind nicht Gegenstand der Einsicht.

*R6.1* NGHR gewährt Einsicht in eine Gehaltsabrechnung ausschließlich nach R6.2 und R6.3. Jeder andere Anwender und jede andere Rolle hat keine Einsicht. \
_Erläuterung: R6.5 bis R6.7 benennen die Fälle, die das Fallbeispiel ausdrücklich ausschließt._ \
_Beleg: II „dass die Gehaltsdaten, Gehaltsabrechnungen und andere personenbezogene Daten von möglichst wenigen Personen eingesehen werden können“; „Außerdem gibt es in Deutschland das Steuergeheimnis“ (B)._

*R6.2* NGHR gewährt Anwendern mit der Rolle Lohnbuchhaltung Einsicht in die Gehaltsabrechnungen aller Mitarbeiter ab dem Zustand „Erstellt“. \
_Erläuterung: Eingeschlossen sind die Gehaltsabrechnungen ehemaliger Mitarbeiter (Begriff Mitarbeiter)._ \
_Beleg: II „Die Lohnbuchhaltung darf meine Gehaltsdaten sehen und die Gehaltsabrechnungen“ (B); ab Zustand „Erstellt“ (A)._

*R6.3* NGHR gewährt einem Mitarbeiter in der ESS Einsicht ausschließlich in seine eigenen Gehaltsabrechnungen mit dem Zahlungsstatus „ausgezahlt“. \
_Erläuterung: Regulär also ab dem Zahltag (BB). Ist eine Gehaltsabrechnung am Zahltag nicht ausgezahlt, etwa weil die Bankverbindung fehlt (R5.5) oder weil sie erst nach dem Zahltag erstellt ist, ist sie erst ab ihrer Auszahlung abrufbar → A19._ \
_Beleg: BB „ihre Gehaltsabrechnungen ab dem Zahltag abrufen“ (B); II „So gehen mich die Daten meines Kollegen nichts an“ (B); RR „alle Mitarbeiter jederzeit die Möglichkeit haben, ihre Gehaltsabrechnungen abzurufen“ (B); Zahlungsstatus statt Datum (A) → A19._

*R6.4* Der Zugang zur ESS setzt einen aktiven User voraus. Der User eines Mitarbeiters ist von seinem Vertragsbeginn bis zu seinem Vertragsende aktiv. \
_Erläuterung: Ehemalige Mitarbeiter sehen ihre Gehaltsabrechnungen daher nicht in der ESS. Das widerspricht RR („jederzeit“, „Jahre später ihre Abrechnungen haben wollen“) → O7._ \
_Beleg: BB „Mitarbeiter, die einen aktiven User haben“, „bei Vertragsbeginn aktivieren und bei Vertragsende deaktivieren“ (B) → O7._

*R6.5* NGHR gewährt Anwendern mit der Rolle Personalwesen keine Einsicht in Gehaltsabrechnungen, sofern sie nicht zugleich die Rolle Lohnbuchhaltung haben. \
_Beleg: II „Letzteres hat Einblick in alle anderen Personaldaten, außer Gehaltsdaten und Gehaltsabrechnung“ (B); HH „sollen auch die Kolleginnen und Kollegen von der Lohnbuchhaltung die Mitarbeiterdaten pflegen können“ (B)._

*R6.6* NGHR gewährt Anwendern mit der Rolle Recruiting keine Einsicht in Gehaltsabrechnungen. \
_Beleg: HH „darf keinen Zugriff auf Mitarbeiterdaten haben mit einer Ausnahme: … neu anlegen“ (B); II (B)._

*R6.7* NGHR gewährt einem Manager keine Einsicht in die Gehaltsabrechnungen der Mitarbeiter, deren Manager er ist. \
_Erläuterung: Seine eigenen Gehaltsabrechnungen sieht er nach R6.3._ \
_Beleg: II „Aber die Gehaltsabrechnung geht den Manager nichts an … Daher darf er sie nicht sehen“ (B); PP „wer der Manager eines Mitarbeiters ist, das wird in NGHR gepflegt“ (B)._

*R6.8* NGHR bezieht die Rollen Lohnbuchhaltung, Personalwesen und Recruiting aus I&B und pflegt selbst keine Rollen. \
_Beleg: BB „Rollen werden nicht in den einzelnen Anwendungen gepflegt, sondern zentral in I&B“ (B)._

== Aufbewahrung und Löschung

*R6.9* NGHR sperrt Gehaltsabrechnungen nicht. Sie bleiben bis zur Löschung nach 6.1 einsehbar. \
_Beleg: II „Wir haben uns darauf verständigt, dass wir kein Sperren vornehmen“ (B)._

*R6.10* Der Löschzeitpunkt eines Mitarbeiters ist der spätere der beiden folgenden Tage:

1. fünf Jahre nach seinem Sterbedatum,
2. zehn Jahre nach dem Buchungsdatum der letzten Überweisung eines Auszahlungsbetrags an ihn; hat NGHR nie einen Auszahlungsbetrag an ihn überwiesen, zehn Jahre nach seinem Vertragsende.

Ist kein Sterbedatum erfasst, tritt der Löschzeitpunkt nicht ein. Fällt der so bestimmte Tag auf einen 29. Februar eines Jahres ohne diesen Tag, gilt der 1. März. Am Löschzeitpunkt löscht NGHR alle Gehaltsabrechnungen des Mitarbeiters unabhängig von ihrem Zustand zusammen mit allen anderen Daten dieses Mitarbeiters. \
_Beleg: II „zu dem späteren Zeitpunkt von: Fünf Jahre nach dem Ableben, Zehn Jahre nach der letzten Gehaltszahlung“ (B); letzte Gehaltszahlung, Ersatzregel und Schaltjahr (A); kein Sterbedatum erfasst (A) → A13, A20, O2._

*R6.11* Mit der Löschung ist die Gehaltsabrechnung im Zustand „Gelöscht“. Kein Anwendungsfall löst danach noch etwas an ihr aus. \
_Beleg: Endzustand, Kapitel 2 (A)._
