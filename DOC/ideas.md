# Nápady pro hru Traders

- [Nápady pro hru Traders](#nápady-pro-hru-traders)
- [Vylepšení strojů](#vylepšení-strojů)
- [Začátek hry](#začátek-hry)
- [Města](#města)
  - [Upgrade měst](#upgrade-měst)
  - [Názvy měst](#názvy-měst)
- [Výměna mezi hráči](#výměna-mezi-hráči)
  - [1. Svobodný trh (Peer-to-Peer směna)](#1-svobodný-trh-peer-to-peer-směna)
  - [2. Logistické subdodávky (Smart Contracts)](#2-logistické-subdodávky-smart-contracts)
  - [3. Městská překladiště (Asynchronní výměna)](#3-městská-překladiště-asynchronní-výměna)


# Vylepšení strojů

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