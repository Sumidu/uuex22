# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

ds_file = "https://www.soscisurvey.de/UxStudie/?act=E20DXF8WCDPuDTZPFQ48HwtF"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","A104","A106","A108_01",
    "S001_01","S001_02","S001_03","S001_04","S001_05","S001_06","S001_07","S001_08",
    "S001_09","S001_10","UE01_01","UE01_02","UE01_03","UE01_04","UE01_05","UE01_06",
    "UE01_07","UE01_08","UE01_09","UE01_10","UE01_11","UE01_12","UE01_13","UE01_14",
    "UE01_15","UE01_16","UE01_17","UE01_18","UE01_19","UE01_20","UE01_21","UE01_22",
    "UE01_23","UE01_24","UE01_25","UE01_26","TIME001","TIME002","TIME003","TIME004",
    "TIME_SUM","MAILSENT","LASTDATA","FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", A104="numeric", A106="numeric",
    A108_01="numeric", S001_01="numeric", S001_02="numeric", S001_03="numeric",
    S001_04="numeric", S001_05="numeric", S001_06="numeric", S001_07="numeric",
    S001_08="numeric", S001_09="numeric", S001_10="numeric", UE01_01="numeric",
    UE01_02="numeric", UE01_03="numeric", UE01_04="numeric", UE01_05="numeric",
    UE01_06="numeric", UE01_07="numeric", UE01_08="numeric", UE01_09="numeric",
    UE01_10="numeric", UE01_11="numeric", UE01_12="numeric", UE01_13="numeric",
    UE01_14="numeric", UE01_15="numeric", UE01_16="numeric", UE01_17="numeric",
    UE01_18="numeric", UE01_19="numeric", UE01_20="numeric", UE01_21="numeric",
    UE01_22="numeric", UE01_23="numeric", UE01_24="numeric", UE01_25="numeric",
    UE01_26="numeric", TIME001="integer", TIME002="integer", TIME003="integer",
    TIME004="integer", TIME_SUM="integer", MAILSENT="POSIXct",
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

