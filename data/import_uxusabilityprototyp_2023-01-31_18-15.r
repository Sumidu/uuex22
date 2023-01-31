# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/uxusabilityprototyp/?act=crckXVTjI8g7rgdKvQXBlY0g"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","TX03","UX01_01","UX01_02",
    "UX01_03","UX01_04","UX01_05","UX01_06","UX01_07","UX01_08","UX01_09","UX01_10",
    "UX02_01","UX02_02","UX02_03","UX02_04","UX02_05","UX02_06","UX02_07","UX02_08",
    "UX02_09","UX02_10","UX02_11","UX02_12","UX02_13","UX02_14","UX02_15","UX02_16",
    "UX02_17","UX02_18","UX02_19","UX02_20","UX02_21","UX02_22","UX02_23","UX02_24",
    "UX02_25","UX02_26","TIME001","TIME002","TIME003","TIME004","TIME_SUM",
    "MAILSENT","LASTDATA","FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", TX03="numeric", UX01_01="numeric",
    UX01_02="numeric", UX01_03="numeric", UX01_04="numeric", UX01_05="numeric",
    UX01_06="numeric", UX01_07="numeric", UX01_08="numeric", UX01_09="numeric",
    UX01_10="numeric", UX02_01="numeric", UX02_02="numeric", UX02_03="numeric",
    UX02_04="numeric", UX02_05="numeric", UX02_06="numeric", UX02_07="numeric",
    UX02_08="numeric", UX02_09="numeric", UX02_10="numeric", UX02_11="numeric",
    UX02_12="numeric", UX02_13="numeric", UX02_14="numeric", UX02_15="numeric",
    UX02_16="numeric", UX02_17="numeric", UX02_18="numeric", UX02_19="numeric",
    UX02_20="numeric", UX02_21="numeric", UX02_22="numeric", UX02_23="numeric",
    UX02_24="numeric", UX02_25="numeric", UX02_26="numeric", TIME001="integer",
    TIME002="integer", TIME003="integer", TIME004="integer", TIME_SUM="integer",
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

attr(ds, "project") = "uxusabilityprototyp"
attr(ds, "description") = "Methodenübung 01 - 01/2023"
attr(ds, "date") = "2023-01-31 18:15:09"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
ds$TX03 = factor(ds$TX03, levels=c("1","2","-1","-9"), labels=c("ja","nein","[NA] weiß nicht","[NA] nicht beantwortet"), ordered=FALSE)
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
attr(ds$UX02_01,"1") = "unerfreulich"
attr(ds$UX02_01,"5") = "erfreulich"
attr(ds$UX02_02,"1") = "unverständlich"
attr(ds$UX02_02,"5") = "verständlich"
attr(ds$UX02_03,"1") = "kreativ"
attr(ds$UX02_03,"5") = "phantasielos"
attr(ds$UX02_04,"1") = "leicht zu lernen"
attr(ds$UX02_04,"5") = "schwer zu lernen"
attr(ds$UX02_05,"1") = "wertvoll"
attr(ds$UX02_05,"5") = "minderwertig"
attr(ds$UX02_06,"1") = "langweilig"
attr(ds$UX02_06,"5") = "spannend"
attr(ds$UX02_07,"1") = "uninteressant"
attr(ds$UX02_07,"5") = "interessant"
attr(ds$UX02_08,"1") = "unberechenbar"
attr(ds$UX02_08,"5") = "voraussagbar"
attr(ds$UX02_09,"1") = "schnell"
attr(ds$UX02_09,"5") = "langsam"
attr(ds$UX02_10,"1") = "originell"
attr(ds$UX02_10,"5") = "konventionell"
attr(ds$UX02_11,"1") = "behindernd"
attr(ds$UX02_11,"5") = "unterstützend"
attr(ds$UX02_12,"1") = "gut"
attr(ds$UX02_12,"5") = "schlecht"
attr(ds$UX02_13,"1") = "kompliziert"
attr(ds$UX02_13,"5") = "einfach"
attr(ds$UX02_14,"1") = "abstoßend"
attr(ds$UX02_14,"5") = "anziehend"
attr(ds$UX02_15,"1") = "herkömmlich"
attr(ds$UX02_15,"5") = "neuartig"
attr(ds$UX02_16,"1") = "unangenehm"
attr(ds$UX02_16,"5") = "angenehm"
attr(ds$UX02_17,"1") = "sicher"
attr(ds$UX02_17,"5") = "unsicher"
attr(ds$UX02_18,"1") = "aktivierend"
attr(ds$UX02_18,"5") = "einschläfernd"
attr(ds$UX02_19,"1") = "erwartungskonform"
attr(ds$UX02_19,"5") = "nicht erwartungskonform"
attr(ds$UX02_20,"1") = "ineffizient"
attr(ds$UX02_20,"5") = "effizient"
attr(ds$UX02_21,"1") = "übersichtlich"
attr(ds$UX02_21,"5") = "verwirrend"
attr(ds$UX02_22,"1") = "unpragmatisch"
attr(ds$UX02_22,"5") = "pragmatisch"
attr(ds$UX02_23,"1") = "aufgeräumt"
attr(ds$UX02_23,"5") = "überladen"
attr(ds$UX02_24,"1") = "attraktiv"
attr(ds$UX02_24,"5") = "unattraktiv"
attr(ds$UX02_25,"1") = "sympathisch"
attr(ds$UX02_25,"5") = "unsympathisch"
attr(ds$UX02_26,"1") = "konservativ"
attr(ds$UX02_26,"5") = "innovativ"
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
comment(ds$UX02_01) = "UEQ: unerfreulich/erfreulich"
comment(ds$UX02_02) = "UEQ: unverständlich/verständlich"
comment(ds$UX02_03) = "UEQ: kreativ/phantasielos"
comment(ds$UX02_04) = "UEQ: leicht zu lernen/schwer zu lernen"
comment(ds$UX02_05) = "UEQ: wertvoll/minderwertig"
comment(ds$UX02_06) = "UEQ: langweilig/spannend"
comment(ds$UX02_07) = "UEQ: uninteressant/interessant"
comment(ds$UX02_08) = "UEQ: unberechenbar/voraussagbar"
comment(ds$UX02_09) = "UEQ: schnell/langsam"
comment(ds$UX02_10) = "UEQ: originell/konventionell"
comment(ds$UX02_11) = "UEQ: behindernd/unterstützend"
comment(ds$UX02_12) = "UEQ: gut/schlecht"
comment(ds$UX02_13) = "UEQ: kompliziert/einfach"
comment(ds$UX02_14) = "UEQ: abstoßend/anziehend"
comment(ds$UX02_15) = "UEQ: herkömmlich/neuartig"
comment(ds$UX02_16) = "UEQ: unangenehm/angenehm"
comment(ds$UX02_17) = "UEQ: sicher/unsicher"
comment(ds$UX02_18) = "UEQ: aktivierend/einschläfernd"
comment(ds$UX02_19) = "UEQ: erwartungskonform/nicht erwartungskonform"
comment(ds$UX02_20) = "UEQ: ineffizient/effizient"
comment(ds$UX02_21) = "UEQ: übersichtlich/verwirrend"
comment(ds$UX02_22) = "UEQ: unpragmatisch/pragmatisch"
comment(ds$UX02_23) = "UEQ: aufgeräumt/überladen"
comment(ds$UX02_24) = "UEQ: attraktiv/unattraktiv"
comment(ds$UX02_25) = "UEQ: sympathisch/unsympathisch"
comment(ds$UX02_26) = "UEQ: konservativ/innovativ"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
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

