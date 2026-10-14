= Erstellen: Anlegen und Gehaltslauf

Für jeden Abrechnungsmonat, in dem ein Arbeitsverhältnis besteht, gibt es genau eine Gehaltsabrechnung. NGHR legt sie an und erstellt sie im Gehaltslauf zwischen dem 16. und dem Tag vor dem Zahltag. Gehalt erhält nur, wer im Abrechnungsmonat mindestens einen aktiven Tag hat.

== Anlegen

*R3.1* Folgendes gilt, sobald die Einstellung eines Mitarbeiters mit Arbeitsvertrag in Deutschland erfolgt ist: Seine Gehaltsabrechnung für den Abrechnungsmonat seines Vertragsbeginns ist im Zustand „Angelegt“. \
_Beleg: SCH „die Gehaltsabrechnung für Deutschland“ (B); Anlegen bei Einstellung (A) → A14, O8._

*R3.2* Für jeden Abrechnungsmonat, in dem das Arbeitsverhältnis eines Mitarbeiters an mindestens einem Kalendertag besteht, ist spätestens am Zahltag des Vormonats eine Gehaltsabrechnung im Zustand „Angelegt“. Erfolgt die Einstellung oder eine Änderung von Vertragsbeginn oder Vertragsende erst nach diesem Zahltag, ist sie mit dieser Einstellung oder Änderung im Zustand „Angelegt“. \
_Erläuterung: Eine bereits angelegte Gehaltsabrechnung für einen Abrechnungsmonat, der nach der Änderung außerhalb des Arbeitsverhältnisses liegt, entfällt im Gehaltslauf (R3.11)._ \
_Beleg: WW, monatliche Zahlung (A) → A14._

*R3.3* Für jeden Mitarbeiter existiert je Abrechnungsmonat höchstens eine Gehaltsabrechnung. \
_Beleg: WW, eine monatliche Zahlung (A)._

*R3.4* Jede Gehaltsabrechnung gehört zu genau einem Mitarbeiter. \
_Erläuterung: Stellt die Sonnenschein AG dieselbe Person erneut ein, ist sie ein neuer Mitarbeiter (Begriff Personalnummer); ihre früheren Gehaltsabrechnungen bleiben beim früheren Mitarbeiter._ \
_Beleg: LL „nie … mit derselben Personalnummer zu reaktivieren“, „gibt es eine neue Personalnummer“ (B)._

*R3.5* NGHR legt keine Gehaltsabrechnungen für Abrechnungsmonate vor seiner Einführung an. Diese verbleiben in PZ. \
_Beleg: SCH „lassen wir die alten Gehaltsabrechnungen in PZ“ (B) → O1._

== Gehaltslauf

*R3.6* NGHR führt für jeden Abrechnungsmonat einen Gehaltslauf durch, frühestens am Tag nach dem Ende des Provisionszeitraums und spätestens am Tag vor dem Zahltag dieses Abrechnungsmonats. \
_Erläuterung: Also frühestens am 16. des Abrechnungsmonats. Ob NGHR den Gehaltslauf zeitgesteuert startet oder die Lohnbuchhaltung ihn auslöst → O9._ \
_Beleg: RR „vor jedem Gehaltslauf“ (B); SCH „Das muss jeden Monat funktionieren“ (B); WW (Provisionszeitraum bis zum 15.), RR „immer pünktlich“ (A) → A4, O9._

*R3.7* Folgendes gilt, sobald nach dem Gehaltslauf eines Abrechnungsmonats eine Gehaltsabrechnung dieses Abrechnungsmonats im Zustand „Angelegt“ ist, die nach R3.10 zu erstellen oder nach R3.11 als entfallen zu kennzeichnen ist: NGHR führt spätestens am folgenden Tag einen weiteren Gehaltslauf durch, der ausschließlich Gehaltsabrechnungen im Zustand „Angelegt“ verarbeitet. \
_Erläuterung: Weitere Gehaltsläufe decken die Einstellung nach dem ersten Gehaltslauf (LL: Vertragsabschluss am ersten Arbeitstag), eine rückwirkende Änderung des Vertragsbeginns, den nachträglich erfassten Bonussatz und die nachträglich zugeordnete Kostenstelle ab._ \
_Beleg: SCH „Das muss jeden Monat funktionieren“, RR „pünktlich und korrekt“ (A) → O8._

