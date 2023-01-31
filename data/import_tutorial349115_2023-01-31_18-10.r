# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/tutorial349115/?act=qixBtgTAx1lvCci9J7Asmjov"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","A301_01","A301_02","A301_03",
    "A301_04","A301_05","A301_06","A301_07","A301_08","A301_09","A301_10","A401_01",
    "A401_02","A401_03","A401_04","A401_05","A401_06","A401_07","A401_08","TIME001",
    "TIME002","TIME003","TIME004","TIME005","TIME006","TIME_SUM","MAILSENT",
    "LASTDATA","FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", A301_01="numeric", A301_02="numeric",
    A301_03="numeric", A301_04="numeric", A301_05="numeric", A301_06="numeric",
    A301_07="numeric", A301_08="numeric", A301_09="numeric", A301_10="numeric",
    A401_01="numeric", A401_02="numeric", A401_03="numeric", A401_04="numeric",
    A401_05="numeric", A401_06="numeric", A401_07="numeric", A401_08="numeric",
    TIME001="integer", TIME002="integer", TIME003="integer", TIME004="integer",
    TIME005="integer", TIME006="integer", TIME_SUM="integer",
    MAILSENT="POSIXct", LASTDATA="POSIXct", FINISHED="logical",
    Q_VIEWER="logical", LASTPAGE="numeric", MAXPAGE="numeric"
  ),
  skip = 1,
  check.names = TRUE, fill = TRUE,
  strip.white = FALSE, blank.lines.skip = TRUE,
  comment.char = "",
  na.strings = ""
)

rm(ds_file)

attr(ds, "project") = "tutorial349115"
attr(ds, "description") = "UX-Fragebogen 01 - 01/2023"
attr(ds, "date") = "2023-01-31 18:10:53"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
attr(ds$A301_01,"1") = "trifft gar nicht zu"
attr(ds$A301_01,"5") = "trifft voll zu"
attr(ds$A301_02,"1") = "trifft voll zu"
attr(ds$A301_02,"5") = "trifft gar nicht zu"
attr(ds$A301_03,"1") = "trifft gar nicht zu"
attr(ds$A301_03,"5") = "trifft voll zu"
attr(ds$A301_04,"1") = "trifft voll zu"
attr(ds$A301_04,"5") = "trifft gar nicht zu"
attr(ds$A301_05,"1") = "trifft gar nicht zu"
attr(ds$A301_05,"5") = "trifft voll zu"
attr(ds$A301_06,"1") = "trifft voll zu"
attr(ds$A301_06,"5") = "trifft gar nicht zu"
attr(ds$A301_07,"1") = "trifft gar nicht zu"
attr(ds$A301_07,"5") = "trifft voll zu"
attr(ds$A301_08,"1") = "trifft voll zu"
attr(ds$A301_08,"5") = "trifft gar nicht zu"
attr(ds$A301_09,"1") = "trifft gar nicht zu"
attr(ds$A301_09,"5") = "trifft voll zu"
attr(ds$A301_10,"1") = "trifft voll zu"
attr(ds$A301_10,"5") = "trifft gar nicht zu"
attr(ds$A401_01,"1") = "behindernd"
attr(ds$A401_01,"7") = "unterstützend"
attr(ds$A401_02,"1") = "kompliziert"
attr(ds$A401_02,"7") = "einfach"
attr(ds$A401_03,"1") = "ineffizient"
attr(ds$A401_03,"7") = "effizient"
attr(ds$A401_04,"1") = "verwirrend"
attr(ds$A401_04,"7") = "übersichtlich"
attr(ds$A401_05,"1") = "langweilig"
attr(ds$A401_05,"7") = "spannend"
attr(ds$A401_06,"1") = "uninterresant"
attr(ds$A401_06,"7") = "interessant"
attr(ds$A401_07,"1") = "konventionell"
attr(ds$A401_07,"7") = "originell"
attr(ds$A401_08,"1") = "herkömmlich"
attr(ds$A401_08,"7") = "neuartig"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$A301_01) = "System Usability Scale (SUS): Ich denke, ich würde dieses Programm gerne häufiger benutzen."
comment(ds$A301_02) = "System Usability Scale (SUS): Ich finde das Programm unnötig komplex. (umgepolt)"
comment(ds$A301_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen."
comment(ds$A301_04) = "System Usability Scale (SUS): Ich denke, ich würde die Unterstützung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$A301_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert."
comment(ds$A301_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$A301_07) = "System Usability Scale (SUS): Ich könnte mir vorstellen, dass die meisten Leute sehr schnell lernen würden mit diesem Programm umzugehen."
comment(ds$A301_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerfällig im Gebrauch. (umgepolt)"
comment(ds$A301_09) = "System Usability Scale (SUS): Ich fühlte mich sehr sicher bei der Benutzung des Programmes."
comment(ds$A301_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$A401_01) = "UEQS-Skala: behindernd/unterstützend"
comment(ds$A401_02) = "UEQS-Skala: kompliziert/einfach"
comment(ds$A401_03) = "UEQS-Skala: ineffizient/effizient"
comment(ds$A401_04) = "UEQS-Skala: verwirrend/übersichtlich"
comment(ds$A401_05) = "UEQS-Skala: langweilig/spannend"
comment(ds$A401_06) = "UEQS-Skala: uninterresant/interessant"
comment(ds$A401_07) = "UEQS-Skala: konventionell/originell"
comment(ds$A401_08) = "UEQS-Skala: herkömmlich/neuartig"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
comment(ds$TIME005) = "Verweildauer Seite 5"
comment(ds$TIME006) = "Verweildauer Seite 6"
comment(ds$TIME_SUM) = "Verweildauer gesamt (ohne Ausreißer)"
comment(ds$MAILSENT) = "Versandzeitpunkt der Einladungsmail (nur für nicht-anonyme Adressaten)"
comment(ds$LASTDATA) = "Zeitpunkt als der Datensatz das letzte mal geändert wurde"
comment(ds$FINISHED) = "Wurde die Befragung abgeschlossen (letzte Seite erreicht)?"
comment(ds$Q_VIEWER) = "Hat der Teilnehmer den Fragebogen nur angesehen, ohne die Pflichtfragen zu beantworten?"
comment(ds$LASTPAGE) = "Seite, die der Teilnehmer zuletzt bearbeitet hat"
comment(ds$MAXPAGE) = "Letzte Seite, die im Fragebogen bearbeitet wurde"



# Assure that the comments are retained in subsets
as.data.frame.avector = as.data.frame.vector
`[.avector` <- function(x,i,...) {
  r <- NextMethod("[")
  mostattributes(r) <- attributes(x)
  r
}
ds_tmp = data.frame(
  lapply(ds, function(x) {
    structure( x, class = c("avector", class(x) ) )
  } )
)
mostattributes(ds_tmp) = attributes(ds)
ds = ds_tmp
rm(ds_tmp)

