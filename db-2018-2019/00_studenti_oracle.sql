-- ----------------------------
-- Table structure for izvrsitelji
-- ----------------------------
DROP TABLE izvrsitelji;
CREATE TABLE izvrsitelji (
  jmbgNastavnik NCHAR(13) NOT NULL ,
  idKolegij NUMBER(11) NOT NULL ,
  idUlogaIzvrsitelja NUMBER(11) NOT NULL 
)
;

-- ----------------------------
-- Records of izvrsitelji
-- ----------------------------
INSERT INTO izvrsitelji VALUES ('2409954210041', '1', '2');
INSERT INTO izvrsitelji VALUES ('3103947210186', '1', '1');
INSERT INTO izvrsitelji VALUES ('2409954210041', '2', '1');
INSERT INTO izvrsitelji VALUES ('0708980383302', '3', '1');
INSERT INTO izvrsitelji VALUES ('0807977310602', '4', '2');
INSERT INTO izvrsitelji VALUES ('1907983383326', '4', '1');
INSERT INTO izvrsitelji VALUES ('1204979362909', '5', '1');
INSERT INTO izvrsitelji VALUES ('0807977310602', '6', '1');
INSERT INTO izvrsitelji VALUES ('1804949363053', '7', '1');
INSERT INTO izvrsitelji VALUES ('0205951330124', '8', '1');
INSERT INTO izvrsitelji VALUES ('2603957210027', '9', '1');
INSERT INTO izvrsitelji VALUES ('2604956363608', '9', '2');
INSERT INTO izvrsitelji VALUES ('2604956363608', '10', '1');
INSERT INTO izvrsitelji VALUES ('0110959390037', '11', '1');
INSERT INTO izvrsitelji VALUES ('0110959390037', '11', '2');
INSERT INTO izvrsitelji VALUES ('2603957210027', '12', '1');
INSERT INTO izvrsitelji VALUES ('0501953210249', '13', '1');
INSERT INTO izvrsitelji VALUES ('1906962340015', '13', '2');
INSERT INTO izvrsitelji VALUES ('0809970383313', '14', '1');
INSERT INTO izvrsitelji VALUES ('0812942370017', '15', '2');
INSERT INTO izvrsitelji VALUES ('3105981300707', '15', '1');
INSERT INTO izvrsitelji VALUES ('2011979362930', '16', '1');
INSERT INTO izvrsitelji VALUES ('0804969306801', '17', '2');
INSERT INTO izvrsitelji VALUES ('2409952381906', '17', '1');
INSERT INTO izvrsitelji VALUES ('1910956363012', '18', '1');
INSERT INTO izvrsitelji VALUES ('1303966335145', '19', '2');
INSERT INTO izvrsitelji VALUES ('1409987320508', '19', '1');
INSERT INTO izvrsitelji VALUES ('2805952392713', '20', '1');
INSERT INTO izvrsitelji VALUES ('0704987340304', '21', '1');
INSERT INTO izvrsitelji VALUES ('0704987340304', '22', '2');
INSERT INTO izvrsitelji VALUES ('2205970383309', '22', '1');
INSERT INTO izvrsitelji VALUES ('2808966330057', '23', '1');
INSERT INTO izvrsitelji VALUES ('2910986392304', '24', '1');
INSERT INTO izvrsitelji VALUES ('1908987173977', '25', '1');
INSERT INTO izvrsitelji VALUES ('1908987173977', '25', '2');
INSERT INTO izvrsitelji VALUES ('2610987300802', '26', '1');
INSERT INTO izvrsitelji VALUES ('1908987173977', '27', '2');
INSERT INTO izvrsitelji VALUES ('2207987301807', '27', '1');
INSERT INTO izvrsitelji VALUES ('0305988391019', '28', '1');
INSERT INTO izvrsitelji VALUES ('2207987301807', '28', '2');
INSERT INTO izvrsitelji VALUES ('2011987360005', '29', '1');
INSERT INTO izvrsitelji VALUES ('0907987330057', '30', '1');
INSERT INTO izvrsitelji VALUES ('1102966363016', '31', '1');
INSERT INTO izvrsitelji VALUES ('1010962363604', '32', '2');
INSERT INTO izvrsitelji VALUES ('1707963340011', '32', '1');
INSERT INTO izvrsitelji VALUES ('0608955311207', '33', '1');
INSERT INTO izvrsitelji VALUES ('0608955311207', '34', '1');
INSERT INTO izvrsitelji VALUES ('0610975181955', '34', '2');
INSERT INTO izvrsitelji VALUES ('2806955260017', '35', '1');
INSERT INTO izvrsitelji VALUES ('0404964361006', '36', '2');
INSERT INTO izvrsitelji VALUES ('3103947210122', '36', '1');
INSERT INTO izvrsitelji VALUES ('1212953391826', '37', '2');
INSERT INTO izvrsitelji VALUES ('2306978362104', '37', '2');
INSERT INTO izvrsitelji VALUES ('2511949330185', '37', '1');
INSERT INTO izvrsitelji VALUES ('0606960383925', '38', '1');
INSERT INTO izvrsitelji VALUES ('2012975380051', '38', '2');
INSERT INTO izvrsitelji VALUES ('1403968361918', '39', '1');
INSERT INTO izvrsitelji VALUES ('2608948301518', '40', '1');
INSERT INTO izvrsitelji VALUES ('2608948301518', '40', '2');
INSERT INTO izvrsitelji VALUES ('0509959360058', '41', '1');
INSERT INTO izvrsitelji VALUES ('0509959360058', '42', '2');
INSERT INTO izvrsitelji VALUES ('0611973330036', '42', '1');
COMMIT;

-- ----------------------------
-- Table structure for kolegiji
-- ----------------------------
DROP TABLE kolegiji;
CREATE TABLE kolegiji (
  id NUMBER(11) NOT NULL ,
  naziv NVARCHAR2(100) ,
  opis NCLOB ,
  idSmjer NUMBER(11) NOT NULL 
)
;

