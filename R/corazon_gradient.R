
#' colorffy gradient color data set
#'
#' A data set containing the gradient colors available at the colorffy website
#'
#'
#'@format A data frame containing all the the gradient colors:
#'\itemize{
#'   \item G_Name: the name of the gradients as displayed within the colorffy website.
#'   \item hex1: the first hex color code
#'   \item hex2: the second hex color code
#'   \item hex3: the third hex color code
#'}
"gradient"





corazon_gradient <- function(element = "body", direction = "right", colorName = "LIFE", txtColor = "#272822", reverse = F) {


    grad <- corazon::gradient

    grad <- unique()

    grad[grad$g_name == "GOLD", ]



    direction <- switch( direction,

      "right" = "to right",

      "left" = "to left",

      "bottom" = "to bottom",

      "top" = "to top"

    )


    # CSS part ------------------------------------
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML(

      paste(element, "{background: linear-gradient(", direction, ",",
            paste0(colorName, collapse = ","), ");color:", txtColor, ";}", collapse = ""))))









  }