*R3.8* Die Provision einer Gehaltsabrechnung beruht auf den Kundenverträgen, die das CRM-System zu Beginn des Gehaltslaufs mit Abschlussdatum, Vertragsvolumen und abschließendem Vertriebsmitarbeiter führt. NGHR übernimmt sie über die Vertragsschnittstelle des CRM-Systems. \
_Beleg: RR „das CRM-System hat schon eine Schnittstelle für die Verträge … NGHR diese nur vor jedem Gehaltslauf aufrufen müsste“ (B); Inhalt nach WW (A) → O4, O10._

*R3.9* Jede Verarbeitung, die wegen eines Ausfalls von NGHR nicht an ihrem Termin stattgefunden hat (Anlegen, Gehaltslauf, Überweisung, Lohnbuchung, Steuermeldung), findet unmittelbar nach der Wiederherstellung von NGHR statt. \
_Beleg: SK F6, Zielbild NGHR „Ungeplanter Ausfall nicht mehr als ein Arbeitstag & Gehaltsabrechnung muss ggf. nachgeholt werden“ (B); Verallgemeinerung auf alle Verarbeitungen (A)._

== Erstellt oder entfallen

*R3.10* Im Gehaltslauf erstellt NGHR jede angelegte Gehaltsabrechnung, für die alle drei Bedingungen erfüllt sind:

1. Der Mitarbeiter hat im Abrechnungsmonat mindestens einen aktiven Tag.
2. Alle früheren Gehaltsabrechnungen sind im Zustand „Erstellt“ oder „Entfallen“.
3. Die Eingangsdaten liegen vor: die Kostenstelle (R3.18) und, bei Gehaltsklasse „Gehalt und Bonus“ im Abrechnungsmonat Mai, der Bonussatz des vorangegangenen Bonusjahres (R4.10).

Danach ist die Gehaltsabrechnung im Zustand „Erstellt“ mit dem Zahlungsstatus „offen“ und dem Meldestatus „ungemeldet“. \
_Erläuterung: Bedingung 2 stellt sicher, dass kumulierte Werte (R4.14, R4.20) vollständig sind. Frühere Gehaltsabrechnungen sind nur die desselben Kalenderjahres (Begriff in 1.4). Eine noch angelegte Gehaltsabrechnung für Dezember hält die für Januar des Folgejahres daher nicht zurück, denn die kumulierten Werte beginnen im Januar neu (R4.14, R4.20)._ \
_Beleg: RR „aktive Mitarbeiter bekommen in Deutschland Gehalt“ (B); WW „Wir bezahlen unsere aktiven Mitarbeiter“ (B); Bedingungen 2 und 3 (A)._

*R3.11* Die angelegte Gehaltsabrechnung eines Mitarbeiters ohne aktiven Tag im Abrechnungsmonat ist nach dem Gehaltslauf im Zustand „Entfallen“. \
_Erläuterung: Das betrifft entsendete Mitarbeiter (die ausländische Tochtergesellschaft zahlt ihr Gehalt, RR) und inaktive Mitarbeiter (Sabbatical, Freistellung aus familiären Gründen, längere Krankheit, LL)._ \
_Beleg: RR „Bei entsendeten Mitarbeitern übernimmt unsere Tochtergesellschaft im Ausland die Gehaltszahlung“ (B); LL (inaktiv) (A)._

*R3.12* Folgendes gilt, sobald im Gehaltslauf für eine angelegte Gehaltsabrechnung Bedingung 1 nach R3.10 erfüllt, aber Bedingung 2 oder 3 nicht erfüllt ist: Die Gehaltsabrechnung bleibt im Zustand „Angelegt“, und die Lohnbuchhaltung ist über sie und die fehlende Bedingung informiert. \
_Erläuterung (Folgerung aus R3.10 und R3.7): Alle übrigen Gehaltsabrechnungen erstellt NGHR im selben Gehaltslauf; ein weiterer Gehaltslauf erstellt die zurückgestellte, sobald die Bedingung erfüllt ist. Die Folgemonate desselben Mitarbeiters warten bis dahin (Bedingung 2)._ \
_Beleg: RR „immer pünktlich und korrekt“ (A) → A6, O21._

