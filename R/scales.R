# Miffy color palette

#' @param palette Choose from 'rcolormiffy' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colors is reversed.
#'
#'


miffy_palette <- function(palette="miffy", alpha = 1, reverse = FALSE) {
  pal <- miffy[[palette]]
  if (reverse){
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}
