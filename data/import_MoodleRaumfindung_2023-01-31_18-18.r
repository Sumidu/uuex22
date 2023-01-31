# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/MoodleRaumfindung/?act=BsLvHhnZCoIDwQX8z48sRQh0"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","SU01_01","SU01_02","SU01_03",
    "SU01_04","SU01_05","SU01_06","SU01_07","SU01_08","SU01_09","SU01_10","SU02_01",
    "SU02_02","SU02_03","SU02_04","SU02_05","SU02_06","SU02_07","SU02_08","SU02_09",
    "SU02_10","UE01_01","UE01_02","UE01_03","UE01_04","UE01_05","UE01_06","UE01_07",
    "UE01_08","UE01_09","UE01_10","UE01_11","UE01_12","UE01_13","UE01_14","UE01_15",
    "UE01_16","UE01_17","UE01_18","UE01_19","UE01_20","UE01_21","UE01_22","UE01_23",
    "UE01_24","UE01_25","UE01_26","UE02_01","UE02_02","UE02_03","UE02_04","UE02_05",
    "UE02_06","UE02_07","UE02_08","UE02_09","UE02_10","UE02_11","UE02_12","UE02_13",
    "UE02_14","UE02_15","UE02_16","UE02_17","UE02_18","UE02_19","UE02_20","UE02_21",
    "UE02_22","UE02_23","UE02_24","UE02_25","UE02_26","TIME001","TIME002","TIME003",
    "TIME004","TIME005","TIME006","TIME007","TIME_SUM","MAILSENT","LASTDATA",
    "FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", SU01_01="numeric", SU01_02="numeric",
    SU01_03="numeric", SU01_04="numeric", SU01_05="numeric", SU01_06="numeric",
    SU01_07="numeric", SU01_08="numeric", SU01_09="numeric", SU01_10="numeric",
    SU02_01="numeric", SU02_02="numeric", SU02_03="numeric", SU02_04="numeric",
    SU02_05="numeric", SU02_06="numeric", SU02_07="numeric", SU02_08="numeric",
    SU02_09="numeric", SU02_10="numeric", UE01_01="numeric", UE01_02="numeric",
    UE01_03="numeric", UE01_04="numeric", UE01_05="numeric", UE01_06="numeric",
    UE01_07="numeric", UE01_08="numeric", UE01_09="numeric", UE01_10="numeric",
    UE01_11="numeric", UE01_12="numeric", UE01_13="numeric", UE01_14="numeric",
    UE01_15="numeric", UE01_16="numeric", UE01_17="numeric", UE01_18="numeric",
    UE01_19="numeric", UE01_20="numeric", UE01_21="numeric", UE01_22="numeric",
    UE01_23="numeric", UE01_24="numeric", UE01_25="numeric", UE01_26="numeric",
    UE02_01="numeric", UE02_02="numeric", UE02_03="numeric", UE02_04="numeric",
    UE02_05="numeric", UE02_06="numeric", UE02_07="numeric", UE02_08="numeric",
    UE02_09="numeric", UE02_10="numeric", UE02_11="numeric", UE02_12="numeric",
    UE02_13="numeric", UE02_14="numeric", UE02_15="numeric", UE02_16="numeric",
    UE02_17="numeric", UE02_18="numeric", UE02_19="numeric", UE02_20="numeric",
    UE02_21="numeric", UE02_22="numeric", UE02_23="numeric", UE02_24="numeric",
    UE02_25="numeric", UE02_26="numeric", TIME001="integer", TIME002="integer",
    TIME003="integer", TIME004="integer", TIME005="integer", TIME006="integer",
    TIME007="integer", TIME_SUM="integer", MAILSENT="POSIXct",
    LASTDATA="POSIXct", FINISHED="logical", Q_VIEWER="logical",
    LASTPAGE="numeric", MAXPAGE="numeric"
  ),
  skip = 1,
  check.names = TRUE, fill = TRUE,
  strip.white = FALSE, blank.lines.skip = TRUE,
  comment.char = "",
  na.strings = ""
)

