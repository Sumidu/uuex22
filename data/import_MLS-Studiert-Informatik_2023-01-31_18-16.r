# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/MLS-Studiert-Informatik/?act=3GqgFdKREkI6RfRXnLuQRcQE"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","A003_01","A003_02","A003_03",
    "A003_04","A003_05","A003_06","A003_07","A003_08","A003_09","A003_10","A102_01",
    "A102_02","A102_03","A102_04","A102_05","A102_06","A102_07","A102_08","A102_09",
    "A102_10","A102_11","A102_12","A102_13","A102_14","A102_15","A102_16","A102_17",
    "A102_18","A102_19","A102_20","A102_21","A102_22","A102_23","A102_24","A102_25",
    "TIME001","TIME002","TIME003","TIME004","TIME005","TIME_SUM","MAILSENT",
    "LASTDATA","FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", A003_01="numeric", A003_02="numeric",
    A003_03="numeric", A003_04="numeric", A003_05="numeric", A003_06="numeric",
    A003_07="numeric", A003_08="numeric", A003_09="numeric", A003_10="numeric",
    A102_01="numeric", A102_02="numeric", A102_03="numeric", A102_04="numeric",
    A102_05="numeric", A102_06="numeric", A102_07="numeric", A102_08="numeric",
    A102_09="numeric", A102_10="numeric", A102_11="numeric", A102_12="numeric",
    A102_13="numeric", A102_14="numeric", A102_15="numeric", A102_16="numeric",
    A102_17="numeric", A102_18="numeric", A102_19="numeric", A102_20="numeric",
    A102_21="numeric", A102_22="numeric", A102_23="numeric", A102_24="numeric",
    A102_25="numeric", TIME001="integer", TIME002="integer", TIME003="integer",
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

