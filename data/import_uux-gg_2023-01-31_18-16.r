# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/uux-gg/?act=KkpkoGq6xMhpvoP0cI4GczUu"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","GG01_01","GG01_02","GG01_03",
    "GG01_04","GG01_05","GG01_06","GG01_07","GG01_08","GG01_09","GG01_10","GG02_01",
    "GG02_02","GG02_03","GG02_04","GG02_05","GG02_06","GG02_07","GG02_08","GG05",
    "TIME001","TIME002","TIME003","TIME004","TIME005","TIME_SUM","MAILSENT",
    "LASTDATA","FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", GG01_01="numeric", GG01_02="numeric",
    GG01_03="numeric", GG01_04="numeric", GG01_05="numeric", GG01_06="numeric",
    GG01_07="numeric", GG01_08="numeric", GG01_09="numeric", GG01_10="numeric",
    GG02_01="numeric", GG02_02="numeric", GG02_03="numeric", GG02_04="numeric",
    GG02_05="numeric", GG02_06="numeric", GG02_07="numeric", GG02_08="numeric",
    GG05="numeric", TIME001="integer", TIME002="integer", TIME003="integer",
    TIME004="integer", TIME005="integer", TIME_SUM="integer",
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

attr(ds, "project") = "uux-gg"
attr(ds, "description") = "proto-test"
attr(ds, "date") = "2023-01-31 18:16:30"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
ds$GG05 = factor(ds$GG05, levels=c("1","2","-9"), labels=c("Ja,","Nein","[NA] nicht beantwortet"), ordered=FALSE)
attr(ds$GG01_01,"1") = "trifft gar nicht zu"
attr(ds$GG01_01,"5") = "trifft voll zu"
attr(ds$GG01_02,"1") = "trifft voll zu"
attr(ds$GG01_02,"5") = "trifft gar nicht zu"
attr(ds$GG01_03,"1") = "trifft gar nicht zu"
attr(ds$GG01_03,"5") = "trifft voll zu"
attr(ds$GG01_04,"1") = "trifft voll zu"
attr(ds$GG01_04,"5") = "trifft gar nicht zu"
attr(ds$GG01_05,"1") = "trifft gar nicht zu"
attr(ds$GG01_05,"5") = "trifft voll zu"
attr(ds$GG01_06,"1") = "trifft voll zu"
attr(ds$GG01_06,"5") = "trifft gar nicht zu"
attr(ds$GG01_07,"1") = "trifft gar nicht zu"
attr(ds$GG01_07,"5") = "trifft voll zu"
attr(ds$GG01_08,"1") = "trifft voll zu"
attr(ds$GG01_08,"5") = "trifft gar nicht zu"
attr(ds$GG01_09,"1") = "trifft gar nicht zu"
attr(ds$GG01_09,"5") = "trifft voll zu"
attr(ds$GG01_10,"1") = "trifft voll zu"
attr(ds$GG01_10,"5") = "trifft gar nicht zu"
attr(ds$GG02_01,"1") = "behindernd"
attr(ds$GG02_01,"7") = "unterstützend"
attr(ds$GG02_02,"1") = "kompliziert"
attr(ds$GG02_02,"7") = "einfach"
attr(ds$GG02_03,"1") = "ineffizient"
attr(ds$GG02_03,"7") = "effizient"
attr(ds$GG02_04,"1") = "verwirrend"
attr(ds$GG02_04,"7") = "übersichtlich"
attr(ds$GG02_05,"1") = "langweilig"
attr(ds$GG02_05,"7") = "spannend"
attr(ds$GG02_06,"1") = "uninteressant"
attr(ds$GG02_06,"7") = "interessant"
attr(ds$GG02_07,"1") = "konventionell"
attr(ds$GG02_07,"7") = "originell"
attr(ds$GG02_08,"1") = "herkömmlich"
attr(ds$GG02_08,"7") = "neuartig"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$GG01_01) = "System Usability Scale (SUS): Ich denke, ich würde dieses Programm gerne häufiger benutzen."
comment(ds$GG01_02) = "System Usability Scale (SUS): Ich finde das Programm unnötig komplex. (umgepolt)"
comment(ds$GG01_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen."
comment(ds$GG01_04) = "System Usability Scale (SUS): Ich denke, ich würde die Unterstützung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$GG01_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert."
comment(ds$GG01_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$GG01_07) = "System Usability Scale (SUS): Ich könnte mir vorstellen, dass die meisten Leute sehr schnell lernen würden mit diesem Programm umzugehen."
comment(ds$GG01_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerfällig im Gebrauch. (umgepolt)"
comment(ds$GG01_09) = "System Usability Scale (SUS): Ich fühlte mich sehr sicher bei der Benutzung des Programmes."
comment(ds$GG01_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$GG02_01) = "UEQ-S: behindernd/unterstützend"
comment(ds$GG02_02) = "UEQ-S: kompliziert/einfach"
comment(ds$GG02_03) = "UEQ-S: ineffizient/effizient"
comment(ds$GG02_04) = "UEQ-S: verwirrend/übersichtlich"
comment(ds$GG02_05) = "UEQ-S: langweilig/spannend"
comment(ds$GG02_06) = "UEQ-S: uninteressant/interessant"
comment(ds$GG02_07) = "UEQ-S: konventionell/originell"
comment(ds$GG02_08) = "UEQ-S: herkömmlich/neuartig"
comment(ds$GG05) = "Prototyp fertig"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
comment(ds$TIME005) = "Verweildauer Seite 5"
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

