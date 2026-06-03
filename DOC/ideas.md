# Nápady pro hru Traders

- [Nápady pro hru Traders](#nápady-pro-hru-traders)
- [Vizuální zpracování](#vizuální-zpracování)
- [Stroje](#stroje)
  - [Návrh startovních podvozků (Éra I)](#návrh-startovních-podvozků-éra-i)
- [Vylepšení strojů](#vylepšení-strojů)
  - [Éra I (Dřevo a plachty)](#éra-i-dřevo-a-plachty)
  - [Éra II (Pára a železo)](#éra-ii-pára-a-železo)
  - [Éra III (Ocel)](#éra-iii-ocel)
  - [Speciální periferie (Utility)](#speciální-periferie-utility)
- [Začátek hry](#začátek-hry)
- [Města](#města)
  - [Upgrade měst](#upgrade-měst)
  - [Názvy měst](#názvy-měst)
- [Výměna mezi hráči](#výměna-mezi-hráči)
  - [1. Svobodný trh (Peer-to-Peer směna)](#1-svobodný-trh-peer-to-peer-směna)
  - [2. Logistické subdodávky (Smart Contracts)](#2-logistické-subdodávky-smart-contracts)
  - [3. Městská překladiště (Asynchronní výměna)](#3-městská-překladiště-asynchronní-výměna)

# Vizuální zpracování

Třípásmový layout: Karty jsou na výšku a vedle sebe. Trup lodi zabírá striktně jen prostřední vodorovný pruh. Horní a spodní okraj karty zůstává čistý a slouží výhradně pro texty, názvy a propojovací čáry. Tím vzniká neprůstřelný řád.

Potlačené pozadí: Místo plnobarevné malby oceánu nebo pouště, která by vizuálně "křičela", je tu jen velmi jemná textura (světlé mraky). Díky tomu barevné herní kostky a samotný trup stroje na stole okamžitě vyniknou. Redukuje to vizuální šum na minimum

# Stroje

Anatomie řadového stroje
Aby toto vrstvení fungovalo ergonomicky, stačí zavést jednoduchou prostorovou gramatiku. Každý stroj funguje jako vlaková souprava.

- Velitelský můstek (Bokem): Pilotní licence leží nad řadou nebo vedle ní jako hlavní dashboard pro HP a rychlost.
- Příď (První karta zleva): Karta Pohonu (motor, plachty). Definuje hrubou sílu stroje a vizuálně ho táhne kupředu.
- Trup (Další karty v řadě): Sklady, zbraně, obrana a utility poskládané plynule za sebe. Dřevěné kostičky surovin hráči pokládají přímo na ilustrace skladů.

Vizuálně to na stole zabírá krásný vodorovný pruh:
[ Karta Motoru ] ➡️ [ Karta Skladu ] ➡️ [ Karta Skladu ] ➡️ [ Karta Děla ]

## Návrh startovních podvozků (Éra I)
Startovní karty musí dohromady dávat logický fyzikální smysl. Pokud sečteme příď a záď, musí vzniknout stroj, který se reálně pohne a něco uveze.

1. Námořní Loď (Důraz na kapacitu)
Příď a záď tvoří pomalý, ale velmi stabilní a prostorný základ.

Příď: Dřevěný vaz (Výkon 3, Zátěž 1, Kapacita 0)

Záď: Kormidelní paluba (Výkon 0, Zátěž 1, Kapacita 2)

Stav na začátku hry: Rychlost 1, uveze 2 kostičky.

2. Pouštní Chodec (Důraz na mobilitu)
Chodci nemají od základu velké sklady, ale umí se hýbat plynule přes písečné duny kolem Khar-Toby.

Příď: Navigační hlava (Výkon 1, Zátěž 0, Kapacita 0, Utility: Ignoruje postihy pouště)

Záď: Šlapací mechanismus (Výkon 3, Zátěž 1, Kapacita 1)

Stav na začátku hry: Rychlost 3, uveze 1 kostičku.

3. Vzducholoď (Důraz na rychlost)
Křehká struktura spoléhající na vztlak, obrovská rychlost, ale minimální startovní nosnost.

Příď: Pozorovací gondola (Výkon 0, Zátěž 0, Kapacita 1)

Záď: Ocasní ploutve (Výkon 4, Zátěž 0, Kapacita 0)

Stav na začátku hry: Rychlost 4, uveze 1 kostičku.

# Vylepšení strojů

Kolik nohou může mít chodec?

Pohon určuje kolik karet může tvořit jeden prostředek.

Éra I (Dřevo a Plachty):
Lehké a levné moduly. Dřevěný trup tě nezatíží, plachty nepotřebují uhlí k provozu, ale celková kapacita a odolnost proti pirátům je mizerná.

Éra II (Pára a Železo):
Nastupuje průmyslová revoluce. Železné nýtované pláty a parní kotle. Tyhle moduly mají obrovský výkon a kapacitu, ale jejich zátěž je tak velká, že k nim musíš připojit odpovídající pohon, jinak se vůbec nepohneš. Navíc parní motory mohou vyžadovat, abys v nákladovém prostoru trvale vozil 1 kostičku uhlí jen jako palivo.

Éra III (Ocel):
Masivní ocelové dreadnoughty a aetherové turbíny. Extrémně drahé moduly s obrovským výkonem, které ti umožní přejet mapu za jeden tah a odvézt půlku města.

Parní kotel V2 dává výkon 4.


Kráčecí stroj:
Hřbetní plachty
Boční plachty
Nohy

Specifické moduly podle typu plavidla
Zde je nástřel, jak by se mohly moduly lišit, abychom dodrželi mechaniku „Výkon vs. Zátěž“ a zároveň udrželi tvrdý parní/steampunkový vizuál:

1. Lodě (Dominance na vodě: Obrovská kapacita, hrubá síla, ale závislost na přístavech)
Lodě mohou nést ten nejtěžší náklad a nejsilnější pancíř, ale potřebují masivní tah.

Parní koleso (Pohon): Vysoký výkon, ale velká zátěž. Ideální pro těžkotonážní transporty rudy.

Vodotěsné přepážky (Obrana): Extrémně zvyšují životy lodi, ale přidávají zátěž.

Hluboký trup (Sklad): Pojme nejvíce kostiček ze všech typů, ale zásadně snižuje rychlost lodi na mělčinách.

2. Vzducholodě (Dominance ve vzduchu: Rychlost a flexibilita, ale křehkost a malá kapacita)
Ignorují terén, ale fyzikálně neunesou tuny surové oceli, takže se musí soustředit na drahé, lehké náklady (součástky).

Přetlakový hořák (Pohon): Dává obrovskou rychlost, ale při poškození hrozí výbuch (křehké).

Zesílený plynový vak (Obrana/Sklad): Dává nulovou zátěž, ale unese jen málo kostiček.

Sklápěcí gondola (Utility): Umožňuje bezpečně nakládat z překladiště na mapě, aniž by vzducholoď musela fyzicky přistát (což šetří tahy).

3. Chodci / Strandbeests (Dominance na souši: Průchodnost terénem, modularita)
Jsou to mistři pouště a hor, kteří spoléhají na převody a kinetickou energii.

Kloubová transmise (Pohon): Nevytváří absolutně nejvyšší rychlost, ale zcela ignoruje postihy za pohyb v písku nebo na horách.

Prachové filtry (Obrana): Zabraňují poškození strojů během událostí typu "Písečná bouře" a snižují opotřebení.

Závěsné sítě (Sklad): Lehké, ale nechrání náklad při boji (snadný cíl pro piráty).

## Éra I (Dřevo a plachty)

Tyto moduly jsou extrémně lehké a levné. Nedávají velký výkon, ale díky nulové zátěži umožňují rychlý start a flexibilitu v úvodní fázi hry. Jsou závislé na přírodních podmínkách a hrubé síle.

| Název modulu | Typ | Výkon | Zátěž | Efekt / Kapacita |
| --- | --- | --- | --- | --- |
| **Hřbetní plachta** | Pohon | +2 | 0 | Žádný |
| **Šlapací hřídel** | Pohon | +3 | 1 | Žádný |
| **Lněné vaky** | Sklad | 0 | 0 | Kapacita: 1 kostička |
| **Dřevěné koryto** | Sklad | 0 | 1 | Kapacita: 2 kostičky |
| **Lanový harpunomet** | Zbraň | 0 | 1 | Útok: +1 |
| **Zpevněné fošny** | Obrana | 0 | 1 | Obrana: +1, 1 Život navíc |

## Éra II (Pára a železo)

Nástup těžkého průmyslu. Moduly poskytují obrovskou kapacitu a palebnou sílu, ale jejich vlastní hmotnost masivně zatěžuje stroj. Zde začíná nutnost přesného plánování a optimalizace výkonu. U některých modulů se zavádí nutnost "spalování" paliva.

| Název modulu | Typ | Výkon | Zátěž | Efekt / Kapacita |
| --- | --- | --- | --- | --- |
| **Parní kotel V2** | Pohon | +6 | 3 | Trvale blokuje 1 slot skladu (uhlí) |
| **Těžký pístový motor** | Pohon | +8 | 5 | Žádný |
| **Železný kontejner** | Sklad | 0 | 3 | Kapacita: 4 kostičky |
| **Rotační kulomet** | Zbraň | 0 | 2 | Útok: +3 |
| **Nýtované pláty** | Obrana | 0 | 3 | Obrana: +3, 2 Životy navíc |

## Éra III (Ocel)

End-game komponenty s obrovskou pořizovací cenou. Aetherové technologie umožňují obcházet fyzikální zákony zátěže, což hráčům otevírá cestu k extrémně efektivním logistickým trasám na konci hry.

| Název modulu | Typ | Výkon | Zátěž | Efekt / Kapacita |
| --- | --- | --- | --- | --- |
| **parní turbína** | Pohon | +12 | 2 | Ignoruje postihy z horských hexů |
| **Vysokotlaký kotel** | Pohon | +9 | 2 | Žádný |
| **Ocelový gigant** | Pohon | +15 | 7 | Žádný |
| **Vrstvený pancíř** | Obrana | 0 | 5 | Obrana: +5, 4 Životy navíc |
| **Křižníkové dělo** | Zbraň | 0 | 4 | Útok: 4 |

## Speciální periferie (Utility)

Kromě hrubých čísel výkonu a kapacity může mít každý stroj dedikované rozšiřující sloty pro speciální vybavení. Tyto moduly mění pravidla hry pro konkrétní stroj a umožňují asymetrickou strategii.

* **Navigační astroláb (Zátěž 0):** Umožňuje stroji jednou za tah ignorovat nepříznivý efekt počasí vytažený z balíčku událostí.
* **Ubytovací kajuta (Zátěž 1):** Odemkne na stroji slot pro druhého člena posádky (například kombinace Mechanika a Vojáka na jedné lodi).

Velký setrvačník 

**Těžební rypadlo** Pokud stroj stojí na překladišti těžebního města (ruda, uhlí) ve chvíli, kdy tam padne produkce na kostce, hráč rovnou dostává jednu kostičku z banku navíc přímo do svého nákladového prostoru.


Diferenciální převodovka (Zátěž 1): Optimalizuje přenos síly. Ignoruje postihy za pohyb v náročném terénu (např. horské průsmyky nebo zrádné proudy).

Gyroskopický stabilizátor (Zátěž 1): Zvyšuje přesnost zbraní a manévrovatelnost. Snižuje zátěž všech připojených zbraní o polovinu (zaokrouhleno dolů).

# Začátek hry
Začátek hry – dostanou všichni hráči identický základní dřevěný stroj, nebo bude start asymetrický (někdo začne s dřevěnou lodí, někdo s malým chodcem a někdo s pomalou vzducholodí)?

Aby se trh nezasekl na neatraktivních úkolech (například odlehlé město žádá levnou surovinu a nikomu se tam nechce jezdit), vyplatí se zavést jednoduchý mechanismus časování. Pokud úkol na nástěnce zůstane celé kolo, položíš na něj minci navíc. Jakmile se tam nakupí dost mincí, rázem se i špatná cesta stane lukrativní.

Splněné úkoly 3 úrovně se naházejí do krabičky, ale nechávají se v odhazovacím balíčku aby je bylo možné zamýchat a připravot nový balíček, pokud hra ještě neskončila a úkoly došly. 

# Města

## Upgrade měst

Khráč si tam dá svůj žeton po provedení vylepšení a stává se podílníkem na průmyslu. Takže když město vyprodukuje surovinu, hráč s žetonem dostane bonusovou surovinu navíc? Nebo výtezné body?

## Názvy měst

Z pohledu herního designu a pravděpodobnosti by bylo naprosto ideální mít na mapě přesně 10 měst. Dvě šestistěnné kostky generují součty 2 až 12 (celkem 11 možností). Pokud by 10 čísel bylo přiřazeno městům pro produkci, to statisticky nejčastější číslo – sedmička – by nespouštělo produkci, ale otočení nové karty z balíčku Událostí (např. pohyb pirátů, bouře nebo skoková změna trhu).

- Londinium
- Nýtov
- Khar-Toba
- Kovohrad
- Kesselgrad
- Kiruna
- Járnborg
- Thule
- Eisenklamm
- Alexandrie
- Syracusae
- Petra

Místo na přiložení číselného žetonu s barvou a také symbolu suroviny, které se tuto hru bude objevovat v daném městě. 

Větší množství surovin pomocí dvou různobarevných kostek. Modrá, červená. 1-6 a 1-6 tedy dvanáct možných měst, vždy dvě dostanou suroviny.

Rozdělení na dvě barvy kostek (Modrá 1-6 a Červená 1-6) navíc nabízí  propojení s topologií mapy a vizuálem hry.

Oddělení vnitrozemí a moře.

12 měst 
4x3 suroviny
Zdroje suroviny představují kameny ve tvaru dané suroviny, jsou větší než dřevěné kostičky, které se používají pro náklad na strojích.

Při součtu dvou kostek padá sedmička nejčastěji, zatímco dvojka a dvanáctka skoro vůbec. U tvého nového návrhu má každý uzel (město) naprosto stejnou šanci (1/6), že se v něm vygeneruje surovina. Hra díky tomu poběží neustále kupředu a hráči nebudou frustrováni tím, že jejich město už deset kol nic nevyprodukovalo.

# Výměna mezi hráči

Z pohledu návrhu systémů je to jako vytvořit síťový bridge mezi dvěma oddělenými topologiemi. Parník představuje námořní linku s obrovskou propustností, kročec je zase terénní doručovatel. Jejich setkání v přístavním uzlu (Alexandrii) a výměna nákladu umožňuje hráčům budovat komplexní "hub and spoke" logistické řetězce, což je u deskových her tohoto typu absolutní svatý grál.

Jelikož je ale hra kompetitivní a peníze se rovnají vítězným bodům, přináší přímý obchod mezi hráči dvě velmi reálná designová rizika, na která je potřeba myslet: "Analysis Paralysis" (hráči se budou 10 minut dohadovat o směnném kurzu, čímž se hra zastaví) a "Kingmaking" (hráč, který vidí, že už nevyhraje, daruje svůj náklad pod cenou jinému hráči, čímž mu uměle zajistí vítězství).

Aby mechanika výměny hru oživila a nezasekla, nabízí se tři čisté systémové cesty k implementaci:

## 1. Svobodný trh (Peer-to-Peer směna)

Hráči, jejichž stroje se nacházejí na stejném hexu (např. ve městě), si mohou vyměnit libovolné suroviny a peníze.
Aby se předešlo zdržování partie, zavede se striktní pravidlo: **Směna nesmí stát žádný tah (akci), ale dohodu musí hráči uzavřít do jedné minuty.** Pokud se nedohodnou na ceně (např. "Dám ti 1 rudu a 2 mince za tvoje obilí"), obchod padá a hraje další.

## 2. Logistické subdodávky (Smart Contracts)

V tomto modelu se nemění suroviny jako takové, ale přímo úkoly z nástěnky. Ty jako majitel parníku přijmeš lukrativní zakázku pro vnitrozemské město, kam fyzicky nemůžeš dojet. Dovezeš zboží do Alexandrie a tam se dohodneš s majitelem kročce.
Zaplatíš mu fixní částku (např. 5 mincí ze svého) rovnou do ruky za to, že on to tam doveze. Ty si následně zkasíruješ plnou odměnu za úkol (např. 15 mincí). Funguje to jako klasické přeprodávání zakázek.

## 3. Městská překladiště (Asynchronní výměna)

Tohle je elegantní řešení, pokud hráči nejsou na stejném místě ve stejný čas. Každé město má "překladiště" (například prostor pro 2 suroviny vedle města na mapě).
Můžeš tam ve svém tahu složit rudu. Kdykoliv později tam může přijet jiný hráč, tu rudu si naložit a nechat ti tam místo ní peníze (nebo jiné zboží), na kterých jste se ústně domluvili. Zboží tak může na mapě rotovat nezávisle na přesném načasování tahů.

Tento kooperativní prvek navíc skvěle okoření mechaniku přepadávání (Fair plundering). Může dojít k vtipným situacím, kdy rozstřílíš cizí vzducholoď, abys zjistil, že jsi právě ukradl obilí, které si přes subdodávku zaplatil úplně jiný hráč, a máš rázem problém se dvěma lidmi u stolu.

Zaujalo tě spíše přímé handlování surovin v jednom momentě (obchod z ruky do ruky na stejném hexu), nebo varianta překladišť, kde na sebe stroje fyzicky nemusí čekat?