*R3.13* An Kalendertagen außerhalb seines Arbeitsverhältnisses ist der Mitarbeiterstatus eines Mitarbeiters nicht „aktiv“. \
_Erläuterung: Eine Kündigung und ein Auflösungsvertrag ändern den Mitarbeiterstatus nicht; bis zum Vertragsende erstellt NGHR die Gehaltsabrechnungen nach R3.10 (LL: „bleibt der Mitarbeiter bis zum Vertragsende in seinem aktuellen Status. Damit wird ggf. weiter Gehalt bezahlt“)._ \
_Beleg: LL „Mit dem Tag des Arbeitsbeginns, wird das Arbeitsverhältnis aktiv“, „Am Vertragsende ändert sich der Status des Mitarbeiters“ (B) → A15._

*R3.14* Das Sterbedatum eines Mitarbeiters gilt als sein Vertragsende, sofern kein früheres Vertragsende festgelegt ist. \
_Erläuterung (Folgerung aus R3.13 und R3.10): Die Gehaltsabrechnung des Sterbemonats erstellt NGHR mit den aktiven Tagen bis einschließlich Sterbedatum._ \
_Beleg: LL „Was leider auch jederzeit passieren kann, ist das ein Mitarbeiter stirbt. Das müssen wir wissen“ (B); Gleichstellung mit dem Vertragsende (A) → A15, O15._

== Eingangsdaten und Kopfdaten

*R3.15* Jeder Mitarbeiter ist genau einer Gehaltsklasse zugeordnet. \
_Beleg: WW „Jeder Mitarbeiter ist einer Gehaltsklasse zugeordnet“ (B)._

*R3.16* Jeder Manager ist der Gehaltsklasse „Gehalt und Bonus“ zugeordnet. \
_Erläuterung: Auch ein Manager, der im Vertrieb arbeitet (WW). Er ist damit kein Vertriebsmitarbeiter und erhält keine Provision. NGHR berechnet nach der Gehaltsklasse der Gehaltsabrechnung (R3.17), nicht nach dem Manager-Kennzeichen → O11._ \
_Beleg: WW „Das gilt für das Management, auch wenn ein Manager im Vertrieb arbeitet“ (B)._

*R3.17* Gehaltsklasse und Monatsgehalt einer Gehaltsabrechnung sind die Gehaltsdaten des Mitarbeiters zu Beginn des Gehaltslaufs, der sie erstellt. Ebenso maßgeblich ist der zu Beginn dieses Gehaltslaufs in NGHR hinterlegte Mitarbeiterstatus und die hinterlegte Kostenstelle für alle Kalendertage des Abrechnungsmonats, auch für die noch folgenden. \
_Erläuterung: Der Gehaltslauf findet vor dem Monatsende statt (R3.6); Änderungen nach dem Gehaltslauf → O13._ \
_Beleg: WW „für die Pflege der Gehaltsdaten der Mitarbeiter zuständig. Das sind Gehaltsklasse und monatliches Bruttogehalt“ (B); Stichtag (A) → A2, O13._

*R3.18* Die Kostenstelle einer Gehaltsabrechnung ist die Kostenstelle, der der Mitarbeiter am letzten aktiven Tag des Abrechnungsmonats zugeordnet ist. NGHR übernimmt die Zuordnung aus dem ERP-System. \
_Erläuterung: Das Controlling ordnet jeden Mitarbeiter tagesgenau einer Kostenstelle zu (PP); die Pflege ist nicht Gegenstand dieses Dokuments (0.2)._ \
_Beleg: PP „da wir die aktiven Mitarbeiter den Kostenstellen tagesgenau zuordnen müssen“, „melden dann die Kostenstellen per Schnittstelle wieder an das Personalsystem zurück“ (B); Stichtag (A) → A3, O12, O21._

*R3.19* Jede erstellte Gehaltsabrechnung weist neben ihren Gehaltspositionen aus: Personalnummer des Mitarbeiters, Abrechnungsmonat, Zahltag, Tag des Gehaltslaufs, Gehaltsklasse, Monatsgehalt, Anzahl der aktiven Tage im Abrechnungsmonat und Kostenstelle. \
_Beleg: KK „der Mitarbeiter, die Kostenstelle … den Monat“ (B); WW „Gehaltsklasse und monatliches Bruttogehalt“ (B); aktive Tage und Tag des Gehaltslaufs, benötigt für R4.2 und R3.17 (A)._

*R3.20* Der Inhalt einer Gehaltsabrechnung im Zustand „Erstellt“ ändert sich nicht. \
_Beleg: – (A) → A12, O13._
