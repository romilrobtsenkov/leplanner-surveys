#$Rev: 9205 $ .
data <- read.table("survey_39358_data_file.csv", sep=",", quote = "'", na.strings=c("","\"\""), stringsAsFactors=FALSE)

data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"

data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"

#Field hidden

data[, 3] <- as.character(data[, 3])
attributes(data)$variable.labels[3] <- "startlanguage"
names(data)[3] <- "startlanguage"

data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "[Puudub lihtne eestikeelne veebit��riist �pistsenaariumide kirjeldamiseks ja jagamiseks] Kui kriitilised on Teie arvates j�rgmised probleemid Eesti �petajate jaoks?"
data[, 4] <- factor(data[, 4], levels=c( "K1", "K2", "K3", "K4", "K5"), labels=c( "Kriitiline", "Pigem kriitiline", "Nii ja naa", "Pigem ei ole kriitiline", "Ei ole kriitiline"))
names(data)[4] <- "LP11_SQ001"

data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "[Puudub v�imalus �pistsenaariumeid kiiresti visualiseerida ja kompaktselt esitada ] Kui kriitilised on Teie arvates j�rgmised probleemid Eesti �petajate jaoks?"
data[, 5] <- factor(data[, 5], levels=c( "K1", "K2", "K3", "K4", "K5"), labels=c( "Kriitiline", "Pigem kriitiline", "Nii ja naa", "Pigem ei ole kriitiline", "Ei ole kriitiline"))
names(data)[5] <- "LP11_SQ002"

data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "[Pole lihtne leida infot teiste �petajate poolt loodud ja j�releproovitud uutest �petamisviisidest ja �ppematerjalidest] Kui kriitilised on Teie arvates j�rgmised probleemid Eesti �petajate jaoks?"
data[, 6] <- factor(data[, 6], levels=c( "K1", "K2", "K3", "K4", "K5"), labels=c( "Kriitiline", "Pigem kriitiline", "Nii ja naa", "Pigem ei ole kriitiline", "Ei ole kriitiline"))
names(data)[6] <- "LP11_SQ003"

data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "[�petajatel pole piisavalt aega ja ideid, et kavandada oma tunde ja luua �ppevara teistmoodi kui tavaliselt, vastavalt muutunud �pik�situsele ] Kui kriitilised on Teie arvates j�rgmised probleemid Eesti �petajate jaoks?"
data[, 7] <- factor(data[, 7], levels=c( "K1", "K2", "K3", "K4", "K5"), labels=c( "Kriitiline", "Pigem kriitiline", "Nii ja naa", "Pigem ei ole kriitiline", "Ei ole kriitiline"))
names(data)[7] <- "LP11_SQ004"

data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "[LePlanner v�imaldab mul mugavalt kirjeldada innovaatilisi �pistsenaariumeid ]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 8] <- factor(data[, 8], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[8] <- "LP12_SQ001"

data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "[LePlanner v�imaldab mul mugavalt jagada oma �pistsenaariumeid teiste �petajatega ]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 9] <- factor(data[, 9], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[9] <- "LP12_SQ002"

data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "[LePlanneri �pistsenaariumi sisestusvorm on arusaadav ja lihtne]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 10] <- factor(data[, 10], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[10] <- "LP12_SQ003"

data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "[LePlanneri �pistsenaariumi visuaalne esitlusviis on kergesti m�istetav ]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 11] <- factor(data[, 11], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[11] <- "LP12_SQ004"

data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "[LePlanner v�imaldab mul h�lpsasti leida teiste �petajate loodud tunnistsenaariumeid ]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 12] <- factor(data[, 12], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[12] <- "LP12_SQ005"

data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "[LePlanner aitab mul kavandada tunde l�htudes muutunud �pik�situsest ]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 13] <- factor(data[, 13], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[13] <- "LP12_SQ006"