rm(ds_file)

attr(ds, "project") = "MoodleRaumfindung"
attr(ds, "description") = "UsabUXEng Umfrage Moodle Raumfindung"
attr(ds, "date") = "2023-01-31 18:18:21"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
attr(ds$SU01_01,"1") = "trifft gar nicht zu"
attr(ds$SU01_01,"5") = "trifft voll zu"
attr(ds$SU01_02,"1") = "trifft voll zu"
attr(ds$SU01_02,"5") = "trifft gar nicht zu"
attr(ds$SU01_03,"1") = "trifft gar nicht zu"
attr(ds$SU01_03,"5") = "trifft voll zu"
attr(ds$SU01_04,"1") = "trifft voll zu"
attr(ds$SU01_04,"5") = "trifft gar nicht zu"
attr(ds$SU01_05,"1") = "trifft gar nicht zu"
attr(ds$SU01_05,"5") = "trifft voll zu"
attr(ds$SU01_06,"1") = "trifft voll zu"
attr(ds$SU01_06,"5") = "trifft gar nicht zu"
attr(ds$SU01_07,"1") = "trifft gar nicht zu"
attr(ds$SU01_07,"5") = "trifft voll zu"
attr(ds$SU01_08,"1") = "trifft voll zu"
attr(ds$SU01_08,"5") = "trifft gar nicht zu"
attr(ds$SU01_09,"1") = "trifft gar nicht zu"
attr(ds$SU01_09,"5") = "trifft voll zu"
attr(ds$SU01_10,"1") = "trifft voll zu"
attr(ds$SU01_10,"5") = "trifft gar nicht zu"
attr(ds$SU02_01,"1") = "trifft gar nicht zu"
attr(ds$SU02_01,"5") = "trifft voll zu"
attr(ds$SU02_02,"1") = "trifft voll zu"
attr(ds$SU02_02,"5") = "trifft gar nicht zu"
attr(ds$SU02_03,"1") = "trifft gar nicht zu"
attr(ds$SU02_03,"5") = "trifft voll zu"
attr(ds$SU02_04,"1") = "trifft voll zu"
attr(ds$SU02_04,"5") = "trifft gar nicht zu"
attr(ds$SU02_05,"1") = "trifft gar nicht zu"
attr(ds$SU02_05,"5") = "trifft voll zu"
attr(ds$SU02_06,"1") = "trifft voll zu"
attr(ds$SU02_06,"5") = "trifft gar nicht zu"
attr(ds$SU02_07,"1") = "trifft gar nicht zu"
attr(ds$SU02_07,"5") = "trifft voll zu"
attr(ds$SU02_08,"1") = "trifft voll zu"
attr(ds$SU02_08,"5") = "trifft gar nicht zu"
attr(ds$SU02_09,"1") = "trifft gar nicht zu"
attr(ds$SU02_09,"5") = "trifft voll zu"
attr(ds$SU02_10,"1") = "trifft voll zu"
attr(ds$SU02_10,"5") = "trifft gar nicht zu"
attr(ds$UE01_01,"1") = "unerfreulich"
attr(ds$UE01_01,"7") = "erfreulich"
attr(ds$UE01_02,"1") = "unverständlich"
attr(ds$UE01_02,"7") = "verständlich"
attr(ds$UE01_03,"1") = "kreativ"
attr(ds$UE01_03,"7") = "phantasielos"
attr(ds$UE01_04,"1") = "leicht zu lernen"
attr(ds$UE01_04,"7") = "schwer zu lernen"
attr(ds$UE01_05,"1") = "wertvoll"
attr(ds$UE01_05,"7") = "minderwertig"
attr(ds$UE01_06,"1") = "langweilig"
attr(ds$UE01_06,"7") = "spannend"
attr(ds$UE01_07,"1") = "uninteressant"
attr(ds$UE01_07,"7") = "interessant"
attr(ds$UE01_08,"1") = "unberechenbar"
attr(ds$UE01_08,"7") = "voraussagbar"
attr(ds$UE01_09,"1") = "schnell"
attr(ds$UE01_09,"7") = "langsam"
attr(ds$UE01_10,"1") = "originell"
attr(ds$UE01_10,"7") = "konventionell"
attr(ds$UE01_11,"1") = "behindernd"
attr(ds$UE01_11,"7") = "unterstützend"
attr(ds$UE01_12,"1") = "gut"
attr(ds$UE01_12,"7") = "schlecht"
attr(ds$UE01_13,"1") = "kompliziert"
attr(ds$UE01_13,"7") = "einfach"
attr(ds$UE01_14,"1") = "abstoßend"
attr(ds$UE01_14,"7") = "anziehend"
attr(ds$UE01_15,"1") = "herkömmlich"
attr(ds$UE01_15,"7") = "neuartig"
attr(ds$UE01_16,"1") = "unangenehm"
attr(ds$UE01_16,"7") = "angenehm"
attr(ds$UE01_17,"1") = "sicher"
attr(ds$UE01_17,"7") = "unsicher"
attr(ds$UE01_18,"1") = "aktivierend"
attr(ds$UE01_18,"7") = "einschläfernd"
attr(ds$UE01_19,"1") = "erwartungskonform"
attr(ds$UE01_19,"7") = "nicht erwartungskonform"
attr(ds$UE01_20,"1") = "ineffizient"
attr(ds$UE01_20,"7") = "effizient"
attr(ds$UE01_21,"1") = "übersichtlich"
attr(ds$UE01_21,"7") = "verwirrend"
attr(ds$UE01_22,"1") = "unpragmatisch"
attr(ds$UE01_22,"7") = "pragmatisch"
attr(ds$UE01_23,"1") = "aufgeräumt"
attr(ds$UE01_23,"7") = "überladen"
attr(ds$UE01_24,"1") = "attraktiv"
attr(ds$UE01_24,"7") = "unattraktiv"
attr(ds$UE01_25,"1") = "sympathisch"
attr(ds$UE01_25,"7") = "unsympathisch"
attr(ds$UE01_26,"1") = "konservativ"
attr(ds$UE01_26,"7") = "innovativ"
attr(ds$UE02_01,"1") = "unerfreulich"
attr(ds$UE02_01,"7") = "erfreulich"
attr(ds$UE02_02,"1") = "unverständlich"
attr(ds$UE02_02,"7") = "verständlich"
attr(ds$UE02_03,"1") = "kreativ"
attr(ds$UE02_03,"7") = "phantasielos"
attr(ds$UE02_04,"1") = "leicht zu lernen"
attr(ds$UE02_04,"7") = "schwer zu lernen"
attr(ds$UE02_05,"1") = "wertvoll"
attr(ds$UE02_05,"7") = "minderwertig"
attr(ds$UE02_06,"1") = "langweilig"
attr(ds$UE02_06,"7") = "spannend"
attr(ds$UE02_07,"1") = "uninteressant"
attr(ds$UE02_07,"7") = "interessant"
attr(ds$UE02_08,"1") = "unberechenbar"
attr(ds$UE02_08,"7") = "voraussagbar"
attr(ds$UE02_09,"1") = "schnell"
attr(ds$UE02_09,"7") = "langsam"
attr(ds$UE02_10,"1") = "originell"
attr(ds$UE02_10,"7") = "konventionell"
attr(ds$UE02_11,"1") = "behindernd"
attr(ds$UE02_11,"7") = "unterstützend"
attr(ds$UE02_12,"1") = "gut"
attr(ds$UE02_12,"7") = "schlecht"
attr(ds$UE02_13,"1") = "kompliziert"
attr(ds$UE02_13,"7") = "einfach"
attr(ds$UE02_14,"1") = "abstoßend"
attr(ds$UE02_14,"7") = "anziehend"
attr(ds$UE02_15,"1") = "herkömmlich"
attr(ds$UE02_15,"7") = "neuartig"
attr(ds$UE02_16,"1") = "unangenehm"
attr(ds$UE02_16,"7") = "angenehm"
attr(ds$UE02_17,"1") = "sicher"
attr(ds$UE02_17,"7") = "unsicher"
attr(ds$UE02_18,"1") = "aktivierend"
attr(ds$UE02_18,"7") = "einschläfernd"
attr(ds$UE02_19,"1") = "erwartungskonform"
attr(ds$UE02_19,"7") = "nicht erwartungskonform"
attr(ds$UE02_20,"1") = "ineffizient"
attr(ds$UE02_20,"7") = "effizient"
attr(ds$UE02_21,"1") = "übersichtlich"
attr(ds$UE02_21,"7") = "verwirrend"
attr(ds$UE02_22,"1") = "unpragmatisch"
attr(ds$UE02_22,"7") = "pragmatisch"
attr(ds$UE02_23,"1") = "aufgeräumt"
attr(ds$UE02_23,"7") = "überladen"
attr(ds$UE02_24,"1") = "attraktiv"
attr(ds$UE02_24,"7") = "unattraktiv"
attr(ds$UE02_25,"1") = "sympathisch"
attr(ds$UE02_25,"7") = "unsympathisch"
attr(ds$UE02_26,"1") = "konservativ"
attr(ds$UE02_26,"7") = "innovativ"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$SU01_01) = "System Usability Scale (SUS): Ich denke, ich würde dieses Programm gerne häufiger benutzen."
comment(ds$SU01_02) = "System Usability Scale (SUS): Ich finde das Programm unnötig komplex. (umgepolt)"
comment(ds$SU01_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen."
comment(ds$SU01_04) = "System Usability Scale (SUS): Ich denke, ich würde die Unterstützung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$SU01_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert."
comment(ds$SU01_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$SU01_07) = "System Usability Scale (SUS): Ich könnte mir vorstellen, dass die meisten Leute sehr schnell lernen würden mit diesem Programm umzugehen."
comment(ds$SU01_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerfällig im Gebrauch. (umgepolt)"
comment(ds$SU01_09) = "System Usability Scale (SUS): Ich fühlte mich sehr sicher bei der Benutzung des Programmes."
comment(ds$SU01_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$SU02_01) = "System Usability Scale (SUS): Ich denke, ich würde dieses Programm gerne häufiger benutzen."
comment(ds$SU02_02) = "System Usability Scale (SUS): Ich finde das Programm unnötig komplex. (umgepolt)"
comment(ds$SU02_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen."
comment(ds$SU02_04) = "System Usability Scale (SUS): Ich denke, ich würde die Unterstützung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$SU02_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert."
comment(ds$SU02_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$SU02_07) = "System Usability Scale (SUS): Ich könnte mir vorstellen, dass die meisten Leute sehr schnell lernen würden mit diesem Programm umzugehen."
comment(ds$SU02_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerfällig im Gebrauch. (umgepolt)"
comment(ds$SU02_09) = "System Usability Scale (SUS): Ich fühlte mich sehr sicher bei der Benutzung des Programmes."
comment(ds$SU02_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$UE01_01) = "User Experience Questionnaire: unerfreulich/erfreulich"
comment(ds$UE01_02) = "User Experience Questionnaire: unverständlich/verständlich"
comment(ds$UE01_03) = "User Experience Questionnaire: kreativ/phantasielos"
comment(ds$UE01_04) = "User Experience Questionnaire: leicht zu lernen/schwer zu lernen"
comment(ds$UE01_05) = "User Experience Questionnaire: wertvoll/minderwertig"
comment(ds$UE01_06) = "User Experience Questionnaire: langweilig/spannend"
comment(ds$UE01_07) = "User Experience Questionnaire: uninteressant/interessant"
comment(ds$UE01_08) = "User Experience Questionnaire: unberechenbar/voraussagbar"
comment(ds$UE01_09) = "User Experience Questionnaire: schnell/langsam"
comment(ds$UE01_10) = "User Experience Questionnaire: originell/konventionell"
comment(ds$UE01_11) = "User Experience Questionnaire: behindernd/unterstützend"
comment(ds$UE01_12) = "User Experience Questionnaire: gut/schlecht"
comment(ds$UE01_13) = "User Experience Questionnaire: kompliziert/einfach"
comment(ds$UE01_14) = "User Experience Questionnaire: abstoßend/anziehend"
comment(ds$UE01_15) = "User Experience Questionnaire: herkömmlich/neuartig"
comment(ds$UE01_16) = "User Experience Questionnaire: unangenehm/angenehm"
comment(ds$UE01_17) = "User Experience Questionnaire: sicher/unsicher"
comment(ds$UE01_18) = "User Experience Questionnaire: aktivierend/einschläfernd"
comment(ds$UE01_19) = "User Experience Questionnaire: erwartungskonform/nicht erwartungskonform"
comment(ds$UE01_20) = "User Experience Questionnaire: ineffizient/effizient"
comment(ds$UE01_21) = "User Experience Questionnaire: übersichtlich/verwirrend"
comment(ds$UE01_22) = "User Experience Questionnaire: unpragmatisch/pragmatisch"
comment(ds$UE01_23) = "User Experience Questionnaire: aufgeräumt/überladen"
comment(ds$UE01_24) = "User Experience Questionnaire: attraktiv/unattraktiv"
comment(ds$UE01_25) = "User Experience Questionnaire: sympathisch/unsympathisch"
comment(ds$UE01_26) = "User Experience Questionnaire: konservativ/innovativ"
comment(ds$UE02_01) = "User Experience Questionnaire: unerfreulich/erfreulich"
comment(ds$UE02_02) = "User Experience Questionnaire: unverständlich/verständlich"
comment(ds$UE02_03) = "User Experience Questionnaire: kreativ/phantasielos"
comment(ds$UE02_04) = "User Experience Questionnaire: leicht zu lernen/schwer zu lernen"
comment(ds$UE02_05) = "User Experience Questionnaire: wertvoll/minderwertig"
comment(ds$UE02_06) = "User Experience Questionnaire: langweilig/spannend"
comment(ds$UE02_07) = "User Experience Questionnaire: uninteressant/interessant"
comment(ds$UE02_08) = "User Experience Questionnaire: unberechenbar/voraussagbar"
comment(ds$UE02_09) = "User Experience Questionnaire: schnell/langsam"
comment(ds$UE02_10) = "User Experience Questionnaire: originell/konventionell"
comment(ds$UE02_11) = "User Experience Questionnaire: behindernd/unterstützend"
comment(ds$UE02_12) = "User Experience Questionnaire: gut/schlecht"
comment(ds$UE02_13) = "User Experience Questionnaire: kompliziert/einfach"
comment(ds$UE02_14) = "User Experience Questionnaire: abstoßend/anziehend"
comment(ds$UE02_15) = "User Experience Questionnaire: herkömmlich/neuartig"
comment(ds$UE02_16) = "User Experience Questionnaire: unangenehm/angenehm"
comment(ds$UE02_17) = "User Experience Questionnaire: sicher/unsicher"
comment(ds$UE02_18) = "User Experience Questionnaire: aktivierend/einschläfernd"
comment(ds$UE02_19) = "User Experience Questionnaire: erwartungskonform/nicht erwartungskonform"
comment(ds$UE02_20) = "User Experience Questionnaire: ineffizient/effizient"
comment(ds$UE02_21) = "User Experience Questionnaire: übersichtlich/verwirrend"
comment(ds$UE02_22) = "User Experience Questionnaire: unpragmatisch/pragmatisch"
comment(ds$UE02_23) = "User Experience Questionnaire: aufgeräumt/überladen"
comment(ds$UE02_24) = "User Experience Questionnaire: attraktiv/unattraktiv"
comment(ds$UE02_25) = "User Experience Questionnaire: sympathisch/unsympathisch"
comment(ds$UE02_26) = "User Experience Questionnaire: konservativ/innovativ"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
comment(ds$TIME005) = "Verweildauer Seite 5"
comment(ds$TIME006) = "Verweildauer Seite 6"
comment(ds$TIME007) = "Verweildauer Seite 7"
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

