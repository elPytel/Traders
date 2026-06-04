# Nápady pro hru Traders

- [Nápady pro hru Traders](#nápady-pro-hru-traders)
- [Moduly](#moduly)
  - [Cena modulů](#cena-modulů)
- [Vizuální zpracování](#vizuální-zpracování)
- [Stroje](#stroje)
  - [Návrh startovních podvozků (Epocha I)](#návrh-startovních-podvozků-epocha-i)
- [Vylepšení strojů](#vylepšení-strojů)
  - [Epocha I (Dřevo a plachty)](#epocha-i-dřevo-a-plachty)
  - [Epocha II (Pára a železo)](#epocha-ii-pára-a-železo)
  - [Epocha III (Ocel)](#epocha-iii-ocel)
  - [Speciální periferie (Utility)](#speciální-periferie-utility)
- [Začátek hry](#začátek-hry)
- [Města](#města)
- [Výměna mezi hráči](#výměna-mezi-hráči)

Nejsou rozdělené balíčky vylepšení mezi jednotlivé stroje (lodě, vzducholodě, chodci), když si lížeš vylepšení, nikdy nevíš co dostaneš. Nuní hráče spolu obchodovat, nebo se naučit vyjít s tím co zrovna mají.

# Moduly

## Cena modulů
Jaká je cena modulů?
Jejich nákup by měl být dražší než prodej, ale mělo by být možné je prodávat za polovinu ceny, aby hráči mohli získat zpět část investice, pokud se rozhodnou změnit strategii.

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

## Návrh startovních podvozků (Epocha I)
Startovní karty musí dohromady dávat logický fyzikální smysl. Pokud sečteme příď a záď, musí vzniknout stroj, který se reálně pohne a něco uveze.

1. Námořní Loď (Důraz na kapacitu)
Příď a záď tvoří pomalý, ale velmi stabilní a prostorný základ.

- Příď: Dřevěný vaz (Výkon 3, Zátěž 1, Kapacita 0)
- Záď: Kormidelní paluba (Výkon 0, Zátěž 1, Kapacita 2)
- Stav na začátku hry: Rychlost 1, uveze 2 kostičky.

Silnný pancíř a dobré zbraně. 

2. Pouštní Chodec (Důraz na mobilitu)
Chodci nemají od základu velké sklady, ale umí se hýbat plynule přes písečné duny kolem Khar-Toby.

- Příď: Navigační hlava (Výkon 1, Zátěž 0, Kapacita 0, Utility: Ignoruje postihy pouště)
- Záď: Šlapací mechanismus (Výkon 3, Zátěž 1, Kapacita 1)

Stav na začátku hry: Rychlost 2, uveze 2 kostičky.

1. Vzducholoď (Důraz na rychlost)
Křehká struktura spoléhající na vztlak, obrovská rychlost, ale minimální startovní nosnost.

- Příď: Pozorovací gondola (Výkon 0, Zátěž 0, Kapacita 1)
- Záď: Ocasní ploutve (Výkon 4, Zátěž 0, Kapacita 0)

Stav na začátku hry: Rychlost 4, uveze 1 kostičku.

# Vylepšení strojů

Kolik nohou může mít chodec?

Pohon určuje kolik nákladu uveze jeden prostředek.

Specifické moduly podle typu plavidla.

Záď pohon,
Příd nákladový prostor,
Kajuta pro kapitána první středový díl.

## Epocha I (Dřevo a plachty)

Tyto moduly jsou extrémně lehké a levné. Nedávají velký výkon, ale díky nulové zátěži umožňují rychlý start a flexibilitu v úvodní fázi hry. Jsou závislé na přírodních podmínkách a hrubé síle.

| Název modulu | Typ | Výkon | Zátěž | Efekt / Kapacita |
| --- | --- | --- | --- | --- |
| **Hřbetní plachta** | Pohon | +2 | 0 | Žádný |
| **Šlapací hřídel** | Pohon | +3 | 1 | Žádný |
| **Lněné vaky** | Sklad | 0 | 0 | Kapacita: 1 kostička |
| **Dřevěné koryto** | Sklad | 0 | 1 | Kapacita: 2 kostičky |
| **Lanový harpunomet** | Zbraň | 0 | 1 | Útok: +1 |
| **Zpevněné fošny** | Obrana | 0 | 1 | Obrana: +1, 1 Život navíc |

## Epocha II (Pára a železo)

Nástup těžkého průmyslu. Moduly poskytují obrovskou kapacitu a palebnou sílu, ale jejich vlastní hmotnost masivně zatěžuje stroj. Zde začíná nutnost přesného plánování a optimalizace výkonu. U některých modulů se zavádí nutnost "spalování" paliva.

| Název modulu | Typ | Výkon | Zátěž | Efekt / Kapacita |
| --- | --- | --- | --- | --- |
| **Parní kotel V2** | Pohon | +6 | 3 | Trvale blokuje 1 slot skladu (uhlí) |
| **Těžký pístový motor** | Pohon | +8 | 5 | Žádný |
| **Železný kontejner** | Sklad | 0 | 3 | Kapacita: 4 kostičky |
| **Rotační kulomet** | Zbraň | 0 | 2 | Útok: +3 |
| **Nýtované pláty** | Obrana | 0 | 3 | Obrana: +3, 2 Životy navíc |

## Epocha III (Ocel)

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

Oddělení vnitrozemí a moře.
Pomocí dvou různobarevných kostek se do hry emituje větší množství surovin. Modrá, červená. 1-6 a 1-6 tedy dvanáct možných měst, vždy dvě dostanou suroviny.

Rozdělení na dvě barvy kostek (Modrá 1-6 a Červená 1-6) navíc nabízí  propojení s topologií mapy a vizuálem hry.

# Výměna mezi hráči

Z pohledu návrhu systémů je to jako vytvořit síťový bridge mezi dvěma oddělenými topologiemi. Parník představuje námořní linku s obrovskou propustností, kročec je zase terénní doručovatel. Jejich setkání v přístavním uzlu (Alexandrii) a výměna nákladu umožňuje hráčům budovat komplexní "hub and spoke" logistické řetězce, což je u deskových her tohoto typu absolutní svatý grál.