data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "Milliseid hinnanguid v�i m�rkusi v�ite veel omalt poolt lisada LePlanneri kohta oma kasutamise kogemuse p�hjal?"
names(data)[14] <- "LP13"

data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "[Saan j�lgida teiste �petajate tegevust LePlanner keskkonnas]         Kui oluliseks Te peate j�rgmisi funktsionaalsusi LePlanneri keskkonnas?�"
data[, 15] <- factor(data[, 15], levels=c( "O1", "O2", "O3", "O4", "O5"), labels=c( "Oluline", "Pigem oluline", "Nii ja naa", "Pigem ei ole oluline", "Ei ole oluline"))
names(data)[15] <- "LP14_SQ001"

data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[Saan m�rkida mulle meeldinud �pistsenaariumeid lemmikuks]         Kui oluliseks Te peate j�rgmisi funktsionaalsusi LePlanneri keskkonnas?�"
data[, 16] <- factor(data[, 16], levels=c( "O1", "O2", "O3", "O4", "O5"), labels=c( "Oluline", "Pigem oluline", "Nii ja naa", "Pigem ei ole oluline", "Ei ole oluline"))
names(data)[16] <- "LP14_SQ002"

data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[Saan kiire �levaate teise �petaja loodud �pistsenaariumist t�nu lihtsale ja loogilisele visualiseerimisele ajatelje kujul]         Kui oluliseks Te peate j�rgmisi funktsionaalsusi LePlanneri keskkonnas?�"
data[, 17] <- factor(data[, 17], levels=c( "O1", "O2", "O3", "O4", "O5"), labels=c( "Oluline", "Pigem oluline", "Nii ja naa", "Pigem ei ole oluline", "Ei ole oluline"))
names(data)[17] <- "LP14_SQ003"

data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[Saan �pistsenaariumi jagada �pilastele, et anda �levaade eelseisvast tunnist ]         Kui oluliseks Te peate j�rgmisi funktsionaalsusi LePlanneri keskkonnas?�"
data[, 18] <- factor(data[, 18], levels=c( "O1", "O2", "O3", "O4", "O5"), labels=c( "Oluline", "Pigem oluline", "Nii ja naa", "Pigem ei ole oluline", "Ei ole oluline"))
names(data)[18] <- "LP14_SQ004"

data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[Saan tunnitegevusele lisatud materjalile m��rata �ppijapoolse kaasautorluse taseme (ingl Level of Co-Authorship) ]         Kui oluliseks Te peate j�rgmisi funktsionaalsusi LePlanneri keskkonnas?�"
data[, 19] <- factor(data[, 19], levels=c( "O1", "O2", "O3", "O4", "O5"), labels=c( "Oluline", "Pigem oluline", "Nii ja naa", "Pigem ei ole oluline", "Ei ole oluline"))
names(data)[19] <- "LP14_SQ005"

data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[Saan siduda tunni tegevusi ja �ppematerjale ainekava �pitulemustega]         Kui oluliseks Te peate j�rgmisi funktsionaalsusi LePlanneri keskkonnas?�"
data[, 20] <- factor(data[, 20], levels=c( "O1", "O2", "O3", "O4", "O5"), labels=c( "Oluline", "Pigem oluline", "Nii ja naa", "Pigem ei ole oluline", "Ei ole oluline"))
names(data)[20] <- "LP14_SQ006"

data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[Saan loodud �pistsenaariumit kasutada tunnikonspekti asemel ]         Kui oluliseks Te peate j�rgmisi funktsionaalsusi LePlanneri keskkonnas?�"
data[, 21] <- factor(data[, 21], levels=c( "O1", "O2", "O3", "O4", "O5"), labels=c( "Oluline", "Pigem oluline", "Nii ja naa", "Pigem ei ole oluline", "Ei ole oluline"))
names(data)[21] <- "LP14_SQ007"

data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "Millised LePlanneri funktsionaalsused (lisaks eelpool loetletutele) olid Teie jaoks olulised?"
names(data)[22] <- "LP15"

