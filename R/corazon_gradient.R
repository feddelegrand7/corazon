
#' colorffy gradient color data set
#'
#' A data set containing the gradient colors available at the colorffy website
#'
#'
#'@format A data frame containing all the the gradient colors:
#'\itemize{
#'   \item g_name: the name of the gradients as displayed within the colorffy website.
#'   \item hex1: the first hex color code
#'   \item hex2: the second hex color code
#'   \item hex3: the third hex color code
#'}
"gradient"




#' Display a linear gradient color within shiny elements
#'
#' @param element in which shiny element should the corazon_gradient function be applied ? Defaults to "body"
#' @param direction the direction of the gradient, between "right", "left", "bottom", "top". Defaults to "right"
#' @param colorName the name of the gradient to apply. see <https://www.colorffy.com/gradients/catalog>
#' @param txtColor the text color. Default to "#F2F2F2" (white)
#'
#' @return A linear gradient color applied on a specific shiny element
#' @export
#'
#' @examples
#'
#'

corazon_gradient <- function(element = "body", direction = "right", colorName = "LIFE", txtColor = "#F2F2F2") {


    grad <- corazon::gradient

    colorName <- grad[grad$g_name == colorName, ]

    colorName <- colorName[colorName != ""]

    colorName <- as.character(colorName)[-1]

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