attr(ds, "project") = "MLS-Studiert-Informatik"
attr(ds, "description") = "UUX Eng Uebung 11"
attr(ds, "date") = "2023-01-31 18:16:12"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
attr(ds$A003_01,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_01,"2") = "[1]"
attr(ds$A003_01,"3") = "[2]"
attr(ds$A003_01,"4") = "[3]"
attr(ds$A003_01,"5") = "stimme voll zu [4]"
attr(ds$A003_01,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_02,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_02,"2") = "[1]"
attr(ds$A003_02,"3") = "[2]"
attr(ds$A003_02,"4") = "[3]"
attr(ds$A003_02,"5") = "stimme voll zu [4]"
attr(ds$A003_02,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_03,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_03,"2") = "[1]"
attr(ds$A003_03,"3") = "[2]"
attr(ds$A003_03,"4") = "[3]"
attr(ds$A003_03,"5") = "stimme voll zu [4]"
attr(ds$A003_03,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_04,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_04,"2") = "[1]"
attr(ds$A003_04,"3") = "[2]"
attr(ds$A003_04,"4") = "[3]"
attr(ds$A003_04,"5") = "stimme voll zu [4]"
attr(ds$A003_04,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_05,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_05,"2") = "[1]"
attr(ds$A003_05,"3") = "[2]"
attr(ds$A003_05,"4") = "[3]"
attr(ds$A003_05,"5") = "stimme voll zu [4]"
attr(ds$A003_05,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_06,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_06,"2") = "[1]"
attr(ds$A003_06,"3") = "[2]"
attr(ds$A003_06,"4") = "[3]"
attr(ds$A003_06,"5") = "stimme voll zu [4]"
attr(ds$A003_06,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_07,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_07,"2") = "[1]"
attr(ds$A003_07,"3") = "[2]"
attr(ds$A003_07,"4") = "[3]"
attr(ds$A003_07,"5") = "stimme voll zu [4]"
attr(ds$A003_07,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_08,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_08,"2") = "[1]"
attr(ds$A003_08,"3") = "[2]"
attr(ds$A003_08,"4") = "[3]"
attr(ds$A003_08,"5") = "stimme voll zu [4]"
attr(ds$A003_08,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_09,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_09,"2") = "[1]"
attr(ds$A003_09,"3") = "[2]"
attr(ds$A003_09,"4") = "[3]"
attr(ds$A003_09,"5") = "stimme voll zu [4]"
attr(ds$A003_09,"-1") = "kann ich nicht beurteilen"
attr(ds$A003_10,"1") = "stimme gar nicht zu [0]"
attr(ds$A003_10,"2") = "[1]"
attr(ds$A003_10,"3") = "[2]"
attr(ds$A003_10,"4") = "[3]"
attr(ds$A003_10,"5") = "stimme voll zu [4]"
attr(ds$A003_10,"-1") = "kann ich nicht beurteilen"
attr(ds$A102_01,"1") = "Unerfreulich"
attr(ds$A102_01,"7") = "Erfreulich"
attr(ds$A102_02,"1") = "Unverständlich"
attr(ds$A102_02,"7") = "Verständlich"
attr(ds$A102_03,"1") = "Kreativ"
attr(ds$A102_03,"7") = "Unkreativ"
attr(ds$A102_04,"1") = "Leicht zu lernen"
attr(ds$A102_04,"7") = "Schwer zu lernen"
attr(ds$A102_05,"1") = "Wertvoll"
attr(ds$A102_05,"7") = "Minderwertig"
attr(ds$A102_06,"1") = "Langweilig"
attr(ds$A102_06,"7") = "Spannend"
attr(ds$A102_07,"1") = "Uninteressant"
attr(ds$A102_07,"7") = "Interessant"
attr(ds$A102_08,"1") = "Unberechenbar"
attr(ds$A102_08,"7") = "Voraussagbar"
attr(ds$A102_09,"1") = "Schnell"
attr(ds$A102_09,"7") = "Langsam"
attr(ds$A102_10,"1") = "Originell"
attr(ds$A102_10,"7") = "Konventionell"
attr(ds$A102_11,"1") = "Behindernd"
attr(ds$A102_11,"7") = "Unterstützend"
attr(ds$A102_12,"1") = "Gut"
attr(ds$A102_12,"7") = "Schlecht"
attr(ds$A102_13,"1") = "Komplziert"
attr(ds$A102_13,"7") = "Einfach"
attr(ds$A102_14,"1") = "Abstoßend"
attr(ds$A102_14,"7") = "Anziehend"
attr(ds$A102_15,"1") = "Herkömlich"
attr(ds$A102_15,"7") = "Neuartig"
attr(ds$A102_16,"1") = "Unangenehm"
attr(ds$A102_16,"7") = "Angenehm"
attr(ds$A102_17,"1") = "Sicher"
attr(ds$A102_17,"7") = "Unsicher"
attr(ds$A102_18,"1") = "Aktivierend"
attr(ds$A102_18,"7") = "Einschläfernd"
attr(ds$A102_19,"1") = "Erwartungskonform"
attr(ds$A102_19,"7") = "Nicht erwartungskonform"
attr(ds$A102_20,"1") = "Ineffizient"
attr(ds$A102_20,"7") = "Effizient"
attr(ds$A102_21,"1") = "Übersichtlich"
attr(ds$A102_21,"7") = "Verwirrend"
attr(ds$A102_22,"1") = "Unpragmatisch"
attr(ds$A102_22,"7") = "Aufgeräumt"
attr(ds$A102_23,"1") = "Attraktiv"
attr(ds$A102_23,"7") = "Unattraktiv"
attr(ds$A102_24,"1") = "Sympatisch"
attr(ds$A102_24,"7") = "Unsympathisch"
attr(ds$A102_25,"1") = "Konservativ"
attr(ds$A102_25,"7") = "Innovativ"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$A003_01) = "SUS-Fragen: Ich kann mir sehr gut vorstellen, das System regelmäßig zu nutzen."
comment(ds$A003_02) = "SUS-Fragen: Ich empfinde das System als unnötig komplex."
comment(ds$A003_03) = "SUS-Fragen: Ich empfinde das System als einfach zu nutzen."
comment(ds$A003_04) = "SUS-Fragen: Ich denke, dass ich technischen Support brauchen würde, um das System zu nutzen."
comment(ds$A003_05) = "SUS-Fragen: Ich finde, dass die verschiedenen Funktionen des Systems gut integriert sind."
comment(ds$A003_06) = "SUS-Fragen: Ich finde, dass es im System zu viele Inkonsistenzen gibt."
comment(ds$A003_07) = "SUS-Fragen: Ich kann mir vorstellen, dass die meisten Leute das System schnell zu beherrschen lernen."
comment(ds$A003_08) = "SUS-Fragen: Ich empfinde die Bedienung als sehr umständlich."
comment(ds$A003_09) = "SUS-Fragen: Ich habe mich bei der Nutzung des Systems sehr sicher gefühlt."
comment(ds$A003_10) = "SUS-Fragen: Ich musste eine Menge Dinge lernen, bevor ich mit dem System arbeiten konnte."
comment(ds$A102_01) = "UEQ-Fragen: Unerfreulich/Erfreulich"
comment(ds$A102_02) = "UEQ-Fragen: Unverständlich/Verständlich"
comment(ds$A102_03) = "UEQ-Fragen: Kreativ/Unkreativ"
comment(ds$A102_04) = "UEQ-Fragen: Leicht zu lernen/Schwer zu lernen"
comment(ds$A102_05) = "UEQ-Fragen: Wertvoll/Minderwertig"
comment(ds$A102_06) = "UEQ-Fragen: Langweilig/Spannend"
comment(ds$A102_07) = "UEQ-Fragen: Uninteressant/Interessant"
comment(ds$A102_08) = "UEQ-Fragen: Unberechenbar/Voraussagbar"
comment(ds$A102_09) = "UEQ-Fragen: Schnell/Langsam"
comment(ds$A102_10) = "UEQ-Fragen: Originell/Konventionell"
comment(ds$A102_11) = "UEQ-Fragen: Behindernd/Unterstützend"
comment(ds$A102_12) = "UEQ-Fragen: Gut/Schlecht"
comment(ds$A102_13) = "UEQ-Fragen: Komplziert/Einfach"
comment(ds$A102_14) = "UEQ-Fragen: Abstoßend/Anziehend"
comment(ds$A102_15) = "UEQ-Fragen: Herkömlich/Neuartig"
comment(ds$A102_16) = "UEQ-Fragen: Unangenehm/Angenehm"
comment(ds$A102_17) = "UEQ-Fragen: Sicher/Unsicher"
comment(ds$A102_18) = "UEQ-Fragen: Aktivierend/Einschläfernd"
comment(ds$A102_19) = "UEQ-Fragen: Erwartungskonform/Nicht erwartungskonform"
comment(ds$A102_20) = "UEQ-Fragen: Ineffizient/Effizient"
comment(ds$A102_21) = "UEQ-Fragen: Übersichtlich/Verwirrend"
comment(ds$A102_22) = "UEQ-Fragen: Unpragmatisch/Aufgeräumt"
comment(ds$A102_23) = "UEQ-Fragen: Attraktiv/Unattraktiv"
comment(ds$A102_24) = "UEQ-Fragen: Sympatisch/Unsympathisch"
comment(ds$A102_25) = "UEQ-Fragen: Konservativ/Innovativ"
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

