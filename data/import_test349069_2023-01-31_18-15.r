# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/test349069/?act=b2e9DooUiKROx9Xz3cR3aqKZ"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","A002","A003_01","A003_02",
    "A004","SC01","SD01","SD02_01","US01_01","US01_02","US01_03","US01_04",
    "US01_05","US01_06","US01_07","US01_08","UX01_01","UX01_02","UX01_03","UX01_04",
    "UX01_05","UX01_06","UX01_07","UX01_08","UX01_09","UX01_10","WA01_01","TIME001",
    "TIME002","TIME003","TIME004","TIME005","TIME006","TIME007","TIME008",
    "TIME_SUM","MAILSENT","LASTDATA","FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", A002="numeric", A003_01="character",
    A003_02="character", A004="numeric", SC01="numeric", SD01="numeric",
    SD02_01="numeric", US01_01="numeric", US01_02="numeric", US01_03="numeric",
    US01_04="numeric", US01_05="numeric", US01_06="numeric", US01_07="numeric",
    US01_08="numeric", UX01_01="numeric", UX01_02="numeric", UX01_03="numeric",
    UX01_04="numeric", UX01_05="numeric", UX01_06="numeric", UX01_07="numeric",
    UX01_08="numeric", UX01_09="numeric", UX01_10="numeric",
    WA01_01="character", TIME001="integer", TIME002="integer",
    TIME003="integer", TIME004="integer", TIME005="integer", TIME006="integer",
    TIME007="integer", TIME008="integer", TIME_SUM="integer",
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

attr(ds, "project") = "test349069"
attr(ds, "description") = "Evaluation-Raumfindung (TiJaNi)"
attr(ds, "date") = "2023-01-31 18:15:21"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
ds$A002 = factor(ds$A002, levels=c("1","2","3","4","5","-9"), labels=c("AM1","PC Pool","V3","AM 3","Zuhause","[NA] nicht beantwortet"), ordered=FALSE)
ds$A004 = factor(ds$A004, levels=c("1","2","-9"), labels=c("Ja - ist vorhanden","Nein - ist nicht vorhanden","[NA] nicht beantwortet"), ordered=FALSE)
ds$SC01 = factor(ds$SC01, levels=c("1","2","-9"), labels=c("Nein (nicht an der Studie teilnehmen)","Ja","[NA] nicht beantwortet"), ordered=FALSE)
ds$SD01 = factor(ds$SD01, levels=c("1","2","3","-9"), labels=c("weiblich","männlich","divers","[NA] nicht beantwortet"), ordered=FALSE)
attr(ds$US01_01,"1") = "behindernd"
attr(ds$US01_01,"7") = "unterstützend"
attr(ds$US01_02,"1") = "kompliziert"
attr(ds$US01_02,"7") = "einfach"
attr(ds$US01_03,"1") = "ineffizient"
attr(ds$US01_03,"7") = "effizient"
attr(ds$US01_04,"1") = "verwirrend"
attr(ds$US01_04,"7") = "übersichtlich"
attr(ds$US01_05,"1") = "langweilig"
attr(ds$US01_05,"7") = "spannend"
attr(ds$US01_06,"1") = "uninteressant"
attr(ds$US01_06,"7") = "interessant"
attr(ds$US01_07,"1") = "konventionell"
attr(ds$US01_07,"7") = "originell"
attr(ds$US01_08,"1") = "herkömmlich"
attr(ds$US01_08,"7") = "neuartig"
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
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$A002) = "Frage Wo um 8"
comment(ds$A003_01) = "Navigation um 12: ...welches Fortbewegungsmittel du wählst"
comment(ds$A003_02) = "Navigation um 12: ...und wie lange du brauchst."
comment(ds$A004) = "WLAN im RAum"
comment(ds$SC01) = "Consent"
comment(ds$SD01) = "Geschlecht"
comment(ds$SD02_01) = "Alter (direkt): Ich bin   ... Jahre"
comment(ds$US01_01) = "UEQ-S: behindernd/unterstützend"
comment(ds$US01_02) = "UEQ-S: kompliziert/einfach"
comment(ds$US01_03) = "UEQ-S: ineffizient/effizient"
comment(ds$US01_04) = "UEQ-S: verwirrend/übersichtlich"
comment(ds$US01_05) = "UEQ-S: langweilig/spannend"
comment(ds$US01_06) = "UEQ-S: uninteressant/interessant"
comment(ds$US01_07) = "UEQ-S: konventionell/originell"
comment(ds$US01_08) = "UEQ-S: herkömmlich/neuartig"
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
comment(ds$WA01_01) = "Weitere Anmerkungen: Hier kannst du die Anmerkung reinschreiben"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
comment(ds$TIME005) = "Verweildauer Seite 5"
comment(ds$TIME006) = "Verweildauer Seite 6"
comment(ds$TIME007) = "Verweildauer Seite 7"
comment(ds$TIME008) = "Verweildauer Seite 8"
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

