# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/EvalPlantyAppUsabUXEng/?act=FNKG8kO2ghWBO8L7t888n8e7"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","TX03","TX05","TX07",
    "UX01_01","UX01_02","UX01_03","UX01_04","UX01_05","UX01_06","UX01_07","UX01_08",
    "UX01_09","UX01_10","UX02_01","UX02_02","UX02_03","UX02_04","UX02_05","UX02_06",
    "UX02_07","UX02_08","TIME001","TIME002","TIME003","TIME004","TIME005","TIME006",
    "TIME007","TIME008","TIME009","TIME_SUM","MAILSENT","LASTDATA","FINISHED",
    "Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", TX03="numeric", TX05="numeric",
    TX07="numeric", UX01_01="numeric", UX01_02="numeric", UX01_03="numeric",
    UX01_04="numeric", UX01_05="numeric", UX01_06="numeric", UX01_07="numeric",
    UX01_08="numeric", UX01_09="numeric", UX01_10="numeric", UX02_01="numeric",
    UX02_02="numeric", UX02_03="numeric", UX02_04="numeric", UX02_05="numeric",
    UX02_06="numeric", UX02_07="numeric", UX02_08="numeric", TIME001="integer",
    TIME002="integer", TIME003="integer", TIME004="integer", TIME005="integer",
    TIME006="integer", TIME007="integer", TIME008="integer", TIME009="integer",
    TIME_SUM="integer", MAILSENT="POSIXct", LASTDATA="POSIXct",
    FINISHED="logical", Q_VIEWER="logical", LASTPAGE="numeric",
    MAXPAGE="numeric"
  ),
  skip = 1,
  check.names = TRUE, fill = TRUE,
  strip.white = FALSE, blank.lines.skip = TRUE,
  comment.char = "",
  na.strings = ""
)

rm(ds_file)

attr(ds, "project") = "EvalPlantyAppUsabUXEng"
attr(ds, "description") = "Evaluation Planty App - UsabUXEng"
attr(ds, "date") = "2023-01-31 18:13:11"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
ds$TX03 = factor(ds$TX03, levels=c("1","2","-1","-9"), labels=c("ja","nein","[NA] Unsicher","[NA] nicht beantwortet"), ordered=FALSE)
ds$TX05 = factor(ds$TX05, levels=c("1","2","-1","-9"), labels=c("ja","nein","[NA] Unsicher","[NA] nicht beantwortet"), ordered=FALSE)
ds$TX07 = factor(ds$TX07, levels=c("1","2","-1","-9"), labels=c("ja","nein","[NA] Unsicher","[NA] nicht beantwortet"), ordered=FALSE)
attr(ds$UX01_01,"1") = "trifft gar nicht zu"
attr(ds$UX01_01,"5") = "trifft voll zu"
attr(ds$UX01_02,"1") = "trifft voll zu"
attr(ds$UX01_02,"5") = "trifft gar nicht zu"
attr(ds$UX01_03,"1") = "trifft gar nicht zu"
attr(ds$UX01_03,"5") = "trifft voll zu"
attr(ds$UX01_04,"1") = "trifft voll zu"
attr(ds$UX01_04,"5") = "trifft gar nicht zu"
attr(ds$UX01_05,"1") = "trifft gar nicht zu"
attr(ds$UX01_05,"5") = "trifft voll zu"
attr(ds$UX01_06,"1") = "trifft voll zu"
attr(ds$UX01_06,"5") = "trifft gar nicht zu"
attr(ds$UX01_07,"1") = "trifft gar nicht zu"
attr(ds$UX01_07,"5") = "trifft voll zu"
attr(ds$UX01_08,"1") = "trifft voll zu"
attr(ds$UX01_08,"5") = "trifft gar nicht zu"
attr(ds$UX01_09,"1") = "trifft gar nicht zu"
attr(ds$UX01_09,"5") = "trifft voll zu"
attr(ds$UX01_10,"1") = "trifft voll zu"
attr(ds$UX01_10,"5") = "trifft gar nicht zu"
attr(ds$UX02_01,"1") = "behindernd"
attr(ds$UX02_01,"7") = "unterstützend"
attr(ds$UX02_02,"1") = "kompliziert"
attr(ds$UX02_02,"7") = "einfach"
attr(ds$UX02_03,"1") = "ineffizient"
attr(ds$UX02_03,"7") = "effizient"
attr(ds$UX02_04,"1") = "verwirrend"
attr(ds$UX02_04,"7") = "übersichtlich"
attr(ds$UX02_05,"1") = "langweilig"
attr(ds$UX02_05,"7") = "spannend"
attr(ds$UX02_06,"1") = "uninteressant"
attr(ds$UX02_06,"7") = "interessant"
attr(ds$UX02_07,"1") = "konventionell"
attr(ds$UX02_07,"7") = "originell"
attr(ds$UX02_08,"1") = "herkömmlich"
attr(ds$UX02_08,"7") = "neuartig"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$TX03) = "Aufgabe1"
comment(ds$TX05) = "Aufgabe2"
comment(ds$TX07) = "Aufgabe3"
comment(ds$UX01_01) = "System Usability Scale (SUS): Ich denke, ich würde dieses Programm gerne häufiger benutzen."
comment(ds$UX01_02) = "System Usability Scale (SUS): Ich finde das Programm unnötig komplex. (umgepolt)"
comment(ds$UX01_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen."
comment(ds$UX01_04) = "System Usability Scale (SUS): Ich denke, ich würde die Unterstützung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$UX01_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert."
comment(ds$UX01_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$UX01_07) = "System Usability Scale (SUS): Ich könnte mir vorstellen, dass die meisten Leute sehr schnell lernen würden mit diesem Programm umzugehen."
comment(ds$UX01_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerfällig im Gebrauch. (umgepolt)"
comment(ds$UX01_09) = "System Usability Scale (SUS): Ich fühlte mich sehr sicher bei der Benutzung des Programmes."
comment(ds$UX01_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$UX02_01) = "UEQ: behindernd/unterstützend"
comment(ds$UX02_02) = "UEQ: kompliziert/einfach"
comment(ds$UX02_03) = "UEQ: ineffizient/effizient"
comment(ds$UX02_04) = "UEQ: verwirrend/übersichtlich"
comment(ds$UX02_05) = "UEQ: langweilig/spannend"
comment(ds$UX02_06) = "UEQ: uninteressant/interessant"
comment(ds$UX02_07) = "UEQ: konventionell/originell"
comment(ds$UX02_08) = "UEQ: herkömmlich/neuartig"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
comment(ds$TIME005) = "Verweildauer Seite 5"
comment(ds$TIME006) = "Verweildauer Seite 6"
comment(ds$TIME007) = "Verweildauer Seite 7"
comment(ds$TIME008) = "Verweildauer Seite 8"
comment(ds$TIME009) = "Verweildauer Seite 9"
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

