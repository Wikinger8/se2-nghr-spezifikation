// Die Vorlage liegt als Kopie unter dhbw-template/, damit sie fuer dieses
// Dokument angepasst werden kann, ohne das globale Paket zu veraendern.
// Abweichungen von supercharged-dhbw 3.5.0 sind dort mit "ANPASSUNG" markiert.
#import "dhbw-template/lib.typ": *

#show: supercharged-dhbw.with(
  title: "NGHR – Fachspezifikation",
  authors: (
    (name: "Finn Roth", student-id: "2981968", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Nico Diehl", student-id: "6993308", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Felix Fischer", student-id: "6711903", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Ahmad Mouait", student-id: "2673602", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Bünyamin Pollin", student-id: "TODO", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Emanuel Schüssler", student-id: "6611885", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
  ),
  at-university: true,
  city: "Friedrichshafen",
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

// Lange Tabellen muessen ueber Seiten umbrechen duerfen.
#show figure: set block(breakable: true)

// Tabellenbeschriftungen stehen ueber der Tabelle. Das entspricht der ueblichen
// Konvention fuer Tabellen und verhindert, dass die Beschriftung einer Tabelle,
// die genau an der Seitengrenze endet, allein auf der Folgeseite landet.
#show figure.where(kind: table): set figure.caption(position: top)

// Die Quelle nummeriert die Kapitel ab 0 (0 Geltungsbereich ... 8 Annahmen) und
// verweist im Text auf diese Nummern (z. B. "Kapitel 4", "(0.2)", "(1.5)").
// Damit die automatische Nummerierung der Vorlage dieselben Nummern erzeugt,
// startet der Kapitelzaehler bei 0.
#set heading(numbering: (..args) => {
  let n = args.pos()
  numbering("1.1", n.at(0) - 1, ..n.slice(1))
})

Dieses Dokument legt fest, nach welchen fachlichen Regeln NGHR eine Gehaltsabrechnung anlegt, erstellt, auszahlt, meldet und löscht. Ein Projektteam, das die Sonnenschein AG nicht kennt, soll damit die Geschäftslogik implementieren und testen können, ohne weiteres Wissen hinzuzuziehen. Jede Regel nennt ihre Quelle im Fallbeispiel. Wo das Fallbeispiel schweigt, ist die getroffene Entscheidung als Annahme ausgewiesen, nicht stillschweigend ergänzt.

#include "chapters/00-geltungsbereich.typ"
#include "chapters/01-begriffe.typ"
#include "chapters/02-lebenszyklus.typ"
#include "chapters/03-erstellen-anlegen-gehaltslauf.typ"
#include "chapters/04-erstellen-inhalt.typ"
#include "chapters/05-abarbeiten-zahlung-meldungen.typ"
#include "chapters/06-abarbeiten-einsicht-loeschung.typ"
#include "chapters/07-testbeispiele.typ"
#include "chapters/08-annahmen-offene-punkte.typ"
#include "chapters/09-quellen.typ"
