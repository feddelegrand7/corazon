


gradient <- function(element = "body", direction = "right", gradName = "LIFE", txtColor = "#272822"){


direction <- switch(direction,

                    "right" = "to right",

                    "left" = "to left",

                    "bottom" = "to bottom",

                    "top" = "to top"

                    )



gradName <- switch(gradName,



        "LIFE" = "#52ff75, #3ce312",

        "PINK" = "#f787ff, #f45cff",

        "TEAL" = "#52ffd7, #10e3ca",

        "YELLOW" = "#ffff52, #e3cb14",

        "NEON" = "#ad0e8d, #7d00d1",

        "GOLD" = "#ada310, #d1b200",

        "DEEP SEA" = "#114fad, #0073d1",

        "CRANBERRY" = "#ad1313, #d10000",

        "PINK SUNSET" = "#d96c75, #572b61",

        "COAL" = "#404040, #212121",


        "BERRY" = "#f27474, #dc3545",

        "BUCKLER" = "#064543, #097355",

        "LOVE" = "#c9457a, #ad2d7e",

        "APPLE" = "#c94545, #ad2f2f",

        "BREAD" = "#e3dcb6, #ded397",

        "SKY" = "#1e8cd6, #39bbdb",

        "CLOUDY" = "#c7e9ff, #b3c7cc",

        "SEAWEED" = "#18a848, #169960",

        "GRAPPE" = "#a81845, #851699",

        "WARM" = "#d41e67, #bd3b1b",

        "FIRE" = "#d4671e, #bd5c1b",

        "SUNSHINE" = "#d4ce1e, #bda51b",

        "CACAO" = "#61470e, #291903",

        "PINK" = "#e335c0, #b00c4e",

        "FLAME" = "#e36f35, #b0980e",

        "PLANT" = "#39e369, #11b03e",

        "MANGO" = "#f7b56b, #f27f59",

        "BERRY" = "#9f6cf7, #411452",

        "RASBERRY" = "#fbaeb8, #cb0a33",

        "BUTTER" = "#ffc3ad, #ffafbd",

        "BLUEBERRY" = "#058fff, #021879",

        "TACO" = "#ebc488, #deae69",

        "ROYAL" = "#1446a8, #002366",

        "CRIMSON" = "#dc143c, #a80f2e",

        "GREY" =   "#808080, #636161",

        "CORAL" = "#ff7f50, #e6602b",

        "TURQUOISE" = "#40e0d0, #1bbfaf",


        "BURGUNDY" = "#900020, #70021a",

        "GOLDEN"   = "#f0bf43, #daa520",


        "FUCHSIA" =  "#ff00ff, #d108d1",


        "PEACH"  =   "#ffe5b4, #f0cd88",


        "CREAM" = "#f5f5dc, #f0f0c0",


        "SALMON" = "#fa8072, #e85f4c",


        "COFFEE" = "#705a11, #917014",


        "BLOOD 2" = "#ad3e3e, #8a4545",


        "FANCY 2" = "#e6579a, #d94ed2",

        "PINEAPPLE" = "#e4f099, #b9d628" ,

        "PEACH" = "#f1eab9, #ff8c8c",

        "COOL" = "#1eadf0, #0afb60",

        "FRESH" = "#2de069, #1a803c",

        "BRONZE" = "#e0982d, #80501a",

        "INDIGO" = "#692de0, #431a80",

        "PURPLE" = "#e02dc8, #801a77",

        "GOLD V2" = "#d1e02d, #80711b",

        "CYAN" = "#2fe0cb, #1c8079" ,

        "SANGRIA WINE" = "#e0313c, #7f1c39",

        "ALONE" = "#39162d, #c9c0c6",

        "FROG" = "#7ec24a, #a4cc2b",

        "BLOOD MOON" = "#e66a6a, #cc2b2b",

        "LOLLIPOP" = "#9191ff, #94ffda, #f3ffa3",

        "COTTON CANDY" = "#ffadfb, #bca6ff, #cfefff",

        "SWEET" = "#ffa6db, #ffa8a8, #fffcd1",

        "CARIBE" = "#6576fc, #6be1ff, #87ffa9",

        "GRAPPE" = "#b52baa, #aa17bd",


        "DEPTH" = "#387fc2, #1e8ccc",


        "STORM" = "#566a6e, #6c7c85",

        "DRIZZLE" = "#d1e3e6, #d9e5eb",


        "OCEAN BLUE" = "#5c5cff, #59afff",


        "DONUT" = "#ffc2d5, #f567b0",


        "ICE" = "#c2f5ff, #a3edff",

        "STEEL" = "#c7c7c7, #999999",

        "ROCK" = "#c29946, #7a5e27",

        "JELLY" = "#9f7df5, #8f26eb",

        "JUICE" = "#f0e871, #ebc23d",

        "MINT V3" = "#70d2db, #68ed89",

        "SAND" = "#d6c79a, #edd9a1",


        "CHARCOAL" = "#545454, #3d3d3d",

        "THINK" = "#9229c2, #e63ca7",


        "JUNGLE" = "#34c24c, #0b991e",


        "NIGHTFALL" = "#5f5b61, #36215e",


        "TREND" = "#b452ff, #6426e0",


        "GLAMOUR" = "#ff5252, #e028a3"



                   )





htmltools::tags$head(
    htmltools::tags$style(htmltools::HTML(glue::glue(
      "{element}{{background: linear-gradient({direction},{gradName});color:{txtColor}}}"))))










}
