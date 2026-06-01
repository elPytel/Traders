Jak bys chtěl vyřešit samotný začátek hry – dostanou všichni hráči identický základní dřevěný stroj, nebo bude start asymetrický (někdo začne s dřevěnou lodí, někdo s malým chodcem a někdo s pomalou vzducholodí)?

Aby se trh nezasekl na neatraktivních úkolech (například odlehlé město žádá levnou surovinu a nikomu se tam nechce jezdit), vyplatí se zavést jednoduchý mechanismus časování. Pokud úkol na nástěnce zůstane celé kolo, položíš na něj minci navíc. Jakmile se tam nakupí dost mincí, rázem se i špatná cesta stane lukrativní.

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