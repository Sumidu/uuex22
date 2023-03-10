# This script reads a CSV file in GNU R.
# While reading this file, comments will be created for all variables.
# The comments for values will be stored as attributes (attr) as well.

ds_file = "https://www.soscisurvey.de/DieseEineGruppe/?act=Is6tl9LUyeOm753cckANm6o0"

ds = read.table(
  file=ds_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","SU01_01","SU01_02","SU01_03",
    "SU01_04","SU01_05","SU01_06","SU01_07","SU01_08","SU01_09","SU01_10","UE01_01",
    "UE01_02","UE01_03","UE01_04","UE01_05","UE01_06","UE01_07","UE01_08","UE01_09",
    "UE01_10","UE01_11","UE01_12","UE01_13","UE01_14","UE01_15","UE01_16","UE01_17",
    "UE01_18","UE01_19","UE01_20","UE01_21","UE01_22","UE01_23","UE01_24","UE01_25",
    "UE01_26","TIME001","TIME002","TIME003","TIME004","TIME_SUM","MAILSENT",
    "LASTDATA","FINISHED","Q_VIEWER","LASTPAGE","MAXPAGE"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", SU01_01="numeric", SU01_02="numeric",
    SU01_03="numeric", SU01_04="numeric", SU01_05="numeric", SU01_06="numeric",
    SU01_07="numeric", SU01_08="numeric", SU01_09="numeric", SU01_10="numeric",
    UE01_01="numeric", UE01_02="numeric", UE01_03="numeric", UE01_04="numeric",
    UE01_05="numeric", UE01_06="numeric", UE01_07="numeric", UE01_08="numeric",
    UE01_09="numeric", UE01_10="numeric", UE01_11="numeric", UE01_12="numeric",
    UE01_13="numeric", UE01_14="numeric", UE01_15="numeric", UE01_16="numeric",
    UE01_17="numeric", UE01_18="numeric", UE01_19="numeric", UE01_20="numeric",
    UE01_21="numeric", UE01_22="numeric", UE01_23="numeric", UE01_24="numeric",
    UE01_25="numeric", UE01_26="numeric", TIME001="integer", TIME002="integer",
    TIME003="integer", TIME004="integer", TIME_SUM="integer",
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

attr(ds, "project") = "DieseEineGruppe"
attr(ds, "description") = "Diese Eine Gruppe"
attr(ds, "date") = "2023-01-31 18:13:18"
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
attr(ds$UE01_01,"1") = "unerfreulich [1]"
attr(ds$UE01_01,"7") = "erfreulich [7]"
attr(ds$UE01_01,"2") = "[2]"
attr(ds$UE01_01,"3") = "[3]"
attr(ds$UE01_01,"4") = "[4]"
attr(ds$UE01_01,"5") = "[5]"
attr(ds$UE01_01,"6") = "[6]"
attr(ds$UE01_02,"1") = "unverst??ndlich [1]"
attr(ds$UE01_02,"7") = "verst??ndlich [7]"
attr(ds$UE01_02,"2") = "[2]"
attr(ds$UE01_02,"3") = "[3]"
attr(ds$UE01_02,"4") = "[4]"
attr(ds$UE01_02,"5") = "[5]"
attr(ds$UE01_02,"6") = "[6]"
attr(ds$UE01_03,"1") = "kreativ [1]"
attr(ds$UE01_03,"7") = "phantasielos [7]"
attr(ds$UE01_03,"2") = "[2]"
attr(ds$UE01_03,"3") = "[3]"
attr(ds$UE01_03,"4") = "[4]"
attr(ds$UE01_03,"5") = "[5]"
attr(ds$UE01_03,"6") = "[6]"
attr(ds$UE01_04,"1") = "leicht zu lernen [1]"
attr(ds$UE01_04,"7") = "schwer zu lernen [7]"
attr(ds$UE01_04,"2") = "[2]"
attr(ds$UE01_04,"3") = "[3]"
attr(ds$UE01_04,"4") = "[4]"
attr(ds$UE01_04,"5") = "[5]"
attr(ds$UE01_04,"6") = "[6]"
attr(ds$UE01_05,"1") = "wertvoll [1]"
attr(ds$UE01_05,"7") = "minderwertig [7]"
attr(ds$UE01_05,"2") = "[2]"
attr(ds$UE01_05,"3") = "[3]"
attr(ds$UE01_05,"4") = "[4]"
attr(ds$UE01_05,"5") = "[5]"
attr(ds$UE01_05,"6") = "[6]"
attr(ds$UE01_06,"1") = "langweilig [1]"
attr(ds$UE01_06,"7") = "spannend [7]"
attr(ds$UE01_06,"2") = "[2]"
attr(ds$UE01_06,"3") = "[3]"
attr(ds$UE01_06,"4") = "[4]"
attr(ds$UE01_06,"5") = "[5]"
attr(ds$UE01_06,"6") = "[6]"
attr(ds$UE01_07,"1") = "uninteressant [1]"
attr(ds$UE01_07,"7") = "interessant [7]"
attr(ds$UE01_07,"2") = "[2]"
attr(ds$UE01_07,"3") = "[3]"
attr(ds$UE01_07,"4") = "[4]"
attr(ds$UE01_07,"5") = "[5]"
attr(ds$UE01_07,"6") = "[6]"
attr(ds$UE01_08,"1") = "unberechenbar [1]"
attr(ds$UE01_08,"7") = "voraussagbar [7]"
attr(ds$UE01_08,"2") = "[2]"
attr(ds$UE01_08,"3") = "[3]"
attr(ds$UE01_08,"4") = "[4]"
attr(ds$UE01_08,"5") = "[5]"
attr(ds$UE01_08,"6") = "[6]"
attr(ds$UE01_09,"1") = "schnell [1]"
attr(ds$UE01_09,"7") = "langsam [7]"
attr(ds$UE01_09,"2") = "[2]"
attr(ds$UE01_09,"3") = "[3]"
attr(ds$UE01_09,"4") = "[4]"
attr(ds$UE01_09,"5") = "[5]"
attr(ds$UE01_09,"6") = "[6]"
attr(ds$UE01_10,"1") = "originell [1]"
attr(ds$UE01_10,"7") = "konventionell [7]"
attr(ds$UE01_10,"2") = "[2]"
attr(ds$UE01_10,"3") = "[3]"
attr(ds$UE01_10,"4") = "[4]"
attr(ds$UE01_10,"5") = "[5]"
attr(ds$UE01_10,"6") = "[6]"
attr(ds$UE01_11,"1") = "behindernd [1]"
attr(ds$UE01_11,"7") = "unterst??tzend [7]"
attr(ds$UE01_11,"2") = "[2]"
attr(ds$UE01_11,"3") = "[3]"
attr(ds$UE01_11,"4") = "[4]"
attr(ds$UE01_11,"5") = "[5]"
attr(ds$UE01_11,"6") = "[6]"
attr(ds$UE01_12,"1") = "gut [1]"
attr(ds$UE01_12,"7") = "schlecht [7]"
attr(ds$UE01_12,"2") = "[2]"
attr(ds$UE01_12,"3") = "[3]"
attr(ds$UE01_12,"4") = "[4]"
attr(ds$UE01_12,"5") = "[5]"
attr(ds$UE01_12,"6") = "[6]"
attr(ds$UE01_13,"1") = "kompliziert [1]"
attr(ds$UE01_13,"7") = "einfach [7]"
attr(ds$UE01_13,"2") = "[2]"
attr(ds$UE01_13,"3") = "[3]"
attr(ds$UE01_13,"4") = "[4]"
attr(ds$UE01_13,"5") = "[5]"
attr(ds$UE01_13,"6") = "[6]"
attr(ds$UE01_14,"1") = "absto??end [1]"
attr(ds$UE01_14,"7") = "anziehend [7]"
attr(ds$UE01_14,"2") = "[2]"
attr(ds$UE01_14,"3") = "[3]"
attr(ds$UE01_14,"4") = "[4]"
attr(ds$UE01_14,"5") = "[5]"
attr(ds$UE01_14,"6") = "[6]"
attr(ds$UE01_15,"1") = "herk??mmlich [1]"
attr(ds$UE01_15,"7") = "neuartig [7]"
attr(ds$UE01_15,"2") = "[2]"
attr(ds$UE01_15,"3") = "[3]"
attr(ds$UE01_15,"4") = "[4]"
attr(ds$UE01_15,"5") = "[5]"
attr(ds$UE01_15,"6") = "[6]"
attr(ds$UE01_16,"1") = "unangenehm [1]"
attr(ds$UE01_16,"7") = "angenehm [7]"
attr(ds$UE01_16,"2") = "[2]"
attr(ds$UE01_16,"3") = "[3]"
attr(ds$UE01_16,"4") = "[4]"
attr(ds$UE01_16,"5") = "[5]"
attr(ds$UE01_16,"6") = "[6]"
attr(ds$UE01_17,"1") = "sicher [1]"
attr(ds$UE01_17,"7") = "unsicher [7]"
attr(ds$UE01_17,"2") = "[2]"
attr(ds$UE01_17,"3") = "[3]"
attr(ds$UE01_17,"4") = "[4]"
attr(ds$UE01_17,"5") = "[5]"
attr(ds$UE01_17,"6") = "[6]"
attr(ds$UE01_18,"1") = "aktivierend [1]"
attr(ds$UE01_18,"7") = "einschl??fernd [7]"
attr(ds$UE01_18,"2") = "[2]"
attr(ds$UE01_18,"3") = "[3]"
attr(ds$UE01_18,"4") = "[4]"
attr(ds$UE01_18,"5") = "[5]"
attr(ds$UE01_18,"6") = "[6]"
attr(ds$UE01_19,"1") = "erwartungskonform [1]"
attr(ds$UE01_19,"7") = "nicht erwartungskonform [7]"
attr(ds$UE01_19,"2") = "[2]"
attr(ds$UE01_19,"3") = "[3]"
attr(ds$UE01_19,"4") = "[4]"
attr(ds$UE01_19,"5") = "[5]"
attr(ds$UE01_19,"6") = "[6]"
attr(ds$UE01_20,"1") = "ineffizient [1]"
attr(ds$UE01_20,"7") = "effizient [7]"
attr(ds$UE01_20,"2") = "[2]"
attr(ds$UE01_20,"3") = "[3]"
attr(ds$UE01_20,"4") = "[4]"
attr(ds$UE01_20,"5") = "[5]"
attr(ds$UE01_20,"6") = "[6]"
attr(ds$UE01_21,"1") = "??bersichtlich [1]"
attr(ds$UE01_21,"7") = "verwirrend [7]"
attr(ds$UE01_21,"2") = "[2]"
attr(ds$UE01_21,"3") = "[3]"
attr(ds$UE01_21,"4") = "[4]"
attr(ds$UE01_21,"5") = "[5]"
attr(ds$UE01_21,"6") = "[6]"
attr(ds$UE01_22,"1") = "unpragmatisch [1]"
attr(ds$UE01_22,"7") = "pragmatisch [7]"
attr(ds$UE01_22,"2") = "[2]"
attr(ds$UE01_22,"3") = "[3]"
attr(ds$UE01_22,"4") = "[4]"
attr(ds$UE01_22,"5") = "[5]"
attr(ds$UE01_22,"6") = "[6]"
attr(ds$UE01_23,"1") = "aufger??umt [1]"
attr(ds$UE01_23,"7") = "??berladen [7]"
attr(ds$UE01_23,"2") = "[2]"
attr(ds$UE01_23,"3") = "[3]"
attr(ds$UE01_23,"4") = "[4]"
attr(ds$UE01_23,"5") = "[5]"
attr(ds$UE01_23,"6") = "[6]"
attr(ds$UE01_24,"1") = "attraktiv [1]"
attr(ds$UE01_24,"7") = "unattraktiv [7]"
attr(ds$UE01_24,"2") = "[2]"
attr(ds$UE01_24,"3") = "[3]"
attr(ds$UE01_24,"4") = "[4]"
attr(ds$UE01_24,"5") = "[5]"
attr(ds$UE01_24,"6") = "[6]"
attr(ds$UE01_25,"1") = "sympathisch [1]"
attr(ds$UE01_25,"7") = "unsympathisch [7]"
attr(ds$UE01_25,"2") = "[2]"
attr(ds$UE01_25,"3") = "[3]"
attr(ds$UE01_25,"4") = "[4]"
attr(ds$UE01_25,"5") = "[5]"
attr(ds$UE01_25,"6") = "[6]"
attr(ds$UE01_26,"1") = "konservativ [1]"
attr(ds$UE01_26,"7") = "innovativ [7]"
attr(ds$UE01_26,"2") = "[2]"
attr(ds$UE01_26,"3") = "[3]"
attr(ds$UE01_26,"4") = "[4]"
attr(ds$UE01_26,"5") = "[5]"
attr(ds$UE01_26,"6") = "[6]"
attr(ds$FINISHED,"F") = "abgebrochen"
attr(ds$FINISHED,"T") = "ausgef??llt"
attr(ds$Q_VIEWER,"F") = "Teilnehmer"
attr(ds$Q_VIEWER,"T") = "Durchklicker"
comment(ds$SERIAL) = "Seriennummer (sofern verwendet)"
comment(ds$REF) = "Referenz (sofern im Link angegeben)"
comment(ds$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(ds$MODE) = "Interview-Modus"
comment(ds$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(ds$SU01_01) = "System Usability Scale (SUS): Ich denke, ich w??rde dieses Programm gerne h??ufiger benutzen."
comment(ds$SU01_02) = "System Usability Scale (SUS): Ich finde das Programm unn??tig komplex. (umgepolt)"
comment(ds$SU01_03) = "System Usability Scale (SUS): Ich finde, das Programm ist einfach zu benutzen."
comment(ds$SU01_04) = "System Usability Scale (SUS): Ich denke, ich w??rde die Unterst??tzung einer erfahreneren Person brauchen, um in der Lage zu sein, das Programm zu benutzen. (umgepolt)"
comment(ds$SU01_05) = "System Usability Scale (SUS): Ich finde, die verschiedenen Funktionen in diesem Programm sind gut integriert."
comment(ds$SU01_06) = "System Usability Scale (SUS): Ich denke, es gibt zu viele Inkonsistenzen in diesem Programm. (umgepolt)"
comment(ds$SU01_07) = "System Usability Scale (SUS): Ich k??nnte mir vorstellen, dass die meisten Leute sehr schnell lernen w??rden mit diesem Programm umzugehen."
comment(ds$SU01_08) = "System Usability Scale (SUS): Ich fand das Programm sehr schwerf??llig im Gebrauch. (umgepolt)"
comment(ds$SU01_09) = "System Usability Scale (SUS): Ich f??hlte mich sehr sicher bei der Benutzung des Programmes."
comment(ds$SU01_10) = "System Usability Scale (SUS): Ich musste eine Menge lernen, bevor ich mit diesem Programm zurechtkam. (umgepolt)"
comment(ds$UE01_01) = "UEQ-Skala: unerfreulich/erfreulich"
comment(ds$UE01_02) = "UEQ-Skala: unverst??ndlich/verst??ndlich"
comment(ds$UE01_03) = "UEQ-Skala: kreativ/phantasielos"
comment(ds$UE01_04) = "UEQ-Skala: leicht zu lernen/schwer zu lernen"
comment(ds$UE01_05) = "UEQ-Skala: wertvoll/minderwertig"
comment(ds$UE01_06) = "UEQ-Skala: langweilig/spannend"
comment(ds$UE01_07) = "UEQ-Skala: uninteressant/interessant"
comment(ds$UE01_08) = "UEQ-Skala: unberechenbar/voraussagbar"
comment(ds$UE01_09) = "UEQ-Skala: schnell/langsam"
comment(ds$UE01_10) = "UEQ-Skala: originell/konventionell"
comment(ds$UE01_11) = "UEQ-Skala: behindernd/unterst??tzend"
comment(ds$UE01_12) = "UEQ-Skala: gut/schlecht"
comment(ds$UE01_13) = "UEQ-Skala: kompliziert/einfach"
comment(ds$UE01_14) = "UEQ-Skala: absto??end/anziehend"
comment(ds$UE01_15) = "UEQ-Skala: herk??mmlich/neuartig"
comment(ds$UE01_16) = "UEQ-Skala: unangenehm/angenehm"
comment(ds$UE01_17) = "UEQ-Skala: sicher/unsicher"
comment(ds$UE01_18) = "UEQ-Skala: aktivierend/einschl??fernd"
comment(ds$UE01_19) = "UEQ-Skala: erwartungskonform/nicht erwartungskonform"
comment(ds$UE01_20) = "UEQ-Skala: ineffizient/effizient"
comment(ds$UE01_21) = "UEQ-Skala: ??bersichtlich/verwirrend"
comment(ds$UE01_22) = "UEQ-Skala: unpragmatisch/pragmatisch"
comment(ds$UE01_23) = "UEQ-Skala: aufger??umt/??berladen"
comment(ds$UE01_24) = "UEQ-Skala: attraktiv/unattraktiv"
comment(ds$UE01_25) = "UEQ-Skala: sympathisch/unsympathisch"
comment(ds$UE01_26) = "UEQ-Skala: konservativ/innovativ"
comment(ds$TIME001) = "Verweildauer Seite 1"
comment(ds$TIME002) = "Verweildauer Seite 2"
comment(ds$TIME003) = "Verweildauer Seite 3"
comment(ds$TIME004) = "Verweildauer Seite 4"
comment(ds$TIME_SUM) = "Verweildauer gesamt (ohne Ausrei??er)"
comment(ds$MAILSENT) = "Versandzeitpunkt der Einladungsmail (nur f??r nicht-anonyme Adressaten)"
comment(ds$LASTDATA) = "Zeitpunkt als der Datensatz das letzte mal ge??ndert wurde"
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

