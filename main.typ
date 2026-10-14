// Die Vorlage liegt als Kopie unter dhbw-template/, damit sie fuer dieses
// Dokument angepasst werden kann, ohne das globale Paket zu veraendern.
// Abweichungen von supercharged-dhbw 3.5.0 sind dort mit "ANPASSUNG" markiert.
#import "dhbw-template/lib.typ": *

#show: supercharged-dhbw.with(
  title: "NGHR – Fachspezifikation",
  authors: (
    (name: "Diehl", student-id: "TODO", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Fischer", student-id: "TODO", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Mouait", student-id: "TODO", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Pollin", student-id: "TODO", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Roth", student-id: "TODO", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
    (name: "Schuessler", student-id: "TODO", course: "WWI-25-SEA", course-of-studies: "Wirtschaftsinformatik"),
  ),
  at-university: true,
  city: "Friedrichshafen",
  language: "de",
  date: datetime.today(),
  supervisor: (university: "Oliver Theißen"),
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Ravensburg Campus Friedrichshafen",
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