-- ----------------------------
-- Records of kolegiji
-- ----------------------------
INSERT INTO kolegiji VALUES ('1', 'Baze podataka', 'Student će steći znanja i vještine za dizajniranje i kreiranje baze podataka, te vještine potrebne za uspješno rukovanje s bazom podataka.', '1');
INSERT INTO kolegiji VALUES ('2', 'Uvod u UNIX sustave', 'Student treba savladati osnovno znanje rada na otvorenim operacijskim sustavima.', '1');
INSERT INTO kolegiji VALUES ('3', 'Uvod u UNIX sustave', 'Student treba savladati osnovno znanje rada na otvorenim operacijskim sustavima.', '2');
INSERT INTO kolegiji VALUES ('4', 'Fizika', 'Razumijevanje fizikalnih pojava i veličina, opisanih u širem kontekstu temeljnih zakona fizike.', '2');
INSERT INTO kolegiji VALUES ('5', 'Fizika', 'Razumijevanje fizikalnih pojava i veličina, opisanih u širem kontekstu temeljnih zakona fizike.', '3');
INSERT INTO kolegiji VALUES ('6', 'Fizika', 'Razumijevanje fizikalnih pojava i veličina, opisanih u širem kontekstu temeljnih zakona fizike.', '4');
INSERT INTO kolegiji VALUES ('7', 'Betonske konstrukcije', 'Stjecanje teoretskih i praktičkih znanja i vještina, pomoću kojih se student osposobljava za proračun i dimenzioniranje betonskih konstrukcija.', '4');
INSERT INTO kolegiji VALUES ('8', 'Osnove elektrotehnike', 'Stjecanje znanja iz teorije električnih krugova i metoda za rješavanje električnih mreža.', '3');
INSERT INTO kolegiji VALUES ('9', 'Poslovna etika', 'Cilj je predmeta upoznati studente s etičkim pitanjima suvremenog društva, osobito njihove aplikacije u svijet poslovnih odnosa.', '5');
INSERT INTO kolegiji VALUES ('10', 'Statistika', 'Opći ciljevi su ovladavanje teorijskim spoznajama kao i vještinama izračunavanja statističkih parametara.', '5');
INSERT INTO kolegiji VALUES ('11', 'Osnove građanskog prava', 'U općem djelu građanskog prava stječu se znanja ne samo iz građanskog prava nego i znanja o temeljnim pojmovima koji su značajni i za druge pravne discipline, poglavito one koje su srodne građanskom pravu.', '6');
INSERT INTO kolegiji VALUES ('12', 'Javna nabava', 'Student će biti osposobljen za organizaciju i provedbu postupka javne nabave.', '6');
INSERT INTO kolegiji VALUES ('13', 'Ekonomika turizma', 'Stjecanje specifičnih znanja za prepoznavanje utjecaja turizma na gospodarski sustav i valorizaciju potencijala ekonomskih funkcija turizma.', '8');
INSERT INTO kolegiji VALUES ('14', 'Sportski marketing', 'U okviru ovog predmeta studenti će se upoznati s osnovama sportskog marketinga kao i mogućnostima njegove primjene u određenim sportskim organizacijama.', '8');
INSERT INTO kolegiji VALUES ('15', 'Operacijski sustavi', 'Operacijski je sustav skup programa koji djeluju kao posrednici između sklopovlja i primjenskih programa te korisnika.', '7');
INSERT INTO kolegiji VALUES ('16', 'Baze podataka', 'Student će steći znanja i vještine za dizajniranje i kreiranje baze podataka, te vještine potrebne za uspješno rukovanje s bazom podataka.', '7');
INSERT INTO kolegiji VALUES ('17', 'Anatomija i fiziologija oka', 'Stjecanje temeljitih znanja iz anatomije i fiziologije oka potrebnih za razumijevanje predmeta Patologija oka, Farmakologija, Kontaktne leće, Refrakcija i binokulami vid.', '9');
INSERT INTO kolegiji VALUES ('18', 'Refrakcija i binokularni vid I', 'Upoznati studente s osnovnim refrakcijskim postupcima i razviti monokularne refrakcijske vještine.', '9');
INSERT INTO kolegiji VALUES ('19', 'Elementi konstrukcija', 'Upoznavanje s načelima dimenzioniranja i konstruiranja. Upoznavanje namjene i konstrukcijskih značajki strojnih dijelova i konstrukcija.', '10');
INSERT INTO kolegiji VALUES ('20', 'Pogon zrakoplova I', 'Stjecanje znanja o osnovnim sustavima klipnih motora zrakoplova.', '10');
INSERT INTO kolegiji VALUES ('21', 'Linearna algebra 1', 'Preko jednostavnih primjera (sustavi linearnih jednadžbi) doći do pojmova konačnodimenzionalnog vektorskog prostora, baze, potprostora, matrice, determinante, te inverzne matrice.', '11');
INSERT INTO kolegiji VALUES ('22', 'Mjera i integral', 'Uvesti pojam apstraktne mjere, izmjerivih preslikavanja i integrala u odnosu na mjeru, te izvesti fundamentalne teoreme vezane uz ove pojmove.', '11');
INSERT INTO kolegiji VALUES ('23', 'Matematička analiza 1', 'Upoznavanje s osnovnim matematičkim pojmovima, savladavanje tehnika diferencijalnog računa i upoznavanje s pripadnom matematičkom teorijom.', '12');
INSERT INTO kolegiji VALUES ('24', 'Uvod u kvantnu fiziku', 'Upoznavanje s nastankom i osnovnim pojmovima kvantne fizike, te rješavanje jednostavnijih fizikalnih problema.', '12');
INSERT INTO kolegiji VALUES ('25', 'Opća kemija', 'Čiste tvari. Homogene i heterogene smjese. Razdvajanje smjesa. Kemijska i fizikalna svojstva tvari (ekstenzivne i intenzivne veličine). Zakoni kemijskog spajanja.', '13');
INSERT INTO kolegiji VALUES ('26', 'Molekularno modeliranje', 'Temeljni pojmovi, Ploha potencijalne energije i optimizacija geometrije, Podjela metoda modeliranja, Molekulska mehanika, Kvantno-mehaničke i DFT metode.', '13');
INSERT INTO kolegiji VALUES ('27', 'Digitalna logika', 'Digitalni sustavi veličine iz stvarnog svijeta, prethodno pretvorene u brojeve, obrađuju u diskretnim koracima.', '14');
INSERT INTO kolegiji VALUES ('28', 'Energijske tehnologije', 'Važnost energije, opskrba energijom, energijska ograničenja. Oblici i izvori energije, klasifikacija oblika energije.', '14');
INSERT INTO kolegiji VALUES ('29', 'Operacijski sustavi', 'Operacijski je sustav skup programa koji djeluju kao posrednici između sklopovlja i primjenskih programa te korisnika.', '15');
INSERT INTO kolegiji VALUES ('30', 'Izrada web-projekta', 'Vještina nudi studentima priliku za stjecanje tehno-ekonomskih znanja potrebnih za izradu web-projekata.', '15');
INSERT INTO kolegiji VALUES ('31', 'Poslovno komuniciranje', 'Usvajanje općih znanja potrebnih za uspješniju interpersonalnu komunikaciju u poslovnom okruženju i djelotvorno oblikovanje poruka u javnoj i pisanoj komunikaciji.', '16');
INSERT INTO kolegiji VALUES ('32', 'Obrada teksta i slike', 'usvajanje znanja i razumijevanja: postupka kreiranja dokumenata i publikacija uz pomoć računala; oblikovanja teksta, tipografije i kreiranja fontova.', '16');
INSERT INTO kolegiji VALUES ('33', 'Osnove poduzetništva', 'Pojmovno određenje poduzetništva. Povijesni i komparativni razvoj poduzetništva i poduzeća. Temeljna načela poduzetništva. Poduzetničke perspektive.', '17');
INSERT INTO kolegiji VALUES ('34', 'Marketing', 'Marketing kao filozofija poslovanja; Priroda marketinškog poslovanja; Upravljačka filozofija marketinga; Pojavni oblici upravljanja marketingom.', '17');
INSERT INTO kolegiji VALUES ('35', 'Mikroekonomija I', 'Razumijevanje principa ponude i potražnje te njihovo povezivanje s tržišnom ravnotežom. Osposobljenost za analiziranje, proučavanje i djelovanje na različite tržišne snage koje determiniraju ravnotežu.', '18');
INSERT INTO kolegiji VALUES ('36', 'Kvantitativne metode u managementu', 'Upoznavanje sa osnovnim kvantitativnim metodama koje se mogu primijeniti u poslovnom odlučivanju s naglaskom na linearno programiranje.', '18');
INSERT INTO kolegiji VALUES ('37', 'Matematika u ekonomiji', 'S ovim predmetom studenti bi trebali biti osposobljeni za praktičnu primjenu matematičkih modela pri postavljanju i rješavanju problema u ekonomskim znanostima.', '19');
INSERT INTO kolegiji VALUES ('38', 'Marketing destinacije', 'Specifičnosti upravljanja marketingom destinacije;Turistička destinacija kao integralni turistički proizvod.', '19');
INSERT INTO kolegiji VALUES ('39', 'Tehnička mehanika 2', 'Upoznati studente s teorijskim i iskustvenim spoznajama iz područja hidromehanike što će im omogućiti lakše savladavanje zadataka vezanih za mirovanje i gibanje fluida koji su nezaobilazni u svakodnevnij praksi.', '20');
INSERT INTO kolegiji VALUES ('40', 'Sredstva pomorskog prometa', 'Cilj kolegija je upoznati studente sa stabilnošću broda u neoštećenom i oštećenom stanju, statičkom i dinamičkom stabilnošću broda.', '20');
INSERT INTO kolegiji VALUES ('41', 'Tereti u prometu', 'Osnovni cilj i zadatak kolegija je upoznavanja prirode materijala u prometu kao bitne pretpostavke za organizaciju prijevoznog pothvata, analizu osnovnih i specifičnih klasifikacija, podjela i kategorizacija tereta.', '21');
INSERT INTO kolegiji VALUES ('42', 'Planiranje prometne potražnje', 'Osposobiti studenta za primjenu metoda kojima se utvrđuje potražnja za prometnom uslugom.', '21');
INSERT INTO kolegiji VALUES ('43', 'Tjelesna i zdravstvena kultura 2', 'Odgojno-obrazovno područje podmirenja biopsihosocijalnih motiva za kretanjem kao izrazom zadovoljenja određenih potreba čovjeka, kojima se uvećavaju adaptivne i stvaralačke sposobnosti u suvremenim uvjetima života i rada.', '1');
INSERT INTO kolegiji VALUES ('44', 'Tjelesna i zdravstvena kultura 2', 'Odgojno-obrazovno područje podmirenja biopsihosocijalnih motiva za kretanjem kao izrazom zadovoljenja određenih potreba čovjeka, kojima se uvećavaju adaptivne i stvaralačke sposobnosti u suvremenim uvjetima života i rada.', '10');
INSERT INTO kolegiji VALUES ('45', 'Tjelesna i zdravstvena kultura 3', 'Odgojno-obrazovno područje podmirenja biopsihosocijalnih motiva za kretanjem kao izrazom zadovoljenja određenih potreba čovjeka, kojima se uvećavaju adaptivne i stvaralačke sposobnosti u suvremenim uvjetima života i rada.', '16');
INSERT INTO kolegiji VALUES ('46', 'Napredne baze podataka', 'Student se treba upoznati s objektima i kontrolama za pristup podacima, sa osnovama programiranja MySQL servera i implementacijom baze podataka u informacijski sustav.', '1');
COMMIT;

-- ----------------------------
-- Table structure for mjesta
-- ----------------------------
DROP TABLE mjesta;
CREATE TABLE mjesta (
  postbr NUMBER(11) NOT NULL ,
  nazivMjesto NVARCHAR2(100) ,
  idZupanija NUMBER(11) NOT NULL 
)
;

-- ----------------------------
-- Records of mjesta
-- ----------------------------
INSERT INTO mjesta VALUES ('10000', 'Zagreb', '1');
INSERT INTO mjesta VALUES ('10290', 'Zaprešić', '1');
INSERT INTO mjesta VALUES ('10295', 'Kupljenovo', '2');
INSERT INTO mjesta VALUES ('10310', 'Ivanić-Grad', '2');
INSERT INTO mjesta VALUES ('10315', 'Novoselec', '2');
INSERT INTO mjesta VALUES ('10340', 'Vrbovec', '2');
INSERT INTO mjesta VALUES ('10345', 'Gradec', '2');
INSERT INTO mjesta VALUES ('10410', 'Velika Gorica', '2');
INSERT INTO mjesta VALUES ('10430', 'Samobor', '2');
INSERT INTO mjesta VALUES ('20000', 'Dubrovnik', '20');
INSERT INTO mjesta VALUES ('21000', 'Split', '18');
INSERT INTO mjesta VALUES ('21300', 'Makarska', '18');
INSERT INTO mjesta VALUES ('21465', 'Jelsa', '18');
INSERT INTO mjesta VALUES ('21480', 'Vis', '18');
INSERT INTO mjesta VALUES ('21485', 'Komiža', '18');
INSERT INTO mjesta VALUES ('22000', 'Šibenik', '16');
INSERT INTO mjesta VALUES ('22030', 'Šibenik-Zablaće', '16');
INSERT INTO mjesta VALUES ('22205', 'Perković', '16');
INSERT INTO mjesta VALUES ('22215', 'Zaton', '16');
INSERT INTO mjesta VALUES ('22235', 'Kaprije', '16');
INSERT INTO mjesta VALUES ('22240', 'Tisno', '16');
INSERT INTO mjesta VALUES ('22300', 'Knin', '16');
INSERT INTO mjesta VALUES ('22310', 'Kijevo', '16');
INSERT INTO mjesta VALUES ('22320', 'Drniš', '16');
INSERT INTO mjesta VALUES ('23000', 'Zadar', '14');
INSERT INTO mjesta VALUES ('23205', 'Bibinje', '14');
INSERT INTO mjesta VALUES ('23235', 'Vrsi', '14');
INSERT INTO mjesta VALUES ('23245', 'Tribanj', '14');
INSERT INTO mjesta VALUES ('23275', 'Ugljan', '14');
INSERT INTO mjesta VALUES ('23285', 'Brbinj', '14');
INSERT INTO mjesta VALUES ('31000', 'Osijek', '15');
INSERT INTO mjesta VALUES ('31220', 'Višnjevac', '15');
INSERT INTO mjesta VALUES ('31325', 'Čeminac', '15');
INSERT INTO mjesta VALUES ('31400', 'Đakovo', '15');
INSERT INTO mjesta VALUES ('31415', 'Selci Đakovački', '15');
INSERT INTO mjesta VALUES ('31540', 'Donji Miholjac', '15');
INSERT INTO mjesta VALUES ('31555', 'Marijanci', '15');
INSERT INTO mjesta VALUES ('32000', 'Vukovar', '17');
INSERT INTO mjesta VALUES ('32100', 'Vinkovci', '17');
INSERT INTO mjesta VALUES ('32225', 'Bobota', '17');
INSERT INTO mjesta VALUES ('32235', 'Bapska', '17');
INSERT INTO mjesta VALUES ('32245', 'Nijemci', '17');
INSERT INTO mjesta VALUES ('32255', 'Soljani', '17');
INSERT INTO mjesta VALUES ('32260', 'Gunja', '17');
INSERT INTO mjesta VALUES ('32270', 'Županja', '17');
INSERT INTO mjesta VALUES ('32275', 'Bošnjaci', '17');
INSERT INTO mjesta VALUES ('33405', 'Pitomača', '11');
INSERT INTO mjesta VALUES ('33410', 'Suhopolje', '11');
INSERT INTO mjesta VALUES ('33515', 'Orahovica', '11');
INSERT INTO mjesta VALUES ('34000', 'Požega', '12');
INSERT INTO mjesta VALUES ('35000', 'Slavonski Brod', '13');
INSERT INTO mjesta VALUES ('40000', 'Čakovec', '21');
INSERT INTO mjesta VALUES ('42000', 'Varaždin', '6');
INSERT INTO mjesta VALUES ('43000', 'Bjelovar', '8');
INSERT INTO mjesta VALUES ('44000', 'Sisak', '4');
INSERT INTO mjesta VALUES ('44010', 'Sisak-Caprag', '4');
INSERT INTO mjesta VALUES ('47000', 'Karlovac', '5');
INSERT INTO mjesta VALUES ('47285', 'Radatovići', '5');
INSERT INTO mjesta VALUES ('51000', 'Rijeka', '9');
INSERT INTO mjesta VALUES ('52210', 'Rovinj', '19');
INSERT INTO mjesta VALUES ('52440', 'Poreč', '19');
INSERT INTO mjesta VALUES ('53205', 'Medak', '10');
INSERT INTO mjesta VALUES ('53220', 'Otočac', '10');
INSERT INTO mjesta VALUES ('53225', 'Švica', '10');
INSERT INTO mjesta VALUES ('53235', 'Bunić', '10');
INSERT INTO mjesta VALUES ('53260', 'Brinje', '10');
INSERT INTO mjesta VALUES ('53270', 'Senj', '10');
INSERT INTO mjesta VALUES ('53285', 'Lukovo', '10');
COMMIT;

