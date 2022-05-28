#' Utrecht City color palettes
#'
#' @param palette Choose from 'rcolorUtrecht_pal' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colors is reversed.
#'
#' @examples
#' library(scales)
#' show_col(rcolorUtrecht_pal("hu")(10))
#'
#' filled.contour(volcano,color.palette = rcolorUtrecht_pal("hu"), asp=1)
#'
#' @export
#'
#'##############################################
#'                FUNCTION                     #       
#'##############################################
#'
rcolorUtrecht_pal <- function(palette="hu", alpha = 1, reverse = FALSE) {
  pal <- rcolorUtrecht[[palette]]
  if (reverse){
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}


#' ############################################
#'       Setup COLOR palette for ggplot2      #
#' ############################################
#'
#' @rdname scale_color_rcolorUtrecht
#'
#' @param palette Choose from 'rcolorUtrecht_palettes' list
#'
#' @param reverse logical, Reverse the order of the colors?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete color palette
#'
#' @param ... additional arguments to pass to scale_color_gradient
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_color_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(color = factor(cyl)), size = 4) +
#'   scale_color_rcolorUtrecht()
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(color = hp)) +
#'   scale_color_rcolorUtrecht(palette="hu, discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_color_rcolorUtrecht(palette="patatjes4life")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_rcolorUtrecht(palette = "microscope")
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_rcolorUtrecht <- function(..., palette = "hu",
                                     discrete = TRUE, alpha = 1,
                                     reverse = FALSE) {
  if (discrete) {
    discrete_scale("color", "rcolorUtrecht", palette=rcolorUtrecht_pal(palette, alpha = alpha, reverse = reverse))
  } else {
    scale_color_gradientn(colors = rcolorUtrecht_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}

#' @rdname scale_color_rcolorUtrecht
#' @export
scale_color_rcolorUtrecht <- scale_color_rcolorUtrecht



#'##############################################
#'       Setup FILL palette for ggplot2        #
#' #############################################
#'
#' @param palette Choose from 'rcolorUtrecht_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams rcolorUtrecht_pal
#'
#' @param discrete whether to use a discrete color palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_rcolorUtrecht <- function(..., palette="hu",
                                    discrete = TRUE, alpha=1, reverse = TRUE) {
  if (discrete) {
    discrete_scale("fill", "rcolorUtrecht", palette=rcolorUtrecht_pal(palette, alpha = alpha, reverse = reverse))
  }
  else {
    scale_fill_gradientn(colors = rcolorUtrecht_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}