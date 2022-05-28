#' Color palettes made from street art and notable locations 
#' in Dutch city Utrecht.
#' 
#' 
#' Inspired by the Dutch Masters color palette 
#' by Edwin Thoen (https://github.com/EdwinTh/dutchmasters)
#' 
#' 
#' ################################################
#'           Utrecht Art Color Palettes           #
#' ################################################
#' 
#' 
#' Palettes included in this package:
#' 
#' Hogeschool Utrecht (University of Applied Sciences)
#' 
#' Universiteit Utrecht (Utrecht University) 
#' 
#' De Walvis/The Wale at the Tivoli Vredenburg
#' 
#' Electricity boxes by Lisa Mantel. [IG: patatjes4life]
#'  
#' 3D Organs by Leon Keer
#' 
#' Nijntje by Dick Bruna
#' 
#' Groceries by Jan Is De Man
#' 
#' Derk by Jan Is De Man and Derk Wessels
#' 
#' Glimpse Into The Past by De Strakke Hand
#' 
#' Het Doppler Effect/The Doppler Effect by De Strakke Hand
#' 
#' Gansstraat 64 by De Strakke Hand
#' 
#' Vogelenbuurt/Bird Neighbourhood by Jan Is De Man
#' 
#' De Wonderen/The Wonders by Boukje Lootsma
#' 
#' Treinstel Mat '36/Train set '36 by De Verfdokter [IG: verfdokter]
#' 
#' Boekenkast/Bookcase by Jan Is De Man
#' 
#' Dichterswijk/Poets District by Munir De Vries. [IG: munir_de_vries]
#' 
#' Ducdalf Met Schepen/Ships With Ducdalf by Anne P. Boer
#' 
#' Caroline Bleeker by De Strakke Hand
#' 
#' 
#' @examples 
#' # devtools::install_github("cherjuliette/rcolorUtrecht")
#' 
#' 
#' @export
rcolorUtrecht <- list(
  ## Hogeschool Utrecht (University of Applied Sciences)
  ## https://www.internationalhu.com/locations
  hu = c("purple"   = "#4b0082",
         "pink1"    = "#ee82ee", 
         "pink2"    = "#cc99c9", 
         "green2"   = "#9ee09e", 
         "blue2"    = "#1a9fd9",
         "orange"   = "#ffa500",
         "yellow"   = "#ffff00",
         "green1"   = "#008000",
         "blue3"    = "#0000ff",
         "red"      = "#ff0000",
         "blue1"    = "#1a9fd9"),
  
  
  
  ## Phase Contraction Microscope (De Strakke Hand, 2021)
  ## https://www.duic.nl/algemeen/utrecht-heeft-met-deze-nieuwe-muurschildering-in-de-strosteeg-alweer-vierde-muurformule/
  
  microscope = c("blue1"      = "#182c4b",
                 "navyblue"   = "#091527",
                 "blue2"      = "#274d78", 
                 "bluegrey"   = "#333f56",
                 "brown1"     = "#7f92ad", 
                 "brown2"     = "#5a2f2b",
                 "brown3"     = "#7b4003",
                 "yellow"     = "#7d4e0d",
                 "green1"     = "#8da17e",
                 "green2"     = "#34512a"),
  
  
  ## Electricity box (Patatjes4Life, 2021)
  ## https://thirty030.nl/vankastjenaarcanvasje-3/
  patatjes4life = c("pink1"    = "#fc84e8",
                    "blue1"    = "#be32bb",
                    "pink2"    = "#c999bf", 
                    "blue2"    = "#106dc2", 
                    "yellow"   = "#129bfe", 
                    "blue3"    = "#4e74a7", 
                    "orange"   = "#fcab4d", 
                    "brown1"   = "#413b43", 
                    "brown2"   = "#d6c840", 
                    "green1"   = "#33783a", 
                    "green2"   = "#44553a",
                    "green3"   = "#457666"),
  
  
  ## Groceries on top of the Albert Heijn (JanIsDeMan, 2021)
  ## https://janisdeman.com/portfolio/albert-heijn-left/
  ah = c("berries"    = "#2f2332", 
         "grapes"     = "#594476", 
         "gourgette"  = "#871a2d", 
         "egg"        = "#c83a24", 
         "manderin"   = "#eb813a", 
         "olive"      = "#29432a", 
         "salad"      = "#7c923a", 
         "pan"        = "#596365", 
         "juice"      = "#fddd29"),
  
  
  ## Vogelenbuurt (JanIsDeMan, 2020)
  ## https://www.travellust.nl/street-art-in-utrecht/
  vogelenbuurt = c("turquoise"       = "#016258", 
                   "lightturquoise"  = "#008f89",
                   "orange"          = "#51bfa7", 
                   "magenta"         = "#41bbb0", 
                   "blue1"           = "#159ec6", 
                   "blue2"           = "#06507d", 
                   "blue3"           = "#1b1f3c", 
                   "beige"           = "#be8b4e", 
                   "yellow"          = "#d15a3a", 
                   "brown"           = "#043229",
                   "copper"          = "#5f1944"),
  
  
  ## Geese at the Gansstraat 64 (De Strakke Hand, 2020)
  ## https://www.oud-utrecht.nl/nieuws/666-route-langs-muurschilderingen
  geese = c("blue1"           = "#8cd3ff",
            "blue2"           = "#009dff", 
            "brown1(earth)"   = "#454147", 
            "red(flowers)"    = "#7d0e20", 
            "green1(leaves)"  = "#393d20", 
            "green2(leaves)"  = "#7f883c", 
            "brown2(earth)"   = "#413014",
            "yellow(flowers)" = "#f9c70c"),
  
  
  ## 3D street art at Berlijnplein (Leon Keer, 2020)
  ## https://www.duic.nl/opmerkelijk/bijzondere-3d-vloerschildering-van-bekende-straatkunstenaar-leon-keer-bij-berlijnplein/
  organs = c("red1"      = "#91030e",
         "red2"          = "#d83a55", 
         "pink1"         = "#a55d6d", 
         "pink2"         = "#c47b89", 
         "pink3"         = "#745563", 
         "green"         = "#5a3659", 
         "brown1(earth)" = "#2e2c2b",
         "blue1(sky)"    = "#48735a", 
         "blue2(sky)"    = "#6a9098", 
         "brown2(earth)" = "#976557"),
  
  
  ## Glimpse Of The Past (De Strakke Hand, 2019)
  ## https://www.duic.nl/algemeen/muurschildering-geeft-doorkijkje-naar-historisch-den-hommel/
  ibis_hotel = c("brown(bridge)"    = "#603c14",
                 "red(sign)"        = "#9c2706",
                 "orange(bridge)"   = "#d45b12",
                 "pink(person)"     = "#ac4649",
                 "yellow(leaves)"   = "#f4af28",
                 "orange(bridge)"   = "#c17f29",
                 "blue1(sky)"       = "#185aa0",
                 "blue(water)"      = "#b29804",
                 "blue2(sky)"       = "#bfe6ff",
                 "green(grass)"     = "#acdf87",
                 "green(trees)"     = "#1a8693"),
  
  
  
  ## The Wale (Studio KCA, 2018)
  ## https://www.duic.nl/algemeen/plastic-walvis-vertrekt-nu-echt-uit-utrecht/
  the_wale = c("blue1"     = "#021c95", 
               "blue2"     = "#2078c4", 
               "blue3"     = "#178ec7", 
               "blue4"     = "#44a9bb", 
               "blue5"     = "#249780", 
               "blue6"     = "#6a9a8a", 
               "blue7"     = "#efa548", 
               "blue7"     = "#7b5d53"),
  
  
  ## Derk (Derk Wessels and JanIsDeMan, 2018)
  ## https://www.katholiekutrecht.nl/tag/derk-wessels/
  derk_wessels = c("pink1(bird)"        = "#673042", 
                   "lightpink(bird)"    = "#8a2746", 
                   "pink2(tail)"        = "#e7788a",
                   "green1(leaves)"     = "#d88a98",
                   "green2(leaves)"     = "#141d02",
                   "blue(background)"   = "#59644b", 
                   "green3(leaves)"     = "#b1bd4d", 
                   "blue2(background)"  = "#1a2f4a", 
                   "blue3(background)"  = "#3094b2", 
                   "brown(roof)"        = "#2f1f0d",
                   "grey(windows)"      = "#393842"),
  
  
  
  ## Miffy (Dick Bruna)
  ## https://www.nijntje.nl/over-dick-bruna
  miffy = c("blue"        = "#1B549A",
            "red"         = "#30702F",
            "yellow"      = "#FAC700",
            "orange1"     = "#ED4C06",
            "green"       = "#DD3E0E",
            "brown"       = "#914D23",
            "whitegrey"   = "#DADADA",
            "greyblack"   = "#202221"),
  
  
  
  ## Poet District (Munir de Vries, 2017)
  ## http://munirdevries.com/
  poet_district =  c("blue1"           = "#0c454b",
                     "turquoise"       = "#13755e",
                     "lightturquoise"  = "#4ebf93",
                     "red"             = "#6b181a",
                     "orangered"       = "#ac2b1c",
                     "orange"          = "#fd5e14",
                     "peach"           = "#edc67c",
                     "purple"          = "#3b2046",
                     "purplepink"      = "#683e68",
                     "copper"          = "#733d49",
                     "brown"           = "#97554f"),
  
  
  
  ## Train Station at Meidoornstraat (De Verfdokter, 2015)
  ## https://www.verfdokter.com/
  trains = c("green1(trees)"    = "#1b3318",
             "green2(trees)"    = "#29533e",
             "red(board)"       = "#3f7d2e",
             "yellow(flowers)"  = "#898327",
             "beige(hedge)"     = "#c8b862",
             "brown(hedge)"     = "#99262c",
             "red(lights)"      = "#f65066",
             "blue1(sky)"       = "#1662a5",
             "blue2(sky)"       = "#3c7cad",
             "blue3(sky)"       = "#58a4d2"),
  
  
  
  ## De Wonderen/The Wonders at Langenoord (Boukje Lootsma)
  ## http://www.noordsepark.nl/agenda/officiele-opening-muurschildering-de-wonderen/
  the_wonders = c("green1(shrubs)"      = "#0e120c",
                  "green2(shrubs)"      = "#213526",
                  "green3(hedges)"      = "#505231",
                  "brown(bricks)"       = "#524434",
                  "pink1(flowers)"      = "#b05c65",
                  "pink2(sign)"         = "#d88e99",
                  "pink3(flowers)"      = "#bc8eb6",
                  "purple(flowers)"     = "#bb8cc3",
                  "green4(tree)"        = "#9b6c61",
                  "grey(valcon)"        = "#727e8f",
                  "yellowgreen(hedges)" = "#626514",
                  "blue1(flowers)"      = "#455c17",
                  "yellow(flowers)"     = "#daae52"),
  
  
  ## Ducdalf Met Schepen/ Ships with Ducdalf on Adelaarsstraat (Anne P. Boer, 1978)
  ## https://www.kunstinopenbareruimte-utrecht.nl/kunstwerken/schepen-met-ducdalf
  ships_with_ducdalf = c("red1(background)"    = "#c91f40",
                         "blue1(letters)"      = "#8f475b",
                         "brown(roof)"         = "#523e32",
                         "red2(ships)"         = "#7d3c3a",
                         "ships"               = "#994745",
                         "purple1(background)" = "#c1a2a7",
                         "orange(background)"  = "#e26a3b",
                         "pink(background)"    = "#84658b",
                         "purple2(background)" = "#885f80",
                         "bluegreen1(water)"   = "#9484a1",
                         "yellow(bricks)"      = "#cc9f5c",
                         "blue2(water)"        = "#70a3b7",
                         "blue3(water)"        = "#97c7d6"),
  
  
  ## Utrecht University
  ## https://www.uu.nl/en/organisation/corporate-identity/brand-policy/colour
  uu = c("brown(building)"  = "#653a15",
         "green1(trees)"    = "#303810",
         "green2(trees)"    = "#485c08",
         "black"            = "#030203",
         "red"              = "#b70a28",
         "yellow"           = "#fac902")
)
