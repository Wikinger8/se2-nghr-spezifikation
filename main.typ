// Die Vorlage liegt als Kopie unter dhbw-template/, damit sie fuer dieses
// Dokument angepasst werden kann, ohne das globale Paket zu veraendern.
// Abweichungen von supercharged-dhbw 3.5.0 sind dort mit "ANPASSUNG" markiert.
#import "dhbw-template/lib.typ": *

#show: supercharged-dhbw.with(
  title: "NGHR – Fachliche Regeln für die Gehaltsabrechnung",
  authors: (
    (name: "Finn Roth", student-id: "2981968", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Nico Diehl", student-id: "6993308", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Felix Fischer", student-id: "6711903", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Ahmad Mouait", student-id: "2673602", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Bünyamin Pollin", student-id: "5807065", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Emanuel Schüssler", student-id: "6611885", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
  ),
  at-university: true,
  city: "Mannheim",
  language: "de",
  date: datetime.today(),
  supervisor: (university: "Oliver Theißen"),
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Mannheim",
  university-short: "DHBW",
  show-confidentiality-statement: false,
  show-declaration-of-authorship: false,
  show-abstract: false,
  // Kein Abkuerzungsverzeichnis, kein Glossar, kein Quellenverzeichnis:
  // Kapitel 1 ist bereits ein vollstaendiges Begriffsverzeichnis, und die
  // Quellen des Fallbeispiels sind nicht bibliografisch zitierbar.
  show-acronyms: false,
  // Der Kapitelname in der Kopfzeile funktioniert wieder, weil lib.typ in
  // dhbw-template/ denselben Offset wie die Nummerierung unten anwendet.
  header: (show-chapter: true),
)

// Tabellenbeschriftungen stehen ueber der Tabelle. Das entspricht der ueblichen
// Konvention fuer Tabellen und verhindert, dass die Beschriftung einer Tabelle,
// die genau an der Seitengrenze endet, allein auf der Folgeseite landet.
#show figure.where(kind: table): set figure.caption(position: top)

// Tabellen, die auf eine Seite passen, bleiben als Ganzes zusammen. Sonst
// bricht Typst sie auch dann um, wenn nur noch die Beschriftung auf die Seite
// passt — die Beschriftung stuende dann allein am Seitenfuss, die Tabelle
// begaenne auf der Folgeseite. Die drei Tabellen, die laenger als eine Seite
// sind (Begriffe, Auslegungen und Annahmen, Offene Punkte), heben die Regel in
// ihrem Kapitel wieder auf; ihre Kopfzeile wiederholt sich auf jeder Seite.
#show figure: set block(breakable: false)

// Im Fliesstext bleibt der Blocksatz der Vorlage. In Tabellenzellen ist er
// schaedlich: Die Spalten sind schmal, der Blocksatz reisst dort Luecken
// zwischen die Woerter. Zellen laufen deshalb auf Flattersatz. Die
// Silbentrennung muss dabei ausdruecklich eingeschaltet bleiben — Typst
// koppelt sie sonst an den Blocksatz, und lange Komposita wie
// "Beitragsbemessungsgrenze" liefen aus ihrer Spalte heraus.
#show table: set par(justify: false, leading: 0.52em)
#show table: set text(hyphenate: true)

// Knapperer Innenabstand in den Zellen. Das Dokument besteht zu einem grossen
// Teil aus Tabellen; der Standardabstand von 5pt oben und unten summiert sich
// ueber rund 150 Zeilen zu mehreren Seiten Leerraum. Die Schriftgroesse in den
// Tabellen bleibt die des Fliesstextes.
#set table(inset: (x: 4.5pt, y: 2.8pt))

// Die Quelle nummeriert die Fachkapitel von 1 (Begriffe) bis 7 (Auslegungen,
// Annahmen und offene Punkte) und verweist im Text auf diese Nummern
// (z. B. "Kapitel 1", "Kapitel 7.1", "Abschnitt 3.4"). "Geltungsbereich und
// Konventionen" steht davor und traegt in der Quelle keine Nummer; das Kapitel
// ist deshalb als unnummerierte Ueberschrift gesetzt. Unnummerierte
// Ueberschriften zaehlen den Kapitelzaehler in Typst nicht hoch, die
// automatische Nummerierung der Vorlage erzeugt also genau die Nummern der
// Quelle. Ein Offset wie in der frueheren Fassung ist nicht mehr noetig.

Dieses Dokument legt fest, nach welchen fachlichen Regeln NGHR eine Gehaltsabrechnung anlegt, erstellt, auszahlt, meldet, zur Einsicht bereitstellt und löscht. Grundlage ist das Fallbeispiel NGHR. Die Spezifikation enthält nur, was das Fallbeispiel nennt. Wo der Wortlaut mehrere Lesarten zulässt, steht die gewählte Auslegung in Kapitel 7; wo eine Festlegung für die Umsetzung nötig ist, die das Fallbeispiel nicht trifft, steht sie dort als Annahme, die der Fachbereich bestätigen muss. Nicht geregelte Fälle stehen in Kapitel 7 als offene Punkte.

#include "chapters/00-geltungsbereich-konventionen.typ"
#include "chapters/01-begriffe.typ"
#include "chapters/02-zustaende.typ"
#include "chapters/03-erstellen-anlegen-gehaltslauf.typ"
#include "chapters/04-erstellen-inhalt.typ"
#include "chapters/05-abarbeiten-zahlung-meldungen.typ"
#include "chapters/06-abarbeiten-einsicht-loeschung.typ"
#include "chapters/07-auslegungen-annahmen-offene-punkte.typ"