attr(ds, "project") = "UxStudie"
attr(ds, "description") = "UX Studie"
attr(ds, "date") = "2023-01-31 18:14:42"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
ds$A104 = factor(ds$A104, levels=c("1","2","-1","-9"), labels=c("Termin wurde erfolgreich angepasst","Es kam eine Fehlermeldung","[NA] Weiß ich nicht","[NA] nicht beantwortet"), ordered=FALSE)
ds$A106 = factor(ds$A106, levels=c("1","2","3","4","-9"), labels=c("1 Tag","2 Tage","4 Tage","5 Tage","[NA] nicht beantwortet"), ordered=FALSE)
attr(ds$A108_01,"1") = "nein"
attr(ds$A108_01,"2") = "ja"
attr(ds$S001_01,"1") = "trifft voll zu"
attr(ds$S001_01,"5") = "trifft gar nicht zu"
attr(ds$S001_01,"-1") = "keine Angabe"
attr(ds$S001_02,"1") = "trifft voll zu"
attr(ds$S001_02,"5") = "trifft gar nicht zu"
attr(ds$S001_02,"-1") = "keine Angabe"
attr(ds$S001_03,"1") = "trifft voll zu"
attr(ds$S001_03,"5") = "trifft gar nicht zu"
attr(ds$S001_03,"-1") = "keine Angabe"
attr(ds$S001_04,"1") = "trifft voll zu"
attr(ds$S001_04,"5") = "trifft gar nicht zu"
attr(ds$S001_04,"-1") = "keine Angabe"
attr(ds$S001_05,"1") = "trifft voll zu"
attr(ds$S001_05,"5") = "trifft gar nicht zu"
attr(ds$S001_05,"-1") = "keine Angabe"
attr(ds$S001_06,"1") = "trifft voll zu"
attr(ds$S001_06,"5") = "trifft gar nicht zu"
attr(ds$S001_06,"-1") = "keine Angabe"
attr(ds$S001_07,"1") = "trifft voll zu"
attr(ds$S001_07,"5") = "trifft gar nicht zu"
attr(ds$S001_07,"-1") = "keine Angabe"
attr(ds$S001_08,"1") = "trifft voll zu"
attr(ds$S001_08,"5") = "trifft gar nicht zu"
attr(ds$S001_08,"-1") = "keine Angabe"
attr(ds$S001_09,"1") = "trifft voll zu"
attr(ds$S001_09,"5") = "trifft gar nicht zu"
attr(ds$S001_09,"-1") = "keine Angabe"
attr(ds$S001_10,"1") = "trifft voll zu"
attr(ds$S001_10,"5") = "trifft gar nicht zu"
attr(ds$S001_10,"-1") = "keine Angabe"
attr(ds$UE01_01,"1") = "unerfreulich"
attr(ds$UE01_01,"5") = "erfreulich"
attr(ds$UE01_02,"1") = "unverständlich"
attr(ds$UE01_02,"5") = "verständlich"
attr(ds$UE01_03,"1") = "phantasielos"
attr(ds$UE01_03,"5") = "kreativ"
attr(ds$UE01_04,"1") = "schwer zu lernen"
attr(ds$UE01_04,"5") = "leicht zu lernen"
attr(ds$UE01_05,"1") = "minderwertig"
attr(ds$UE01_05,"5") = "wertvoll"
attr(ds$UE01_06,"1") = "langweilig"
attr(ds$UE01_06,"5") = "spannend"
attr(ds$UE01_07,"1") = "uninteressant"
attr(ds$UE01_07,"5") = "interessant"
attr(ds$UE01_08,"1") = "unberechenbar"
attr(ds$UE01_08,"5") = "voraussagbar"
attr(ds$UE01_09,"1") = "schnell"
attr(ds$UE01_09,"5") = "langsam"
attr(ds$UE01_10,"1") = "konventionell"
attr(ds$UE01_10,"5") = "originell"
attr(ds$UE01_11,"1") = "behindernd"
attr(ds$UE01_11,"5") = "unterstützend"
attr(ds$UE01_12,"1") = "schlecht"
attr(ds$UE01_12,"5") = "gut"
attr(ds$UE01_13,"1") = "kompliziert"
attr(ds$UE01_13,"5") = "einfach"
attr(ds$UE01_14,"1") = "abstoßend"
attr(ds$UE01_14,"5") = "anziehend"
attr(ds$UE01_15,"1") = "herkömmlich"
attr(ds$UE01_15,"5") = "neuartig"
attr(ds$UE01_16,"1") = "unangenehm"
attr(ds$UE01_16,"5") = "angenehm"
attr(ds$UE01_17,"1") = "unsicher"
attr(ds$UE01_17,"5") = "sicher"
attr(ds$UE01_18,"1") = "einschläfernd"
attr(ds$UE01_18,"5") = "aktivierend"
attr(ds$UE01_19,"1") = "erwartungskonform"
attr(ds$UE01_19,"5") = "nicht erwartungskonform"
attr(ds$UE01_20,"1") = "ineffizient"
attr(ds$UE01_20,"5") = "unterstützend"
attr(ds$UE01_21,"1") = "verwirrend"
attr(ds$UE01_21,"5") = "übersichtlich"
attr(ds$UE01_22,"1") = "unattraktiv"
attr(ds$UE01_22,"5") = "attraktiv"
attr(ds$UE01_23,"1") = "unpragmatisch"
attr(ds$UE01_23,"5") = "pragmatisch"
attr(ds$UE01_24,"1") = "überladen"
attr(ds$UE01_24,"5") = "aufgeräumt"
attr(ds$UE01_25,"1") = "unsympatiisch"
attr(ds$UE01_25,"5") = "sympatisch"
attr(ds$UE01_26,"1") = "konservativ"
attr(ds$UE01_26,"5") = "innovativ"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgefüllt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$A104) = "Aufgabe 3 Frage"
comment(ds$A106) = "Aufgabe 4 Frage"
comment(ds$A108_01) = "Aufgabe 5 Frage: Hast du für heute noch To-Do\'s zu erledigen?"
comment(ds$S001_01) = "System Usability Scale (SUS): Ich denke, ich würde dieses Programm gerne häufiger benutzen. (umgepolt)"
comment(ds$S001_02) = "System Usability Scale (SUS): Ich finde das Programm unnötig komplex. (umgepolt)"
comment(ds$S001_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen. (umgepolt)"
comment(ds$S001_04) = "System Usability Scale (SUS): Ich denke, ich würde die Unterstützung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$S001_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert. (umgepolt)"
comment(ds$S001_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$S001_07) = "System Usability Scale (SUS): Ich könnte mir vorstellen, dass die meisten Leute sehr schnell lernen würden mit diesem Programm umzugehen. (umgepolt)"
comment(ds$S001_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerfällig im Gebrauch. (umgepolt)"
comment(ds$S001_09) = "System Usability Scale (SUS): Ich fühlte mich sehr sicher bei der Benutzung des Programmes. (umgepolt)"
comment(ds$S001_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$UE01_01) = "UEQ-S Pairs: unerfreulich/erfreulich"
comment(ds$UE01_02) = "UEQ-S Pairs: unverständlich/verständlich"
comment(ds$UE01_03) = "UEQ-S Pairs: phantasielos/kreativ"
comment(ds$UE01_04) = "UEQ-S Pairs: schwer zu lernen/leicht zu lernen"
comment(ds$UE01_05) = "UEQ-S Pairs: minderwertig/wertvoll"
comment(ds$UE01_06) = "UEQ-S Pairs: langweilig/spannend"
comment(ds$UE01_07) = "UEQ-S Pairs: uninteressant/interessant"
comment(ds$UE01_08) = "UEQ-S Pairs: unberechenbar/voraussagbar"
comment(ds$UE01_09) = "UEQ-S Pairs: schnell/langsam"
comment(ds$UE01_10) = "UEQ-S Pairs: konventionell/originell"
comment(ds$UE01_11) = "UEQ-S Pairs: behindernd/unterstützend"
comment(ds$UE01_12) = "UEQ-S Pairs: schlecht/gut"
comment(ds$UE01_13) = "UEQ-S Pairs: kompliziert/einfach"
comment(ds$UE01_14) = "UEQ-S Pairs: abstoßend/anziehend"
comment(ds$UE01_15) = "UEQ-S Pairs: herkömmlich/neuartig"
comment(ds$UE01_16) = "UEQ-S Pairs: unangenehm/angenehm"
comment(ds$UE01_17) = "UEQ-S Pairs: unsicher/sicher"
comment(ds$UE01_18) = "UEQ-S Pairs: einschläfernd/aktivierend"
comment(ds$UE01_19) = "UEQ-S Pairs: erwartungskonform/nicht erwartungskonform"
comment(ds$UE01_20) = "UEQ-S Pairs: ineffizient/unterstützend"
comment(ds$UE01_21) = "UEQ-S Pairs: verwirrend/übersichtlich"
comment(ds$UE01_22) = "UEQ-S Pairs: unattraktiv/attraktiv"
comment(ds$UE01_23) = "UEQ-S Pairs: unpragmatisch/pragmatisch"
comment(ds$UE01_24) = "UEQ-S Pairs: überladen/aufgeräumt"
comment(ds$UE01_25) = "UEQ-S Pairs: unsympatiisch/sympatisch"
comment(ds$UE01_26) = "UEQ-S Pairs: konservativ/innovativ"
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