data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[Saan lisada paralleelselt toimuvaid �pitegevusi (nt �ks r�hm esitleb, teine r�hm konspekteerib) ]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 23] <- factor(data[, 23], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[23] <- "LP16_SQ001"

data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[Saan eristada korduvaid tegevusi (nt �petaja annab tagasisidet igale �pilasele) ]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 24] <- factor(data[, 24], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[24] <- "LP16_SQ002"

data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[Saan �hele �pilase v�i �petaja tegevusele lisada mitu �ppematerjali ]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 25] <- factor(data[, 25], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[25] <- "LP16_SQ003"

data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[Saan eristada mittedigitaalseid materjale ]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 26] <- factor(data[, 26], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[26] <- "LP16_SQ004"

data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "[Saan �hele materjalile lisada mitu esitlusteenust (ingl conveyor)]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 27] <- factor(data[, 27], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[27] <- "LP16_SQ005"

data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "[Saan �hele materjalile lisada mitu digiseadet (ingl display)]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 28] <- factor(data[, 28], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[28] <- "LP16_SQ006"

data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "[Saan lisada �pistsenaariumid kogumikesse (nt teemade kaupa)]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 29] <- factor(data[, 29], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[29] <- "LP16_SQ007"

data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "[Saan �pistsenaariumidesse lisada tuntud v�tteid/tehnikaid (nt m�istekaart)]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 30] <- factor(data[, 30], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[30] <- "LP16_SQ008"

data[, 31] <- as.character(data[, 31])
attributes(data)$variable.labels[31] <- "[Saan lisada �leminekud �pitegevuste vahele (nt r�hmade moodustamine, j��murdmism�ng ehk icebreaker)]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 31] <- factor(data[, 31], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[31] <- "LP16_SQ009"

data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "[Saan v�tta teiste �pistsenaariumeid aluseks ja neid mugandada ]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 32] <- factor(data[, 32], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[32] <- "LP16_SQ010"

data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "[Saan jagada �pistsenaariumit vaid �ksikutele kasutajatele (nt vaadata saavad ainult need, kellele edastan lingi)]         Kui vajalikuks Te peate j�rgmisi arendamisj�rgus funktsionaalsusi LePlanneri keskkonnas?�"
data[, 33] <- factor(data[, 33], levels=c( "V1", "V2", "V3", "V4", "V5"), labels=c( "Vajalik", "Pigem vajalik", "Nii ja naa", "Pigem ei ole vajalik", "Ei ole vajalik"))
names(data)[33] <- "LP16_SQ011"

data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "Milliseid t�iendavaid funktsionaalsusi tuleks Teie arvates veel lisada LePlannerile?�"
names(data)[34] <- "LP17"

data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "[LePlanneri kasutamine aitab mul tunde kavandades aega s��sta]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 35] <- factor(data[, 35], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[35] <- "LP18_SQ001"

data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "[LePlanneri abil loodud �pistsenaariumidel on oluline lisav��rtus v�rreldes traditsiooniliste tunnikavadega]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 36] <- factor(data[, 36], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[36] <- "LP18_SQ002"

data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[Kui kasutan LePlannerit, saan tunnid v�hema vaevaga kavandatud]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 37] <- factor(data[, 37], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[37] <- "LP18_SQ003"

data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "[Ma leian, et LePlanner on minu �petajat��s kasulik?]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega?"
data[, 38] <- factor(data[, 38], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[38] <- "LP18_SQ004"

data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[Elukestava �ppe strateegiast ja uuest riiklikust �ppekavast l�htuv haridusuuendus eeldab, et muudan oma �petamisviise]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 39] <- factor(data[, 39], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[39] <- "LP21_SQ001"

data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[Frontaalse �petamise (nt loeng) osakaal v�heneb]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 40] <- factor(data[, 40], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[40] <- "LP21_SQ002"

data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[�petaja roll muutub teadmiste vahendajast �pilaste �piprotsessi toetajaks]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 41] <- factor(data[, 41], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[41] <- "LP21_SQ003"

data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[�petaja roll muutub, kuna �pilased kasutavad digitehnoloogiat rohkem ja nutikamalt]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 42] <- factor(data[, 42], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[42] <- "LP21_SQ004"

data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[Hariduses toimuvate muutuste tulemusel v�heneb �petaja ja �ppijate otseste kontaktide sagedus]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 43] <- factor(data[, 43], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[43] <- "LP21_SQ005"

data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[Haridusuuenduste tulemusena tuleb �pilastel rohkem iseseisvalt �ppida]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 44] <- factor(data[, 44], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[44] <- "LP21_SQ006"

data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[Tulevikus kaasatakse �ppet��sse rohkem partnereid ja eksperte v�ljastpoolt kooli]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 45] <- factor(data[, 45], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[45] <- "LP21_SQ007"

data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[Digitehnoloogia arengust tingituna muutub �petaja roll teadmiste vahendajast �pilaste �piprotsessi toetajaks]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 46] <- factor(data[, 46], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[46] <- "LP21_SQ008"

data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[Haridusuuenduse m�jul suureneb �pilaste endi vastutus oma �piprotsessi eest]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 47] <- factor(data[, 47], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[47] <- "LP21_SQ009"

data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[Haridusuuenduse m�jul annan �pilastele rohkem valikuid seoses �pitegevuste ja -�lesannetega]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 48] <- factor(data[, 48], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[48] <- "LP21_SQ010"

data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[Lisaks �petajatele hakkavad kooliv�lised juhendajad m�ngima olulist rolli �pilaste �ppet��s]         Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega muutuste kohta �petamises ja �ppimises?"
data[, 49] <- factor(data[, 49], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[49] <- "LP21_SQ011"

data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "[Ma arvan, et �pilased suudavad ise m��ratleda, mida neil on vaja �ppida] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 50] <- factor(data[, 50], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[50] <- "LP22_SQ001"

data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[Ma arvan, et �pilased suudavad m��ratleda, mil viisil neile sobib �ppida] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 51] <- factor(data[, 51], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[51] <- "LP22_SQ002"

data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "[�pilastele peaks pakkuma rohkem v�imalusi ise otsustada �pitegevuste j�rjestuse ja ajahalduse �le] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 52] <- factor(data[, 52], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[52] <- "LP22_SQ003"

data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "[�pilastele peaks pakkuma rohkem v�imalusi otsustada, millist �pi�lesannet nad tahavad antud ajahetkel teha] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 53] <- factor(data[, 53], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[53] <- "LP22_SQ004"

data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "[�pilastele peaks pakkuma rohkem v�imalusi otsustada, millise �ppeainega nad antud hetkel tegeleda soovivad] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 54] <- factor(data[, 54], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[54] <- "LP22_SQ005"

data[, 55] <- as.character(data[, 55])
attributes(data)$variable.labels[55] <- "[�pilastele peaks pakkuma rohkem erinevaid �ppematerjale, et nad saaksid �ppida omal viisil] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 55] <- factor(data[, 55], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[55] <- "LP22_SQ006"

data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "[�pilastel peaks olema rohkem v�imalusi ise otsustada, kuidas ja milliste vahendite abil nad �pi�lesandeid sooritavad] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 56] <- factor(data[, 56], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[56] <- "LP22_SQ007"

data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "[�pilastel peaks olema rohkem v�imalusi ise otsustada, milllal nad �pi�lesandeid sooritavad] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 57] <- factor(data[, 57], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[57] <- "LP22_SQ008"

data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[�pilastel peaks olema v�imalus t��tada enda poolt valitud teemade kallal] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 58] <- factor(data[, 58], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[58] <- "LP22_SQ009"

data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "[Paljud �pilased ei suuda tulla toime oma �ppimise juhtimisega] Mil m��ral Te n�ustute v�i ei n�ustu j�rgmiste v�idetega �petaja ja �pilase rolli muutumise kohta?"
data[, 59] <- factor(data[, 59], levels=c( "Li1", "Li2", "Li3", "Li4", "Li5"), labels=c( "Jah, kindlasti", "Pigem jah", "Nii ja naa", "Pigem mitte", "Kindlasti mitte"))
names(data)[59] <- "LP22_SQ010"

data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "Mitu aastat Te olete �petajana t��tanud?�"
names(data)[60] <- "LP31"

data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "[Ajalugu]         Mis ainet/aineid �petate?"
data[, 61] <- factor(data[, 61], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[61] <- "LP32_A1"

data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "[Bioloogia]         Mis ainet/aineid �petate?"
data[, 62] <- factor(data[, 62], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[62] <- "LP32_A2"

data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "[Eesti keel]         Mis ainet/aineid �petate?"
data[, 63] <- factor(data[, 63], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[63] <- "LP32_A3"

data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "[Filosoofia]         Mis ainet/aineid �petate?"
data[, 64] <- factor(data[, 64], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[64] <- "LP32_A4"

data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[F��sika]         Mis ainet/aineid �petate?"
data[, 65] <- factor(data[, 65], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[65] <- "LP32_A5"

data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[Geograafia]         Mis ainet/aineid �petate?"
data[, 66] <- factor(data[, 66], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[66] <- "LP32_A6"

data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[Informaatika]         Mis ainet/aineid �petate?"
data[, 67] <- factor(data[, 67], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[67] <- "LP32_A7"

data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[Inglise keel]         Mis ainet/aineid �petate?"
data[, 68] <- factor(data[, 68], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[68] <- "LP32_A8"

data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[Inimese�petus]         Mis ainet/aineid �petate?"
data[, 69] <- factor(data[, 69], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[69] <- "LP32_A9"

data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[K�sit��]         Mis ainet/aineid �petate?"
data[, 70] <- factor(data[, 70], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[70] <- "LP32_A10"

data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Keemia]         Mis ainet/aineid �petate?"
data[, 71] <- factor(data[, 71], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[71] <- "LP32_A11"

data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Kehaline kasvatus]         Mis ainet/aineid �petate?"
data[, 72] <- factor(data[, 72], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[72] <- "LP32_A12"

data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Kirjandus]         Mis ainet/aineid �petate?"
data[, 73] <- factor(data[, 73], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[73] <- "LP32_A13"

data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[Kodundus]         Mis ainet/aineid �petate?"
data[, 74] <- factor(data[, 74], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[74] <- "LP32_A14"

data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[Kunst]         Mis ainet/aineid �petate?"
data[, 75] <- factor(data[, 75], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[75] <- "LP32_A15"

data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[Loodus�petus]         Mis ainet/aineid �petate?"
data[, 76] <- factor(data[, 76], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[76] <- "LP32_A16"

data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[Majandus ja ettev�tlus]         Mis ainet/aineid �petate?"
data[, 77] <- factor(data[, 77], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[77] <- "LP32_A17"

data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[Matemaatika]         Mis ainet/aineid �petate?"
data[, 78] <- factor(data[, 78], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[78] <- "LP32_A18"

data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[Meedia�petus]         Mis ainet/aineid �petate?"
data[, 79] <- factor(data[, 79], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[79] <- "LP32_A19"

data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[Muusika]         Mis ainet/aineid �petate?"
data[, 80] <- factor(data[, 80], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[80] <- "LP32_A20"

data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[Prantsuse keel]         Mis ainet/aineid �petate?"
data[, 81] <- factor(data[, 81], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[81] <- "LP32_A21"

data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[Riigikaitse]         Mis ainet/aineid �petate?"
data[, 82] <- factor(data[, 82], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[82] <- "LP32_A22"

data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "[Rootsi keel]         Mis ainet/aineid �petate?"
data[, 83] <- factor(data[, 83], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[83] <- "LP32_A23"

data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "[Saksa keel]         Mis ainet/aineid �petate?"
data[, 84] <- factor(data[, 84], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[84] <- "LP32_A24"

data[, 85] <- as.numeric(data[, 85])
attributes(data)$variable.labels[85] <- "[Soome keel]         Mis ainet/aineid �petate?"
data[, 85] <- factor(data[, 85], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[85] <- "LP32_A25"

data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "[T��- ja tehnoloogia�petus]         Mis ainet/aineid �petate?"
data[, 86] <- factor(data[, 86], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[86] <- "LP32_A26"

data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- "[�hiskonna�petus]         Mis ainet/aineid �petate?"
data[, 87] <- factor(data[, 87], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[87] <- "LP32_A27"

data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- "[Vene keel]         Mis ainet/aineid �petate?"
data[, 88] <- factor(data[, 88], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[88] <- "LP32_A28"

data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "[Teised]         Mis ainet/aineid �petate?"
names(data)[89] <- "LP32_other"

data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "Mitu �pistsenaariumit Te olete loonud LePlanneri keskkonnas?�"
data[, 90] <- factor(data[, 90], levels=c( "A1", "A2", "A3", "A4", "A5", "A6"), labels=c( "Mitte ühtegi", "1", "2", "3", "4", "5 või rohkem"))
names(data)[90] <- "LP33"

data[, 91] <- as.character(data[, 91])
attributes(data)$variable.labels[91] <- "Millal Te viimati kasutasite LePlannerit?��"
data[, 91] <- factor(data[, 91], levels=c( "A1", "A2", "A3"), labels=c( "Rohkem kui kuu tagasi", "Viimase kuu sees", "Viimase 7 päeva sees"))
names(data)[91] <- "LP34"

data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[LAMS]         Milliseid teisi vahendeid Te olete kasutanud �pistsenaariumide (sh tunnikavade v�i tunnikonspektide) koostamiseks?"
data[, 92] <- factor(data[, 92], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[92] <- "LP35_A1"

data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[LeMill]         Milliseid teisi vahendeid Te olete kasutanud �pistsenaariumide (sh tunnikavade v�i tunnikonspektide) koostamiseks?"
data[, 93] <- factor(data[, 93], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[93] <- "LP35_A2"

data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "[iTEC projektis loodud vahendid (Edukata, Eduvista v�i SDE)]         Milliseid teisi vahendeid Te olete kasutanud �pistsenaariumide (sh tunnikavade v�i tunnikonspektide) koostamiseks?"
data[, 94] <- factor(data[, 94], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[94] <- "LP35_A3"

data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[Tekstit��tlustarkvara (nt. MS Word v�i Google Docs)]         Milliseid teisi vahendeid Te olete kasutanud �pistsenaariumide (sh tunnikavade v�i tunnikonspektide) koostamiseks?"
data[, 95] <- factor(data[, 95], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[95] <- "LP35_A4"

data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "[Tabelt��tlustarkvara (nt. MS Excel v�i Google Sheets)]         Milliseid teisi vahendeid Te olete kasutanud �pistsenaariumide (sh tunnikavade v�i tunnikonspektide) koostamiseks?"
data[, 96] <- factor(data[, 96], levels=c( 1, 0), labels=c( "Jah", "Ei ole valitud"))
names(data)[96] <- "LP35_A5"

data[, 97] <- as.character(data[, 97])
attributes(data)$variable.labels[97] <- "[Teised]         Milliseid teisi vahendeid Te olete kasutanud �pistsenaariumide (sh tunnikavade v�i tunnikonspektide) koostamiseks?"
names(data)[97] <- "LP35_other"

data[, 98] <- as.character(data[, 98])
attributes(data)$variable.labels[98] <- "Siia v�ite soovi korral j�tta t�iendavaid kommentaare LePlanneri ja k�esoleva k�sitluse kohta."
names(data)[98] <- "LP36"