-- ----------------------------
-- Table structure for nastavnici
-- ----------------------------
DROP TABLE nastavnici;
CREATE TABLE nastavnici (
  jmbg NCHAR(13) NOT NULL ,
  ime NVARCHAR2(50) NOT NULL ,
  prezime NVARCHAR2(50) NOT NULL ,
  adresa NVARCHAR2(100) NOT NULL ,
  titulaIspred NVARCHAR2(30) ,
  titulaIza NVARCHAR2(30) ,
  postBr NUMBER(11) NOT NULL ,
  lozinka NCHAR(32) NOT NULL 
)
;

-- ----------------------------
-- Records of nastavnici
-- ----------------------------
INSERT INTO nastavnici VALUES ('0110959390037', 'Petra', 'Jukić', 'Riječka 54', 'prof.vis.šk.', '', '32000', '378aaad427698bbcd8bd577b3914a91e');
INSERT INTO nastavnici VALUES ('0205951330124', 'Vedran', 'Grubišić', 'Dobrilina 62', 'mr.sc.', '', '10000', '30f7799685334aed99267c75b5371afb');
INSERT INTO nastavnici VALUES ('0305988391019', 'Lucija', 'Brčić', 'Naserov trg 1', '', 'prof.', '10000', '5d962f37c27a0dac27cfa4b5ff726f61');
INSERT INTO nastavnici VALUES ('0404964361006', 'Danijel', 'Tkalčić', 'Nodilova 96', 'dr.sc.', '', '21000', '806fad8a67e9e1a041b84440451a1b84');
INSERT INTO nastavnici VALUES ('0501953210249', 'Anto', 'Bošnjak', 'Unska ulica 25', '', 'prof.', '40000', 'db21dd893e3ddc0e1e4c64daba31995d');
INSERT INTO nastavnici VALUES ('0509959360058', 'Leona', 'Vidović', 'Ulica svetog Duje 106', 'prof. dr.sc.', '', '51000', '67889942df943c1cf4a5f4df99887af4');
INSERT INTO nastavnici VALUES ('0606960383925', 'Borna', 'Blažević', 'Ulica Petra Jurčića 12', 'prof. dr.sc.', '', '21000', 'e6993e93270eb1014b7118501a201a89');
INSERT INTO nastavnici VALUES ('0608955311207', 'Stjepan', 'Kovačević', 'Dubrovačka ulica 27', 'mr.sc.', '', '42000', '247d0bedf6f20caba466cad13ad720ee');
INSERT INTO nastavnici VALUES ('0610975181955', 'Renato', 'Topić', 'Krešimirova 98', 'prof. dr.sc.', '', '42000', '9ad2279998eeddd857cdd2daecebaaea');
INSERT INTO nastavnici VALUES ('0611973330036', 'Mila', 'Ilić', 'Ulica Alojzija Stepinca 2', 'dr.sc.', 'v. pred.', '51000', '4e099b86cbd02c1431821a6b6c0f2f9b');
INSERT INTO nastavnici VALUES ('0704987340304', 'Milivoj', 'Matić', 'Ulica Franje Čandeka 95', 'dr.sc.', '', '10000', '61622f25e70e9ca3f0a1f14ede370323');
INSERT INTO nastavnici VALUES ('0708980383302', 'Boris', 'Brkić', 'Zagrebačka 154', 'prof. dr.sc.', '', '10000', 'ffdc0d63cb0b527cb40e17246f34c13a');
INSERT INTO nastavnici VALUES ('0804969306801', 'Stjepan', 'Lukić', 'Marko Polo 36', 'prof. dr.sc.', '', '10410', '120db3b28966d6678a63baf597811b30');
INSERT INTO nastavnici VALUES ('0807977310602', 'Kristijan', 'Kolar', 'Jurija Dobrile 98', '', 'dipl.ing.rač.', '10000', '25d7b6b412da198d2eb9ae81827ce906');
INSERT INTO nastavnici VALUES ('0809970383313', 'Anđelka', 'Mađar', 'Ulica Ivane Brlić Mažuranić 36', 'prof.vis.šk.', '', '40000', 'f9f41b6beaaa262bb2e7d3015772fea3');
INSERT INTO nastavnici VALUES ('0812942370017', 'Josipa', 'Jakšić', 'Ulica Ivana pl. Zajca 75', 'dr.sc.', 'v. pred.', '40000', 'a117d6515f9048753495eb993a6f1d8f');
INSERT INTO nastavnici VALUES ('0907987330057', 'Iva', 'Klarin', 'Gojlanska ulica 18', 'dr.sc.', 'v. pred.', '10000', '8a92b02c4954bfb39f776c428d18cccb');
INSERT INTO nastavnici VALUES ('1010962363604', 'Zvonimir', 'Ivanković', 'Šimunovićeva 39', 'dr.sc.', 'v. pred.', '42000', '92d2c1fc4d46c534e863229dcb17afd0');
INSERT INTO nastavnici VALUES ('1102966363016', 'Žarko', 'Marković', 'Kupska ulica 101', 'prof. dr.sc.', '', '42000', 'd9472c97406a1ed0f9a8580917503365');
INSERT INTO nastavnici VALUES ('1204979362909', 'Ana', 'Mihaljević', 'Palmotićeva ulica 6', 'prof. dr.sc.', '', '10000', '55ebe981813c9d023ef854da29ebf606');
INSERT INTO nastavnici VALUES ('1212953391826', 'Frano', 'Vukelić', 'Ulica dr.Vladka Mačeka 61', 'prof. dr.sc.', '', '21000', '4d4246882acedd600c96c5d156f67697');
INSERT INTO nastavnici VALUES ('1303966335145', 'Valentino', 'Posavec', 'Ulica dr. Ante Starčevića 9', 'prof. dr.sc.', '', '10310', 'b02048802c7d982398fc192da5660338');
INSERT INTO nastavnici VALUES ('1403968361918', 'Sanja', 'Ivanec', 'Mandićeva 65', 'prof. dr.sc.', '', '51000', '7b517185beee03aa53f9efc27e8d8067');
INSERT INTO nastavnici VALUES ('1409987320508', 'Zlatica', 'Vidaković', 'Zvonimirova 32', '', 'prof.', '10410', 'e046cb08b64f423a16a079ecfbed41ed');
INSERT INTO nastavnici VALUES ('1707963340011', 'Ankica', 'Čeh', 'Ulica kralja Petra Krešimira IV 6', '', 'prof.', '42000', '0d94a5529152ca83d011daf25be975c9');
INSERT INTO nastavnici VALUES ('1804949363053', 'Daniela', 'Bašić', 'Branimirova 96', 'dr.sc.', '', '10000', 'b362df18e5980dfdf981f99094748ecc');
INSERT INTO nastavnici VALUES ('1906962340015', 'Karlo', 'Lončar', 'Bakarska ulica 12', '', 'prof.', '40000', '3bbada494b232de7d8334d4b444697f5');
INSERT INTO nastavnici VALUES ('1907983383326', 'Jelena', 'Nikolić', 'Hvarska ulica 3', 'prof. dr.sc.', '', '10000', 'dbc7336cf51d3cb51f999e0348e28fd9');
INSERT INTO nastavnici VALUES ('1908987173977', 'Nikola', 'Bačić', 'Radićeva 3', 'prof. dr.sc.', '', '10000', 'df5e014b11c328fa07219a41970cbade');
INSERT INTO nastavnici VALUES ('1910956363012', 'Dražen', 'Debeljak', 'Trpimirova 15', 'dr.sc.', 'v. pred.', '10410', '9aa31e57ed4c9a4b6ce586f05b764fef');
INSERT INTO nastavnici VALUES ('2011979362930', 'Cvjetko', 'Stojanović', 'Koranska ulica 5', '', 'prof.', '40000', '41a7f3c02a44674a3ba430f016c42d68');
INSERT INTO nastavnici VALUES ('2011987360005', 'Josip', 'Ivanović', 'Zaharova ulica 5', '', 'prof.', '10000', '372ab64556ce24e43526453510235de4');
INSERT INTO nastavnici VALUES ('2012975380051', 'Veronika', 'Petrović', 'Ulica Domovinskog rata 52', 'prof. dr.sc.', '', '21000', '8b29750e428b84fa2137f27e4a71ac58');
INSERT INTO nastavnici VALUES ('2205970383309', 'Tihana', 'Posavec', 'Ulica Matice hrvatske 32', 'prof. dr.sc.', '', '10000', '6e9d8709d679bca89b1572165c447169');
INSERT INTO nastavnici VALUES ('2207987301807', 'Josip', 'Dukić', 'Jurišićeva 21', 'mr.sc.', '', '10000', '9f50a136bc84fa1aa366807698131a0a');
INSERT INTO nastavnici VALUES ('2306978362104', 'Sonja', 'Duvnjak', 'Ulica Žrtava fašizma 23', 'prof. dr.sc.', '', '21000', 'dd4a0b6e486ded6ec4fd3e51bea1f511');
INSERT INTO nastavnici VALUES ('2409952381906', 'Morana', 'Novak', 'Kolodvorska 37', '', 'prof.', '10410', 'fc9e9539ca1d04da45df8c5d79ae8f18');
INSERT INTO nastavnici VALUES ('2409954210041', 'Tvrtko', 'Miletić', 'Gundulićeva 59', '', 'dipl.ing.rač.', '10000', '668f7f71056d78b87a801fbc853d917b');
INSERT INTO nastavnici VALUES ('2511949330185', 'Željka', 'Perić', 'Ulica Rudolfa Tomišića 9', 'mr.sc.', '', '21000', '89ed83151007544f60314674d3ea7149');
INSERT INTO nastavnici VALUES ('2603957210027', 'Renato', 'Perić', 'Turopoljska 15', '', 'prof.', '32225', 'e7b1c1e4afcab1af31edc83281f2dbcc');
INSERT INTO nastavnici VALUES ('2604956363608', 'Valentino', 'Šimić', 'Cesarićeva ulica 21', 'prof.vis.šk.', '', '32000', '90618f7e14bf1bf2bb456de269145fd0');
INSERT INTO nastavnici VALUES ('2608948301518', 'Vladimir', 'Katić', 'Radićeva 32', 'dr.sc.', '', '51000', 'a3d5f85f47657ab0390d74683fa0c0c9');
INSERT INTO nastavnici VALUES ('2610987300802', 'Karlo', 'Krsnik', 'Nodilova 7', 'dr.sc.', '', '10000', 'c1586160da6146669f4ae348a7923862');
INSERT INTO nastavnici VALUES ('2805952392713', 'Lovro', 'Horvatinčić', 'Škurinjska cesta 47', 'dr.sc.', 'v. pred.', '10310', '6d255cc57954a1c231fd8bfae3b7a782');
INSERT INTO nastavnici VALUES ('2806955260017', 'Branimira', 'Zagorec', 'Trg revolucije 57', 'prof. dr.sc.', '', '22030', '1fba6452ced52030cf9f1484e2e1d6d9');
INSERT INTO nastavnici VALUES ('2808966330057', 'Mira', 'Mandić', 'Ulica Svetog Vlahe 95', 'prof. dr.sc.', '', '10410', '552bfc1303b329ede95722afc17e21f7');
INSERT INTO nastavnici VALUES ('2910986392304', 'Jure', 'Ribarić', 'Ulica Rudolfa Tomišića 63', 'prof. dr.sc.', '', '10000', 'd4d3483d70cf89753f4985c69ad04b22');
INSERT INTO nastavnici VALUES ('3003975210235', 'Damir', 'Skelić', 'Sv. Barbare 15', 'dr.sc.', 'v. pred.', '10000', '7ad2e562d66cecf67231c577bdb0f0ed');
INSERT INTO nastavnici VALUES ('3103947210122', 'Davorka', 'Mikulić', 'Gospodska ulica 49', 'prof. dr.sc.', '', '21000', 'd6df3cf05df1697feb0c9cfffbeb7977');
INSERT INTO nastavnici VALUES ('3103947210186', 'Tomica', 'Hrvat', 'Gosposka ulica 91', 'prof. dr.sc.', '', '10000', '67da1a4ed66fcad0bbe3f8be21174d5a');
INSERT INTO nastavnici VALUES ('3105981300707', 'Vesna', 'Ilić', 'Paška ulica 25', '', 'prof.', '40000', 'd85a9058fab489ca8812e2482ccd44ac');
COMMIT;

