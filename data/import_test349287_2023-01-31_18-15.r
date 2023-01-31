# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/test349287/?act=128yicQVq2TY5WNaBJxHzzTw"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","SC07_01","SC07_02","SC07_03",
    "SC07_04","SC07_05","SC07_06","SC07_07","SC07_08","SC07_09","SC07_10","SC08_01",
    "SC08_02","SC08_03","SC08_04","SC08_05","SC08_06","SC08_07","SC08_08","SC08_09",
    "SC08_10","SC08_11","SC08_12","SC08_13","SC08_14","SC08_15","SC08_16","SC08_17",
    "SC08_18","TIME001","TIME_SUM","MAILSENT","LASTDATA","FINISHED","Q_VIEWER",
    "LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", SC07_01="numeric", SC07_02="numeric",
    SC07_03="numeric", SC07_04="numeric", SC07_05="numeric", SC07_06="numeric",
    SC07_07="numeric", SC07_08="numeric", SC07_09="numeric", SC07_10="numeric",
    SC08_01="numeric", SC08_02="numeric", SC08_03="numeric", SC08_04="numeric",
    SC08_05="numeric", SC08_06="numeric", SC08_07="numeric", SC08_08="numeric",
    SC08_09="numeric", SC08_10="numeric", SC08_11="numeric", SC08_12="numeric",
    SC08_13="numeric", SC08_14="numeric", SC08_15="numeric", SC08_16="numeric",
    SC08_17="numeric", SC08_18="numeric", TIME001="integer", TIME_SUM="integer",
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

attr(ds, "project") = "test349287"
attr(ds, "description") = "BioCode"
attr(ds, "date") = "2023-01-31 18:15:00"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
attr(ds$SC07_01,"1") = "trifft gar nicht zu"
attr(ds$SC07_01,"5") = "trifft voll zu"
attr(ds$SC07_02,"1") = "trifft voll zu"
attr(ds$SC07_02,"5") = "trifft gar nicht zu"
attr(ds$SC07_03,"1") = "trifft gar nicht zu"
attr(ds$SC07_03,"5") = "trifft voll zu"
attr(ds$SC07_04,"1") = "trifft voll zu"
attr(ds$SC07_04,"5") = "trifft gar nicht zu"
attr(ds$SC07_05,"1") = "trifft gar nicht zu"
attr(ds$SC07_05,"5") = "trifft voll zu"
attr(ds$SC07_06,"1") = "trifft voll zu"
attr(ds$SC07_06,"5") = "trifft gar nicht zu"
attr(ds$SC07_07,"1") = "trifft gar nicht zu"
attr(ds$SC07_07,"5") = "trifft voll zu"
attr(ds$SC07_08,"1") = "trifft voll zu"
attr(ds$SC07_08,"5") = "trifft gar nicht zu"
attr(ds$SC07_09,"1") = "trifft gar nicht zu"
attr(ds$SC07_09,"5") = "trifft voll zu"
attr(ds$SC07_10,"1") = "trifft voll zu"
attr(ds$SC07_10,"5") = "trifft gar nicht zu"
attr(ds$SC08_01,"1") = "behindernd"
attr(ds$SC08_01,"7") = "unterstützend"
attr(ds$SC08_02,"1") = "kompliziert"
attr(ds$SC08_02,"7") = "einfach"
attr(ds$SC08_03,"1") = "ineffizient"
attr(ds$SC08_03,"7") = "effizient"
attr(ds$SC08_04,"1") = "verwirrend"
attr(ds$SC08_04,"7") = "übersichtlich"
attr(ds$SC08_05,"1") = "langweilig"
attr(ds$SC08_05,"7") = "spannend"
attr(ds$SC08_06,"1") = "herkömmlich"
attr(ds$SC08_06,"7") = "neuartig"
attr(ds$SC08_07,"1") = "schlecht"
attr(ds$SC08_07,"7") = "gut"
attr(ds$SC08_08,"1") = "konventionell"
attr(ds$SC08_08,"7") = "originell"
attr(ds$SC08_09,"1") = "einschläfernd"
attr(ds$SC08_09,"7") = "aktivierend"
attr(ds$SC08_10,"1") = "unattraktiv"
attr(ds$SC08_10,"7") = "attraktiv"
attr(ds$SC08_11,"1") = "schwer zu lernen"
attr(ds$SC08_11,"7") = "leicht zu lernen"
attr(ds$SC08_12,"1") = "phantasielos"
attr(ds$SC08_12,"7") = "kreativ"
attr(ds$SC08_13,"1") = "abstoßend"
attr(ds$SC08_13,"7") = "anziehend"
attr(ds$SC08_14,"1") = "langsam"
attr(ds$SC08_14,"7") = "schnell"
attr(ds$SC08_15,"1") = "sinnlos"
attr(ds$SC08_15,"7") = "zielführend"
attr(ds$SC08_16,"1") = "nicht erwartungskonform"
attr(ds$SC08_16,"7") = "erwartungskonform"
attr(ds$SC08_17,"1") = "unverständlich"
attr(ds$SC08_17,"7") = "verständlich"
attr(ds$SC08_18,"1") = "unsympathisch"
attr(ds$SC08_18,"7") = "sympathisch"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$SC07_01) = "System Usability Scale (SUS): Ich denke, ich würde dieses Programm gerne häufiger benutzen."
comment(ds$SC07_02) = "System Usability Scale (SUS): Ich finde das Programm unnötig komplex. (umgepolt)"
comment(ds$SC07_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen."
comment(ds$SC07_04) = "System Usability Scale (SUS): Ich denke, ich würde die Unterstützung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$SC07_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert."
comment(ds$SC07_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$SC07_07) = "System Usability Scale (SUS): Ich könnte mir vorstellen, dass die meisten Leute sehr schnell lernen würden mit diesem Programm umzugehen."
comment(ds$SC07_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerfällig im Gebrauch. (umgepolt)"
comment(ds$SC07_09) = "System Usability Scale (SUS): Ich fühlte mich sehr sicher bei der Benutzung des Programmes."
comment(ds$SC07_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$SC08_01) = "UEQS: behindernd/unterstützend"
comment(ds$SC08_02) = "UEQS: kompliziert/einfach"
comment(ds$SC08_03) = "UEQS: ineffizient/effizient"
comment(ds$SC08_04) = "UEQS: verwirrend/übersichtlich"
comment(ds$SC08_05) = "UEQS: langweilig/spannend"
comment(ds$SC08_06) = "UEQS: herkömmlich/neuartig"
comment(ds$SC08_07) = "UEQS: schlecht/gut"
comment(ds$SC08_08) = "UEQS: konventionell/originell"
comment(ds$SC08_09) = "UEQS: einschläfernd/aktivierend"
comment(ds$SC08_10) = "UEQS: unattraktiv/attraktiv"
comment(ds$SC08_11) = "UEQS: schwer zu lernen/leicht zu lernen"
comment(ds$SC08_12) = "UEQS: phantasielos/kreativ"
comment(ds$SC08_13) = "UEQS: abstoßend/anziehend"
comment(ds$SC08_14) = "UEQS: langsam/schnell"
comment(ds$SC08_15) = "UEQS: sinnlos/zielführend"
comment(ds$SC08_16) = "UEQS: nicht erwartungskonform/erwartungskonform"
comment(ds$SC08_17) = "UEQS: unverständlich/verständlich"
comment(ds$SC08_18) = "UEQS: unsympathisch/sympathisch"
comment(ds$TIME001) = "Verweildauer Seite 1"
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