-- ----------------------------
-- Table structure for ocjene
-- ----------------------------
DROP TABLE ocjene;
CREATE TABLE ocjene (
  idKolegij NUMBER(11) NOT NULL ,
  jmbagStudent NCHAR(10) NOT NULL ,
  datumPolaganja DATE NOT NULL ,
  vrijemePolaganja VARCHAR2(255) ,
  ocjena NUMBER(4) 
)
;

-- ----------------------------
-- Records of ocjene
-- ----------------------------
INSERT INTO ocjene VALUES ('1', '0035177990', TO_DATE('2017-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '4');
INSERT INTO ocjene VALUES ('1', '0128050853', TO_DATE('2015-09-16', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '1');
INSERT INTO ocjene VALUES ('1', '0128051999', TO_DATE('2015-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '4');
INSERT INTO ocjene VALUES ('1', '0246022345', TO_DATE('2016-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '2');
INSERT INTO ocjene VALUES ('1', '0246022345', TO_DATE('2017-02-12', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '2');
INSERT INTO ocjene VALUES ('1', '0246024883', TO_DATE('2017-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '2');
INSERT INTO ocjene VALUES ('2', '0035177990', TO_DATE('2017-02-21', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '1');
INSERT INTO ocjene VALUES ('2', '0128050002', TO_DATE('2017-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '5');
INSERT INTO ocjene VALUES ('2', '0246022345', TO_DATE('2017-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '3');
INSERT INTO ocjene VALUES ('2', '0246024883', TO_DATE('2017-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '2');
INSERT INTO ocjene VALUES ('3', '0246025342', TO_DATE('2017-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '08:00:00', '3');
INSERT INTO ocjene VALUES ('3', '0246025343', TO_DATE('2017-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '08:00:00', '4');
INSERT INTO ocjene VALUES ('3', '0246035265', TO_DATE('2015-06-15', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '1');
INSERT INTO ocjene VALUES ('3', '0246035265', TO_DATE('2016-06-21', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '3');
INSERT INTO ocjene VALUES ('4', '0035179953', TO_DATE('2017-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '5');
INSERT INTO ocjene VALUES ('4', '0128052105', TO_DATE('2017-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '5');
INSERT INTO ocjene VALUES ('4', '0246027548', TO_DATE('2017-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '4');
INSERT INTO ocjene VALUES ('4', '0246033254', TO_DATE('2015-06-16', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '2');
INSERT INTO ocjene VALUES ('5', '0010081356', TO_DATE('2015-09-14', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '2');
INSERT INTO ocjene VALUES ('5', '0035182233', TO_DATE('2013-09-10', 'SYYYY-MM-DD HH24:MI:SS'), '14:00:00', '2');
INSERT INTO ocjene VALUES ('5', '0246022344', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '4');
INSERT INTO ocjene VALUES ('5', '0246029526', TO_DATE('2015-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '5');
INSERT INTO ocjene VALUES ('5', '0246031254', TO_DATE('2013-09-10', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '1');
INSERT INTO ocjene VALUES ('5', '0246031254', TO_DATE('2014-09-13', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '1');
INSERT INTO ocjene VALUES ('5', '0246031254', TO_DATE('2015-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '3');
INSERT INTO ocjene VALUES ('6', '0035180940', TO_DATE('2016-02-13', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '4');
INSERT INTO ocjene VALUES ('6', '0246025333', TO_DATE('2015-02-21', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('6', '0246033365', TO_DATE('2013-07-10', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '5');
INSERT INTO ocjene VALUES ('6', '0246036655', TO_DATE('2013-09-10', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '2');
INSERT INTO ocjene VALUES ('7', '0035192211', TO_DATE('2015-06-28', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '1');
INSERT INTO ocjene VALUES ('7', '0035192211', TO_DATE('2016-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('7', '0035192565', TO_DATE('2015-07-05', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '4');
INSERT INTO ocjene VALUES ('7', '0246025633', TO_DATE('2015-06-30', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '1');
INSERT INTO ocjene VALUES ('7', '0246025633', TO_DATE('2016-06-29', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '1');
INSERT INTO ocjene VALUES ('7', '0246033365', TO_DATE('2013-07-09', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '4');
INSERT INTO ocjene VALUES ('7', '0246036655', TO_DATE('2013-06-12', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('8', '0010081356', TO_DATE('2015-09-14', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '2');
INSERT INTO ocjene VALUES ('8', '0035182233', TO_DATE('2013-09-10', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '4');
INSERT INTO ocjene VALUES ('8', '0246020326', TO_DATE('2017-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '1');
INSERT INTO ocjene VALUES ('8', '0246022344', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '4');
INSERT INTO ocjene VALUES ('9', '0246024584', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('9', '0283016371', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('9', '0283018425', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('9', '0283021325', TO_DATE('2013-06-30', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '1');
INSERT INTO ocjene VALUES ('9', '0283021325', TO_DATE('2014-06-25', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '3');
INSERT INTO ocjene VALUES ('9', '0283021548', TO_DATE('2013-06-25', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('10', '0013025926', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('10', '0108065951', TO_DATE('2014-02-23', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '3');
INSERT INTO ocjene VALUES ('10', '0283016371', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('10', '0283021548', TO_DATE('2013-06-30', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('11', '0036440545', TO_DATE('2016-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '4');
INSERT INTO ocjene VALUES ('11', '0108065150', TO_DATE('2014-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '3');
INSERT INTO ocjene VALUES ('11', '0283016212', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '4');
INSERT INTO ocjene VALUES ('11', '0283035485', TO_DATE('2014-06-25', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '4');
INSERT INTO ocjene VALUES ('12', '0036440545', TO_DATE('2016-02-23', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '3');
INSERT INTO ocjene VALUES ('12', '0283016670', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '08:00:00', '5');
INSERT INTO ocjene VALUES ('12', '0283018404', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '08:00:00', '4');
INSERT INTO ocjene VALUES ('12', '0283022254', TO_DATE('2014-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '2');
INSERT INTO ocjene VALUES ('12', '0283035485', TO_DATE('2014-06-23', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('12', '0283062547', TO_DATE('2014-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '3');
INSERT INTO ocjene VALUES ('13', '0313003860', TO_DATE('2014-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '2');
INSERT INTO ocjene VALUES ('13', '0313004207', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '5');
INSERT INTO ocjene VALUES ('13', '0313004277', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('13', '0313005214', TO_DATE('2013-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '4');
INSERT INTO ocjene VALUES ('13', '0313006332', TO_DATE('2013-08-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '1');
INSERT INTO ocjene VALUES ('13', '0313006332', TO_DATE('2014-08-23', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '1');
INSERT INTO ocjene VALUES ('13', '0313006332', TO_DATE('2015-06-24', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('13', '0313008547', TO_DATE('2013-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '18:00:00', '2');
INSERT INTO ocjene VALUES ('14', '0313004222', TO_DATE('2013-08-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '5');
INSERT INTO ocjene VALUES ('14', '0313004277', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '3');
INSERT INTO ocjene VALUES ('14', '0313005214', TO_DATE('2013-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '2');
INSERT INTO ocjene VALUES ('15', '0108066602', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('15', '0313003717', TO_DATE('2017-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '5');
INSERT INTO ocjene VALUES ('15', '0313004387', TO_DATE('2017-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '4');
INSERT INTO ocjene VALUES ('15', '0313006321', TO_DATE('2014-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '5');
INSERT INTO ocjene VALUES ('15', '0313006854', TO_DATE('2014-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '1');
INSERT INTO ocjene VALUES ('15', '0313006854', TO_DATE('2015-02-25', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '3');
INSERT INTO ocjene VALUES ('16', '0108065187', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('16', '0108066602', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('16', '0313004298', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '5');
INSERT INTO ocjene VALUES ('16', '0313006321', TO_DATE('2014-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '3');
INSERT INTO ocjene VALUES ('17', '0013020125', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('17', '0035188827', TO_DATE('2014-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '4');
INSERT INTO ocjene VALUES ('17', '0067433447', TO_DATE('2016-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('17', '0130521458', TO_DATE('2015-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('17', '0246007553', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '5');
INSERT INTO ocjene VALUES ('17', '1191220888', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '4');
INSERT INTO ocjene VALUES ('18', '0013026584', TO_DATE('2015-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('18', '0035187555', TO_DATE('2016-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '4');
INSERT INTO ocjene VALUES ('18', '0035188827', TO_DATE('2014-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '4');
INSERT INTO ocjene VALUES ('18', '0067433447', TO_DATE('2016-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('18', '0128055514', TO_DATE('2014-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '5');
INSERT INTO ocjene VALUES ('18', '0130854852', TO_DATE('2015-06-24', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('18', '0246007553', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('18', '0246027955', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '2');
INSERT INTO ocjene VALUES ('19', '0067430739', TO_DATE('2016-08-20', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '3');
INSERT INTO ocjene VALUES ('19', '0128052014', TO_DATE('2014-02-19', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('19', '0130421547', TO_DATE('2015-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('19', '1191200784', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '2');
INSERT INTO ocjene VALUES ('20', '0013022546', TO_DATE('2015-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '4');
INSERT INTO ocjene VALUES ('20', '0035166854', TO_DATE('2016-08-20', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '1');
INSERT INTO ocjene VALUES ('20', '0067430739', TO_DATE('2016-02-17', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('20', '0128053654', TO_DATE('2014-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '5');
INSERT INTO ocjene VALUES ('20', '0128056624', TO_DATE('2014-02-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '3');
INSERT INTO ocjene VALUES ('20', '0130421547', TO_DATE('2015-06-20', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '3');
INSERT INTO ocjene VALUES ('20', '0246012240', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('20', '0246026409', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('21', '1191219570', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('21', '1191221406', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '4');
INSERT INTO ocjene VALUES ('21', '1191221499', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '2');
INSERT INTO ocjene VALUES ('21', '1191230958', TO_DATE('2015-06-20', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '3');
INSERT INTO ocjene VALUES ('21', '1191231669', TO_DATE('2015-06-20', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '5');
INSERT INTO ocjene VALUES ('22', '1191219570', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('22', '1191220633', TO_DATE('2016-02-21', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '3');
INSERT INTO ocjene VALUES ('22', '1191221499', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '2');
INSERT INTO ocjene VALUES ('22', '1191221794', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('22', '1191231659', TO_DATE('2015-06-21', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '2');
INSERT INTO ocjene VALUES ('22', '1191333784', TO_DATE('2014-06-22', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('23', '1191220782', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('23', '1191221838', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('23', '1191231658', TO_DATE('2015-02-21', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '1');
INSERT INTO ocjene VALUES ('23', '1191231658', TO_DATE('2016-08-21', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '1');
INSERT INTO ocjene VALUES ('23', '1191231658', TO_DATE('2017-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('24', '1191220782', TO_DATE('2017-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('24', '1191221838', TO_DATE('2017-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('24', '1191230865', TO_DATE('2015-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '4');
INSERT INTO ocjene VALUES ('25', '1191220781', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('25', '1191230521', TO_DATE('2015-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '2');
INSERT INTO ocjene VALUES ('25', '1191230621', TO_DATE('2015-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('25', '1191303785', TO_DATE('2017-02-08', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '4');
INSERT INTO ocjene VALUES ('26', '1191220781', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('26', '1191230521', TO_DATE('2015-07-15', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('26', '1191230621', TO_DATE('2015-02-21', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('26', '1191303785', TO_DATE('2017-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('27', '0036440706', TO_DATE('2016-08-21', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('27', '0036452014', TO_DATE('2014-06-22', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('27', '0036460111', TO_DATE('2016-08-21', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('27', '0108065701', TO_DATE('2014-06-22', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('28', '0036435111', TO_DATE('2016-02-21', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '2');
INSERT INTO ocjene VALUES ('28', '0036450215', TO_DATE('2014-06-25', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '4');
INSERT INTO ocjene VALUES ('28', '0036460031', TO_DATE('2015-06-24', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '1');
INSERT INTO ocjene VALUES ('28', '0036460031', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '2');
INSERT INTO ocjene VALUES ('28', '0036463254', TO_DATE('2015-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('28', '0036463255', TO_DATE('2015-06-24', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('29', '0036430552', TO_DATE('2016-08-30', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '3');
INSERT INTO ocjene VALUES ('29', '0036468547', TO_DATE('2013-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '4');
INSERT INTO ocjene VALUES ('29', '0036499965', TO_DATE('2013-08-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '1');
INSERT INTO ocjene VALUES ('29', '0036499965', TO_DATE('2014-08-13', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '1');
INSERT INTO ocjene VALUES ('29', '0036499965', TO_DATE('2015-06-24', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('29', '0108066366', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('30', '0036430456', TO_DATE('2016-07-10', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '5');
INSERT INTO ocjene VALUES ('30', '0036450023', TO_DATE('2014-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '14:00:00', '3');
INSERT INTO ocjene VALUES ('30', '0036459870', TO_DATE('2014-02-19', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('30', '0036460022', TO_DATE('2013-08-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '1');
INSERT INTO ocjene VALUES ('30', '0036460022', TO_DATE('2014-06-24', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('30', '0036466211', TO_DATE('2015-06-24', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '3');
INSERT INTO ocjene VALUES ('31', '0016100313', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '3');
INSERT INTO ocjene VALUES ('31', '0016101784', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '2');
INSERT INTO ocjene VALUES ('31', '0016201458', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '4');
INSERT INTO ocjene VALUES ('31', '0016233522', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '2');
INSERT INTO ocjene VALUES ('31', '0016235684', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '3');
INSERT INTO ocjene VALUES ('31', '0128052037', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '2');
INSERT INTO ocjene VALUES ('31', '0128059857', TO_DATE('2014-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '2');
INSERT INTO ocjene VALUES ('31', '0128059857', TO_DATE('2014-02-16', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '5');
INSERT INTO ocjene VALUES ('32', '0016096972', TO_DATE('2016-07-16', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('32', '0016201458', TO_DATE('2016-07-16', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('32', '0016203355', TO_DATE('2016-07-16', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '4');
INSERT INTO ocjene VALUES ('32', '0016235684', TO_DATE('2016-07-16', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('33', '0016097990', TO_DATE('2016-02-17', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('33', '0016098017', TO_DATE('2016-02-17', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('33', '0016099969', TO_DATE('2016-02-17', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('33', '0016199452', TO_DATE('2016-02-17', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('33', '0016201125', TO_DATE('2016-02-17', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('33', '0016209876', TO_DATE('2016-02-17', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('33', '1191290785', TO_DATE('2017-02-15', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('34', '0016097990', TO_DATE('2016-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '4');
INSERT INTO ocjene VALUES ('34', '0016099969', TO_DATE('2016-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '4');
INSERT INTO ocjene VALUES ('34', '0016199452', TO_DATE('2016-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '5');
INSERT INTO ocjene VALUES ('34', '0016216325', TO_DATE('2016-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '2');
INSERT INTO ocjene VALUES ('34', '0016216326', TO_DATE('2016-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '13:30:00', '3');
INSERT INTO ocjene VALUES ('35', '0067025900', TO_DATE('2015-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '4');
INSERT INTO ocjene VALUES ('35', '0067025919', TO_DATE('2016-06-29', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('35', '0067025920', TO_DATE('2016-06-29', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '4');
INSERT INTO ocjene VALUES ('35', '0067403663', TO_DATE('2015-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '2');
INSERT INTO ocjene VALUES ('35', '0067405522', TO_DATE('2015-08-24', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '1');
INSERT INTO ocjene VALUES ('35', '0067405522', TO_DATE('2016-02-16', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '3');
INSERT INTO ocjene VALUES ('35', '0067408996', TO_DATE('2015-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '3');
INSERT INTO ocjene VALUES ('35', '0067431720', TO_DATE('2016-06-29', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('36', '0067403663', TO_DATE('2015-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '2');
INSERT INTO ocjene VALUES ('36', '0067405522', TO_DATE('2015-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '5');
INSERT INTO ocjene VALUES ('37', '0016200033', TO_DATE('2015-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '3');
INSERT INTO ocjene VALUES ('37', '0067401609', TO_DATE('2016-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '5');
INSERT INTO ocjene VALUES ('37', '0067402200', TO_DATE('2015-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '4');
INSERT INTO ocjene VALUES ('37', '0067408000', TO_DATE('2015-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '16:30:00', '5');
INSERT INTO ocjene VALUES ('37', '0067430279', TO_DATE('2016-06-16', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '2');
INSERT INTO ocjene VALUES ('38', '0016220011', TO_DATE('2015-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '5');
INSERT INTO ocjene VALUES ('38', '0067028521', TO_DATE('2015-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '2');
INSERT INTO ocjene VALUES ('38', '0067401609', TO_DATE('2016-06-20', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '5');
INSERT INTO ocjene VALUES ('38', '0067402200', TO_DATE('2015-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '5');
INSERT INTO ocjene VALUES ('38', '0067408000', TO_DATE('2015-08-15', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '1');
INSERT INTO ocjene VALUES ('38', '0067408000', TO_DATE('2016-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '2');
INSERT INTO ocjene VALUES ('39', '0112047168', TO_DATE('2016-08-21', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('39', '0112052142', TO_DATE('2017-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '2');
INSERT INTO ocjene VALUES ('39', '0112052200', TO_DATE('2016-06-26', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '3');
INSERT INTO ocjene VALUES ('39', '0112055201', TO_DATE('2017-02-18', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '3');
INSERT INTO ocjene VALUES ('39', '0128052335', TO_DATE('2015-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '3');
INSERT INTO ocjene VALUES ('40', '0112047238', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '2');
INSERT INTO ocjene VALUES ('40', '0112052200', TO_DATE('2016-06-29', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('40', '0112053256', TO_DATE('2017-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '4');
INSERT INTO ocjene VALUES ('40', '0112055201', TO_DATE('2017-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '16:00:00', '4');
INSERT INTO ocjene VALUES ('40', '0128052335', TO_DATE('2015-02-16', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '5');
INSERT INTO ocjene VALUES ('40', '0242010660', TO_DATE('2016-07-13', 'SYYYY-MM-DD HH24:MI:SS'), '13:00:00', '3');
INSERT INTO ocjene VALUES ('41', '0112034516', TO_DATE('2016-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '1');
INSERT INTO ocjene VALUES ('41', '0112034516', TO_DATE('2017-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '4');
INSERT INTO ocjene VALUES ('41', '0112046636', TO_DATE('2016-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '4');
INSERT INTO ocjene VALUES ('41', '0112050000', TO_DATE('2017-02-27', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '2');
INSERT INTO ocjene VALUES ('41', '0112053625', TO_DATE('2016-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '3');
INSERT INTO ocjene VALUES ('41', '0112058456', TO_DATE('2016-02-22', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '4');
INSERT INTO ocjene VALUES ('42', '0112037682', TO_DATE('2016-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '4');
INSERT INTO ocjene VALUES ('42', '0112050000', TO_DATE('2017-02-26', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '5');
INSERT INTO ocjene VALUES ('42', '0112053625', TO_DATE('2016-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '4');
INSERT INTO ocjene VALUES ('42', '0112058456', TO_DATE('2016-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '3');
INSERT INTO ocjene VALUES ('42', '0128045526', TO_DATE('2016-02-20', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '3');
INSERT INTO ocjene VALUES ('43', '0035177990', TO_DATE('2017-02-15', 'SYYYY-MM-DD HH24:MI:SS'), '08:00:00', '5');
INSERT INTO ocjene VALUES ('43', '0128050853', TO_DATE('2015-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '5');
INSERT INTO ocjene VALUES ('43', '0128051999', TO_DATE('2015-02-11', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '5');
INSERT INTO ocjene VALUES ('43', '0246022345', TO_DATE('2017-02-15', 'SYYYY-MM-DD HH24:MI:SS'), '08:00:00', '5');
INSERT INTO ocjene VALUES ('43', '0246024883', TO_DATE('2017-02-15', 'SYYYY-MM-DD HH24:MI:SS'), '08:00:00', '5');
INSERT INTO ocjene VALUES ('44', '0035166854', TO_DATE('2016-06-26', 'SYYYY-MM-DD HH24:MI:SS'), '18:30:00', '5');
INSERT INTO ocjene VALUES ('44', '0128052014', TO_DATE('2014-06-22', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('44', '0128056624', TO_DATE('2014-06-22', 'SYYYY-MM-DD HH24:MI:SS'), '10:00:00', '5');
INSERT INTO ocjene VALUES ('44', '0130421547', TO_DATE('2015-06-27', 'SYYYY-MM-DD HH24:MI:SS'), '15:00:00', '5');
INSERT INTO ocjene VALUES ('45', '0016201458', TO_DATE('2016-02-13', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('45', '0016203355', TO_DATE('2016-02-13', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('45', '0016233522', TO_DATE('2016-02-13', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('45', '0128052037', TO_DATE('2016-02-13', 'SYYYY-MM-DD HH24:MI:SS'), '17:00:00', '5');
INSERT INTO ocjene VALUES ('45', '0128059857', TO_DATE('2014-02-16', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '5');
INSERT INTO ocjene VALUES ('46', '0035177990', TO_DATE('2017-02-14', 'SYYYY-MM-DD HH24:MI:SS'), '11:00:00', '3');
INSERT INTO ocjene VALUES ('46', '0128050853', TO_DATE('2016-02-16', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '5');
INSERT INTO ocjene VALUES ('46', '0128051999', TO_DATE('2016-02-16', 'SYYYY-MM-DD HH24:MI:SS'), '12:30:00', '2');
COMMIT;

-- ----------------------------
-- Table structure for smjerovi
-- ----------------------------
DROP TABLE smjerovi;
CREATE TABLE smjerovi (
  id NUMBER(11) NOT NULL ,
  naziv NVARCHAR2(100) NOT NULL ,
  oibUstanova NCHAR(11) NOT NULL 
)
;

-- ----------------------------
-- Records of smjerovi
-- ----------------------------
INSERT INTO smjerovi VALUES ('1', 'smjer informatika', '08814003451');
INSERT INTO smjerovi VALUES ('2', 'smjer računarstvo', '08814003451');
INSERT INTO smjerovi VALUES ('3', 'smjer elektrotehnika', '08814003451');
INSERT INTO smjerovi VALUES ('4', 'smjer graditeljstvo', '08814003451');
INSERT INTO smjerovi VALUES ('5', 'studij trgovine', '21720825730');
INSERT INTO smjerovi VALUES ('6', 'upravni studij', '21720825730');
INSERT INTO smjerovi VALUES ('7', 'računarstvo', '31444990605');
INSERT INTO smjerovi VALUES ('8', 'menadžment turizma i sporta', '31444990605');
INSERT INTO smjerovi VALUES ('9', 'očna optika', '09032023114');
INSERT INTO smjerovi VALUES ('10', 'održavanje zrakoplova', '09032023114');
INSERT INTO smjerovi VALUES ('11', 'smjer matematika', '28163265527');
INSERT INTO smjerovi VALUES ('12', 'smjer fizika', '28163265527');
INSERT INTO smjerovi VALUES ('13', 'smjer kemija', '28163265527');
INSERT INTO smjerovi VALUES ('14', 'elektotehnika i informacijska tehnologija', '57029260362');
INSERT INTO smjerovi VALUES ('15', 'računarstvo', '57029260362');
INSERT INTO smjerovi VALUES ('16', 'informacijski i poslovni sustavi', '02024882310');
INSERT INTO smjerovi VALUES ('17', 'ekonomika poduzetništva', '02024882310');
INSERT INTO smjerovi VALUES ('18', 'poslovna ekonomija', '84477684422');
INSERT INTO smjerovi VALUES ('19', 'turizam', '84477684422');
INSERT INTO smjerovi VALUES ('20', 'brodostrojarstvo', '76722145702');
INSERT INTO smjerovi VALUES ('21', 'logistika i menadžment u pomorstvu', '76722145702');
COMMIT;

-- ----------------------------
-- Table structure for studenti
-- ----------------------------
DROP TABLE studenti;
CREATE TABLE studenti (
  jmbag NCHAR(10) NOT NULL ,
  ime NVARCHAR2(50) ,
  prezime NVARCHAR2(50) ,
  datumUpisa DATE NOT NULL ,
  postBrPrebivanje NUMBER(11) NOT NULL ,
  postBrStanovanja NUMBER(11) NOT NULL ,
  idSmjer NUMBER(11) NOT NULL 
)
;

-- ----------------------------
-- Records of studenti
-- ----------------------------
INSERT INTO studenti VALUES ('0010081356', 'Tanja', 'Krog', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10290', '3');
INSERT INTO studenti VALUES ('0013020125', 'Matea', 'Omanović', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '44000', '9');
INSERT INTO studenti VALUES ('0013022546', 'Antun', 'Mandić', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '31000', '10');
INSERT INTO studenti VALUES ('0013025926', 'Antonio', 'Pavić', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '44000', '5');
INSERT INTO studenti VALUES ('0013026584', 'Borna', 'Knežević', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '44000', '9');
INSERT INTO studenti VALUES ('0016096972', 'Dora', 'Vidaković', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '44000', '16');
INSERT INTO studenti VALUES ('0016097990', 'Vesna', 'Đukić', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '43000', '17');
INSERT INTO studenti VALUES ('0016098017', 'Marina', 'Zadro', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '47000', '17');
INSERT INTO studenti VALUES ('0016099969', 'Antonia', 'Čoić', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '35000', '17');
INSERT INTO studenti VALUES ('0016100313', 'Biljana', 'Vidović', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '35000', '16');
INSERT INTO studenti VALUES ('0016101784', 'David', 'Vučetić', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '42000', '16');
INSERT INTO studenti VALUES ('0016199452', 'Bernarda', 'Tomić', TO_DATE('2015-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '42000', '17');
INSERT INTO studenti VALUES ('0016200033', 'Zvonimir', 'Žarković', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '20000', '19');
INSERT INTO studenti VALUES ('0016201125', 'Denis', 'Šapina', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '42000', '17');
INSERT INTO studenti VALUES ('0016201458', 'Ana', 'Radak', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '22000', '16');
INSERT INTO studenti VALUES ('0016203355', 'Dino', 'Bošnjak', TO_DATE('2015-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '22300', '16');
INSERT INTO studenti VALUES ('0016209876', 'Kristina', 'Pešerović', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '22300', '17');
INSERT INTO studenti VALUES ('0016216325', 'Toni', 'Tošeski', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '10000', '17');
INSERT INTO studenti VALUES ('0016216326', 'Ivan', 'Horvat', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '10000', '17');
INSERT INTO studenti VALUES ('0016220011', 'Danijel', 'Zečević', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '23000', '19');
INSERT INTO studenti VALUES ('0016233522', 'Nikola', 'Habijan', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '42000', '16');
INSERT INTO studenti VALUES ('0016235684', 'Tomislav', 'Vukasović', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '23000', '16');
INSERT INTO studenti VALUES ('0035166854', 'Krešo', 'Šišić', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '10');
INSERT INTO studenti VALUES ('0035177990', 'Irena', 'Dabić', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '1');
INSERT INTO studenti VALUES ('0035179953', 'Tanja', 'Sunek', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '2');
INSERT INTO studenti VALUES ('0035180940', 'Sonja', 'Šimpraga', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '21000', '4');
INSERT INTO studenti VALUES ('0035182233', 'Ivan', 'Turk', TO_DATE('2012-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '43000', '3');
INSERT INTO studenti VALUES ('0035187555', 'Marko', 'Krišto', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10000', '9');
INSERT INTO studenti VALUES ('0035188827', 'Blaž', 'Đuranić', TO_DATE('2013-09-21', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '9');
INSERT INTO studenti VALUES ('0035192211', 'Karla', 'Brandis', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '40000', '4');
INSERT INTO studenti VALUES ('0035192565', 'Kristina', 'Matleković', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '43000', '4');
INSERT INTO studenti VALUES ('0036430456', 'Dragutina', 'Topić', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '43000', '15');
INSERT INTO studenti VALUES ('0036430552', 'Armin', 'Čehajić', TO_DATE('2015-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '44000', '15');
INSERT INTO studenti VALUES ('0036435111', 'Maja', 'Vuković', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '21300', '14');
INSERT INTO studenti VALUES ('0036440545', 'Aleksandra', 'Bedić', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '32000', '6');
INSERT INTO studenti VALUES ('0036440706', 'Vicka', 'Zečević', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '31000', '14');
INSERT INTO studenti VALUES ('0036450023', 'Darko', 'Zidanić', TO_DATE('2013-09-23', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '15');
INSERT INTO studenti VALUES ('0036450215', 'Josip', 'Pavković', TO_DATE('2013-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '20000', '14');
INSERT INTO studenti VALUES ('0036452014', 'Alen', 'Martić', TO_DATE('2013-09-22', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '14');
INSERT INTO studenti VALUES ('0036459870', 'Klaudija', 'Buljević', TO_DATE('2013-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '20000', '15');
INSERT INTO studenti VALUES ('0036460022', 'Ivan', 'Matić', TO_DATE('2012-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '15');
INSERT INTO studenti VALUES ('0036460031', 'Dajana', 'Jerec', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10430', '14');
INSERT INTO studenti VALUES ('0036460111', 'Ozren', 'Savić', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10430', '14');
INSERT INTO studenti VALUES ('0036463254', 'Ivan', 'Zović', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '14');
INSERT INTO studenti VALUES ('0036463255', 'Ivan', 'Horvat', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10410', '14');
INSERT INTO studenti VALUES ('0036466211', 'Nada', 'Marulin', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '15');
INSERT INTO studenti VALUES ('0036468547', 'Sandra', 'Labak', TO_DATE('2012-09-23', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '47000', '15');
INSERT INTO studenti VALUES ('0036499965', 'Lovro', 'Keglović', TO_DATE('2012-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10410', '15');
INSERT INTO studenti VALUES ('0067025900', 'Valerija', 'Ivanek', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '32100', '18');
INSERT INTO studenti VALUES ('0067025919', 'Hana', 'Amulić', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '34000', '18');
INSERT INTO studenti VALUES ('0067025920', 'Ante', 'Cindrić', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '10410', '18');
INSERT INTO studenti VALUES ('0067028521', 'Helena', 'Džapo', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '10410', '19');
INSERT INTO studenti VALUES ('0067401609', 'Teo', 'Turković', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '32000', '19');
INSERT INTO studenti VALUES ('0067402200', 'Borna', 'Pavić', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '10430', '19');
INSERT INTO studenti VALUES ('0067403663', 'Mihael', 'Škoda', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '21000', '18');
INSERT INTO studenti VALUES ('0067405522', 'Dario', 'Veh', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '10430', '18');
INSERT INTO studenti VALUES ('0067408000', 'Nikola', 'Mucić', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '21000', '19');
INSERT INTO studenti VALUES ('0067408996', 'Rajko', 'Posavi', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '10000', '18');
INSERT INTO studenti VALUES ('0067430279', 'Tajana', 'Vugrinec', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '23000', '19');
INSERT INTO studenti VALUES ('0067430739', 'Marijana', 'Adžija', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '10');
INSERT INTO studenti VALUES ('0067431720', 'Ivana', 'Šokčić', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '21000', '18');
INSERT INTO studenti VALUES ('0067433447', 'Francika', 'Dragić', TO_DATE('2015-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '21000', '10410', '9');
INSERT INTO studenti VALUES ('0108065150', 'Vanesa', 'Kovačević', TO_DATE('2013-09-22', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '10290', '6');
INSERT INTO studenti VALUES ('0108065187', 'Tomislav', 'Obrovac', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '10000', '7');
INSERT INTO studenti VALUES ('0108065701', 'Nika', 'Kovačević', TO_DATE('2013-09-23', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '52210', '14');
INSERT INTO studenti VALUES ('0108065951', 'Jan', 'Dumančić', TO_DATE('2013-09-21', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '10290', '5');
INSERT INTO studenti VALUES ('0108066366', 'Iva', 'Perković', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '51000', '15');
INSERT INTO studenti VALUES ('0108066602', 'Lorena', 'Fabijanić', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '22300', '7');
INSERT INTO studenti VALUES ('0108067363', 'Filip', 'Kljaić', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '10000', '8');
INSERT INTO studenti VALUES ('0112034516', 'Denis', 'Vrdoljak', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '52440', '21');
INSERT INTO studenti VALUES ('0112037682', 'Nikola', 'Gorički', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '51000', '21');
INSERT INTO studenti VALUES ('0112046636', 'Ivana', 'Gložinić', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '52210', '21');
INSERT INTO studenti VALUES ('0112047168', 'Marko', 'Erceg', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '10000', '20');
INSERT INTO studenti VALUES ('0112047238', 'Ana', 'Ujčić', TO_DATE('2015-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '51000', '20');
INSERT INTO studenti VALUES ('0112050000', 'Filip', 'Zaležak', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '23000', '21');
INSERT INTO studenti VALUES ('0112052142', 'Želimir', 'Drežnjak', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '23000', '20');
INSERT INTO studenti VALUES ('0112052200', 'Matija', 'Capan', TO_DATE('2015-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '52440', '20');
INSERT INTO studenti VALUES ('0112053256', 'Anton', 'Žagar', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '23000', '20');
INSERT INTO studenti VALUES ('0112053625', 'Boris', 'Miljuš', TO_DATE('2015-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '52210', '21');
INSERT INTO studenti VALUES ('0112055201', 'Nikola', 'Sušac', TO_DATE('2016-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '52210', '20');
INSERT INTO studenti VALUES ('0112058456', 'Nikolina', 'Jurišić', TO_DATE('2015-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '52440', '21');
INSERT INTO studenti VALUES ('0128045526', 'Kristina', 'Košić-Kancir', TO_DATE('2015-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '22300', '21');
INSERT INTO studenti VALUES ('0128050002', 'Kristina', 'Žikić', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '34000', '1');
INSERT INTO studenti VALUES ('0128050853', 'Eva', 'Delač', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '51000', '1');
INSERT INTO studenti VALUES ('0128051999', 'Marina', 'Zrno', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '22000', '1');
INSERT INTO studenti VALUES ('0128052014', 'Tomislav', 'Paulić', TO_DATE('2013-09-22', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '21300', '10');
INSERT INTO studenti VALUES ('0128052037', 'Tomislav', 'Miličić', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '40000', '16');
INSERT INTO studenti VALUES ('0128052105', 'Luka', 'Šimić', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '43000', '2');
INSERT INTO studenti VALUES ('0128052335', 'Matej', 'Levanić Kutni', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '22000', '20');
INSERT INTO studenti VALUES ('0128053654', 'Zoran', 'Videković', TO_DATE('2013-09-23', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '22300', '10');
INSERT INTO studenti VALUES ('0128055514', 'Kristina', 'Nakić', TO_DATE('2013-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '20000', '9');
INSERT INTO studenti VALUES ('0128056624', 'Stanislav', 'Oršolić', TO_DATE('2013-09-21', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10000', '10');
INSERT INTO studenti VALUES ('0128059857', 'Domagoj', 'Paulić', TO_DATE('2013-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '42000', '35000', '16');
INSERT INTO studenti VALUES ('0130421547', 'Dina', 'Panić', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '10');
INSERT INTO studenti VALUES ('0130521458', 'Nera', 'Plejić', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '31000', '9');
INSERT INTO studenti VALUES ('0130854852', 'Mateja', 'Sambunjak', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '35000', '9');
INSERT INTO studenti VALUES ('0242010660', 'Martina', 'Ursa', TO_DATE('2015-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '51000', '52210', '20');
INSERT INTO studenti VALUES ('0246007553', 'Nina', 'Katić', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '9');
INSERT INTO studenti VALUES ('0246012240', 'Matija', 'Majhen', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10000', '10');
INSERT INTO studenti VALUES ('0246020326', 'Melita', 'Rukavina', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '35000', '3');
INSERT INTO studenti VALUES ('0246022344', 'Andrej', 'Novak', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '52210', '3');
INSERT INTO studenti VALUES ('0246022345', 'Ivana', 'Babić', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '1');
INSERT INTO studenti VALUES ('0246024584', 'Marin', 'Obrdalj', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '32000', '5');
INSERT INTO studenti VALUES ('0246024883', 'Ivana', 'Jelenčić', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '1');
INSERT INTO studenti VALUES ('0246025333', 'Ksenija', 'Božić', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '21300', '4');
INSERT INTO studenti VALUES ('0246025342', 'Draga', 'Kaleb', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '22000', '2');
INSERT INTO studenti VALUES ('0246025343', 'Ana', 'Miličević', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '52210', '2');
INSERT INTO studenti VALUES ('0246025633', 'Zvonimir', 'Kolar', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '22300', '4');
INSERT INTO studenti VALUES ('0246026409', 'Marcela', 'Jusup', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10000', '10');
INSERT INTO studenti VALUES ('0246026699', 'Sonja', 'Batelić', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '53285', '1');
INSERT INTO studenti VALUES ('0246027548', 'Lara', 'Horvat', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '40000', '2');
INSERT INTO studenti VALUES ('0246027955', 'Dino', 'Rosenzweig', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '9');
INSERT INTO studenti VALUES ('0246029526', 'Dorotea', 'Stipanov', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '20000', '3');
INSERT INTO studenti VALUES ('0246031254', 'Petra', 'Vujić', TO_DATE('2012-09-22', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '34000', '3');
INSERT INTO studenti VALUES ('0246033254', 'Mia', 'Radojčić', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '40000', '2');
INSERT INTO studenti VALUES ('0246033365', 'Marko', 'Noskov', TO_DATE('2012-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '4');
INSERT INTO studenti VALUES ('0246035265', 'Katarina', 'Dujmović', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '35000', '2');
INSERT INTO studenti VALUES ('0246036655', 'Marija-Olgica', 'Kasumović', TO_DATE('2012-09-23', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '34000', '4');
INSERT INTO studenti VALUES ('0283016212', 'Višnja', 'Pisac', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '35000', '6');
INSERT INTO studenti VALUES ('0283016371', 'Ines', 'Pozaić', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '35000', '5');
INSERT INTO studenti VALUES ('0283016670', 'Pavo', 'Baničević', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '31000', '6');
INSERT INTO studenti VALUES ('0283018404', 'Ante', 'Jukić', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '31000', '6');
INSERT INTO studenti VALUES ('0283018425', 'Anela', 'Pavelić', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '32000', '5');
INSERT INTO studenti VALUES ('0283021325', 'Robert', 'Stanić', TO_DATE('2012-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '32000', '5');
INSERT INTO studenti VALUES ('0283021548', 'Tomislav', 'Pokupić', TO_DATE('2012-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '32000', '5');
INSERT INTO studenti VALUES ('0283022254', 'Juraj', 'Kovačević', TO_DATE('2013-09-23', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '31000', '6');
INSERT INTO studenti VALUES ('0283035485', 'Tomislav', 'Grgić', TO_DATE('2013-09-21', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '32100', '6');
INSERT INTO studenti VALUES ('0283062547', 'Borna', 'Mikuličin', TO_DATE('2013-09-22', 'SYYYY-MM-DD HH24:MI:SS'), '32000', '32100', '6');
INSERT INTO studenti VALUES ('0313003717', 'Slađana', 'Kopačević', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '40000', '7');
INSERT INTO studenti VALUES ('0313003860', 'Martina', 'Rak', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '47000', '8');
INSERT INTO studenti VALUES ('0313004207', 'Luka', 'Skupnjak', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '47000', '8');
INSERT INTO studenti VALUES ('0313004222', 'Marko', 'Keser', TO_DATE('2012-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '40000', '8');
INSERT INTO studenti VALUES ('0313004277', 'Slavko', 'Bezeredi', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '34000', '8');
INSERT INTO studenti VALUES ('0313004298', 'Ivan', 'Stojić', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '34000', '7');
INSERT INTO studenti VALUES ('0313004387', 'Kristina', 'Copak', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '43000', '7');
INSERT INTO studenti VALUES ('0313005214', 'Josip', 'Marin', TO_DATE('2012-09-22', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '10290', '8');
INSERT INTO studenti VALUES ('0313006321', 'Nikola', 'Kupres', TO_DATE('2013-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '10290', '7');
INSERT INTO studenti VALUES ('0313006332', 'Karla', 'Rolj', TO_DATE('2012-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '44000', '8');
INSERT INTO studenti VALUES ('0313006854', 'Marko', 'Šarić', TO_DATE('2013-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '40000', '7');
INSERT INTO studenti VALUES ('0313008547', 'Sandra', 'Tinjić', TO_DATE('2012-09-23', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '44000', '8');
INSERT INTO studenti VALUES ('0313011025', 'Filip', 'Fadljević', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '40000', '44010', '7');
INSERT INTO studenti VALUES ('1191200784', 'Dubravko', 'Antunović', TO_DATE('2016-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '10');
INSERT INTO studenti VALUES ('1191219570', 'Renato', 'Babojelić', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '11');
INSERT INTO studenti VALUES ('1191220001', 'Tina', 'Kostelić', TO_DATE('2016-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '32245', '13');
INSERT INTO studenti VALUES ('1191220633', 'Mia', 'Pavić', TO_DATE('2013-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '23000', '11');
INSERT INTO studenti VALUES ('1191220781', 'Marina', 'Krmpotić', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '32100', '13');
INSERT INTO studenti VALUES ('1191220782', 'Mare', 'Mistrić', TO_DATE('2016-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '12');
INSERT INTO studenti VALUES ('1191220888', 'Nikolina', 'Orlović', TO_DATE('2016-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10410', '10410', '9');
INSERT INTO studenti VALUES ('1191221406', 'Ana', 'Anđal', TO_DATE('2016-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '11');
INSERT INTO studenti VALUES ('1191221499', 'Ivan', 'Horvat', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '11');
INSERT INTO studenti VALUES ('1191221794', 'Katarina', 'Gudelj', TO_DATE('2016-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '51000', '11');
INSERT INTO studenti VALUES ('1191221838', 'Boris', 'Hrašćanec', TO_DATE('2016-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '51000', '12');
INSERT INTO studenti VALUES ('1191230521', 'Anya', 'Sardelic Wojcikiewicz', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10410', '13');
INSERT INTO studenti VALUES ('1191230621', 'Valentina', 'Benšek', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '13');
INSERT INTO studenti VALUES ('1191230865', 'Lora', 'Čorluka', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10430', '12');
INSERT INTO studenti VALUES ('1191230958', 'Valentina', 'Deisinger', TO_DATE('2014-09-30', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10430', '11');
INSERT INTO studenti VALUES ('1191231658', 'Niko', 'Denona', TO_DATE('2014-09-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10290', '12');
INSERT INTO studenti VALUES ('1191231659', 'Josipa', 'Glavaš', TO_DATE('2014-09-28', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10290', '11');
INSERT INTO studenti VALUES ('1191231669', 'Nikola', 'Kirasić', TO_DATE('2014-09-29', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '11');
INSERT INTO studenti VALUES ('1191290785', 'Želimira', 'Ivček', TO_DATE('2016-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '31000', '17');
INSERT INTO studenti VALUES ('1191303785', 'Miro', 'Pavlović', TO_DATE('2016-09-25', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '10000', '13');
INSERT INTO studenti VALUES ('1191333784', 'Bratislav', 'Jurišić', TO_DATE('2015-09-26', 'SYYYY-MM-DD HH24:MI:SS'), '10000', '23000', '11');
COMMIT;

-- ----------------------------
-- Table structure for ulogaizvrsitelja
-- ----------------------------
DROP TABLE ulogaizvrsitelja;
CREATE TABLE ulogaizvrsitelja (
  id NUMBER(11) NOT NULL ,
  naziv NVARCHAR2(30) NOT NULL 
)
;

-- ----------------------------
-- Records of ulogaizvrsitelja
-- ----------------------------
INSERT INTO ulogaizvrsitelja VALUES ('1', 'profesor');
INSERT INTO ulogaizvrsitelja VALUES ('2', 'asistent');
COMMIT;

-- ----------------------------
-- Table structure for ustanove
-- ----------------------------
DROP TABLE ustanove;
CREATE TABLE ustanove (
  oib NCHAR(11) NOT NULL ,
  naziv NVARCHAR2(45) ,
  zRacun NCHAR(18) ,
  adresa NVARCHAR2(100) ,
  datumOsnutka DATE ,
  postbr NUMBER(11) NOT NULL 
)
;

-- ----------------------------
-- Records of ustanove
-- ----------------------------
INSERT INTO ustanove VALUES ('02024882310', 'Fakultet organizacije i informatike', '2360000-1101741225', 'Pavlinska 2', TO_DATE('1974-03-29', 'SYYYY-MM-DD HH24:MI:SS'), '42000');
INSERT INTO ustanove VALUES ('08814003451', 'Tehničko Veleučilište u Zagrebu', '2360000-1101350801', 'Vrbik 8', TO_DATE('1998-05-27', 'SYYYY-MM-DD HH24:MI:SS'), '10000');
INSERT INTO ustanove VALUES ('09032023114', 'Veleučilište Velika Gorica', '2340009-1110122348', 'Zagrebačka cesta 5', TO_DATE('2002-06-12', 'SYYYY-MM-DD HH24:MI:SS'), '10410');
INSERT INTO ustanove VALUES ('21720825730', 'Veleučilište Ladislava Ružička', '2500009-1102156476', 'Županijska 50', TO_DATE('2005-07-15', 'SYYYY-MM-DD HH24:MI:SS'), '32000');
INSERT INTO ustanove VALUES ('28163265527', 'Prirodoslovno-matematički fakultet', '2360000-1101522208', 'Horvatovac 102A', TO_DATE('1946-06-08', 'SYYYY-MM-DD HH24:MI:SS'), '10000');
INSERT INTO ustanove VALUES ('31444990605', 'Međimursko veleučilište u Čakovcu', '2392007-1100052659', 'Bana Josipa Jelačića  22a', TO_DATE('2005-09-24', 'SYYYY-MM-DD HH24:MI:SS'), '40000');
INSERT INTO ustanove VALUES ('57029260362', 'Fakultet elektrotehnike i računarstva', '2360000-1101218080', 'Unska 3', TO_DATE('1956-06-08', 'SYYYY-MM-DD HH24:MI:SS'), '10000');
INSERT INTO ustanove VALUES ('76722145702', 'Pomorski fakultet', '1360000-1101408432', 'Studenska ulica 2', TO_DATE('1914-11-26', 'SYYYY-MM-DD HH24:MI:SS'), '51000');
INSERT INTO ustanove VALUES ('84477684422', 'Ekonomski faklutet', '2390001-1100015220', 'Cvite Fiskovića 5', TO_DATE('1974-06-15', 'SYYYY-MM-DD HH24:MI:SS'), '21000');
COMMIT;

-- ----------------------------
-- Table structure for zupanije
-- ----------------------------
DROP TABLE zupanije;
CREATE TABLE zupanije (
  id NUMBER(11) NOT NULL ,
  nazivZupanija NVARCHAR2(100) NOT NULL 
)
;

-- ----------------------------
-- Records of zupanije
-- ----------------------------
INSERT INTO zupanije VALUES ('1', 'Grad Zagreb');
INSERT INTO zupanije VALUES ('2', 'Zagrebačka županija');
INSERT INTO zupanije VALUES ('3', 'Krapinsko-zagorska županija');
INSERT INTO zupanije VALUES ('4', 'Sisačko-moslavačka županija');
INSERT INTO zupanije VALUES ('5', 'Karlovačka županija');
INSERT INTO zupanije VALUES ('6', 'Varaždinska županija');
INSERT INTO zupanije VALUES ('7', 'Koprivničko-križevačka županija');
INSERT INTO zupanije VALUES ('8', 'Bjelovarsko-bilogorska županija');
INSERT INTO zupanije VALUES ('9', 'Primorsko-goranska županija');
INSERT INTO zupanije VALUES ('10', 'Ličko-senjska županija');
INSERT INTO zupanije VALUES ('11', 'Virovitičko-podravska županija');
INSERT INTO zupanije VALUES ('12', 'Požeško-slavonska županija');
INSERT INTO zupanije VALUES ('13', 'Brodsko-posavska županija');
INSERT INTO zupanije VALUES ('14', 'Zadarska županija');
INSERT INTO zupanije VALUES ('15', 'Osječko-baranjska županija');
INSERT INTO zupanije VALUES ('16', 'Šibensko-kninska županija');
INSERT INTO zupanije VALUES ('17', 'Vukovarsko-srijemska županija');
INSERT INTO zupanije VALUES ('18', 'Splitsko-dalmatinska županija');
INSERT INTO zupanije VALUES ('19', 'Istarska županija');
INSERT INTO zupanije VALUES ('20', 'Dubrovačko-neretvanska županija');
INSERT INTO zupanije VALUES ('21', 'Međimurska županija');
COMMIT;

-- ----------------------------
-- Primary Key structure for table izvrsitelji
-- ----------------------------
ALTER TABLE izvrsitelji ADD PRIMARY KEY (jmbgNastavnik, idKolegij, idUlogaIzvrsitelja);

-- ----------------------------
-- Indexes structure for table izvrsitelji
-- ----------------------------
CREATE INDEX fk_izvrsitelji_nastavnici1
  ON izvrsitelji (jmbgNastavnik);
CREATE INDEX fk_izvrsitelji_kolegiji1
  ON izvrsitelji (idKolegij);
CREATE INDEX fk_izvrsitelji_ui1
  ON izvrsitelji (idUlogaIzvrsitelja);

-- ----------------------------
-- Primary Key structure for table kolegiji
-- ----------------------------
ALTER TABLE kolegiji ADD PRIMARY KEY (id);

-- ----------------------------
-- Indexes structure for table kolegiji
-- ----------------------------
CREATE INDEX fk_kolegiji_smjerovi1_idx
  ON kolegiji (idSmjer);

-- ----------------------------
-- Primary Key structure for table mjesta
-- ----------------------------
ALTER TABLE mjesta ADD PRIMARY KEY (postbr);

-- ----------------------------
-- Indexes structure for table mjesta
-- ----------------------------
CREATE INDEX fk_Mjesto_Zupanije1_idx
  ON mjesta (idZupanija);

-- ----------------------------
-- Primary Key structure for table nastavnici
-- ----------------------------
ALTER TABLE nastavnici ADD PRIMARY KEY (jmbg);

-- ----------------------------
-- Indexes structure for table nastavnici
-- ----------------------------
CREATE INDEX fk_nastavnici_mjesto1
  ON nastavnici (postBr);

-- ----------------------------
-- Primary Key structure for table ocjene
-- ----------------------------
ALTER TABLE ocjene ADD PRIMARY KEY (idKolegij, jmbagStudent, datumPolaganja);

-- ----------------------------
-- Indexes structure for table ocjene
-- ----------------------------
CREATE INDEX fk_ocjene_kolegiji1
  ON ocjene (idKolegij);
CREATE INDEX fk_ocjene_studenti1
  ON ocjene (jmbagStudent);

-- ----------------------------
-- Primary Key structure for table smjerovi
-- ----------------------------
ALTER TABLE smjerovi ADD PRIMARY KEY (id);

-- ----------------------------
-- Indexes structure for table smjerovi
-- ----------------------------
CREATE INDEX fk_smjerovi_ustanove1
  ON smjerovi (oibUstanova);

-- ----------------------------
-- Primary Key structure for table studenti
-- ----------------------------
ALTER TABLE studenti ADD PRIMARY KEY (jmbag);

-- ----------------------------
-- Indexes structure for table studenti
-- ----------------------------
CREATE INDEX fk_studenti_mjesto1
  ON studenti (postBrPrebivanje);
CREATE INDEX fk_studenti_mjesto2
  ON studenti (postBrStanovanja);
CREATE INDEX fk_studenti_smjerovi1_idx
  ON studenti (idSmjer);

-- ----------------------------
-- Primary Key structure for table ulogaizvrsitelja
-- ----------------------------
ALTER TABLE ulogaizvrsitelja ADD PRIMARY KEY (id);

-- ----------------------------
-- Primary Key structure for table ustanove
-- ----------------------------
ALTER TABLE ustanove ADD PRIMARY KEY (oib);

-- ----------------------------
-- Indexes structure for table ustanove
-- ----------------------------
CREATE INDEX fk_ustanove_mjesto1
  ON ustanove (postbr);

-- ----------------------------
-- Primary Key structure for table zupanije
-- ----------------------------
ALTER TABLE zupanije ADD PRIMARY KEY (id);

-- ----------------------------
-- Foreign Keys structure for table izvrsitelji
-- ----------------------------
ALTER TABLE izvrsitelji ADD CONSTRAINT fk_izvrsitelji_kolegiji1 FOREIGN KEY (idKolegij) REFERENCES kolegiji (id);
ALTER TABLE izvrsitelji ADD CONSTRAINT fk_izvrsitelji_nastavnici1 FOREIGN KEY (jmbgNastavnik) REFERENCES nastavnici (jmbg);
ALTER TABLE izvrsitelji ADD CONSTRAINT fk_izvrsitelji_ui1 FOREIGN KEY (idUlogaIzvrsitelja) REFERENCES ulogaizvrsitelja (id);

-- ----------------------------
-- Foreign Keys structure for table kolegiji
-- ----------------------------
ALTER TABLE kolegiji ADD CONSTRAINT fk_kolegiji_smjerovi1 FOREIGN KEY (idSmjer) REFERENCES smjerovi (id);

-- ----------------------------
-- Foreign Keys structure for table mjesta
-- ----------------------------
ALTER TABLE mjesta ADD CONSTRAINT fk_Mjesto_Zupanije1 FOREIGN KEY (idZupanija) REFERENCES zupanije (id);

-- ----------------------------
-- Foreign Keys structure for table nastavnici
-- ----------------------------
ALTER TABLE nastavnici ADD CONSTRAINT fk_nastavnici_mjesto1 FOREIGN KEY (postBr) REFERENCES mjesta (postbr);

-- ----------------------------
-- Foreign Keys structure for table ocjene
-- ----------------------------
ALTER TABLE ocjene ADD CONSTRAINT fk_ocjene_kolegiji1 FOREIGN KEY (idKolegij) REFERENCES kolegiji (id);
ALTER TABLE ocjene ADD CONSTRAINT fk_ocjene_studenti1 FOREIGN KEY (jmbagStudent) REFERENCES studenti (jmbag);

-- ----------------------------
-- Foreign Keys structure for table smjerovi
-- ----------------------------
ALTER TABLE smjerovi ADD CONSTRAINT fk_smjerovi_ustanove1 FOREIGN KEY (oibUstanova) REFERENCES ustanove (oib);

-- ----------------------------
-- Foreign Keys structure for table studenti
-- ----------------------------
ALTER TABLE studenti ADD CONSTRAINT fk_studenti_mjesto1 FOREIGN KEY (postBrPrebivanje) REFERENCES mjesta (postbr);
ALTER TABLE studenti ADD CONSTRAINT fk_studenti_mjesto2 FOREIGN KEY (postBrStanovanja) REFERENCES mjesta (postbr);
ALTER TABLE studenti ADD CONSTRAINT fk_studenti_smjerovi1 FOREIGN KEY (idSmjer) REFERENCES smjerovi (id);

-- ----------------------------
-- Foreign Keys structure for table ustanove
-- ----------------------------
ALTER TABLE ustanove ADD CONSTRAINT fk_ustanove_mjesto1 FOREIGN KEY (postbr) REFERENCES mjesta (postbr);
COMMIT;
