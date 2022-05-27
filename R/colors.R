#' ################################################
#'           Utrecht Art Color Palettes           #
#' ################################################
#' 
#' Color palettes made from street art and notable locations 
#' in Dutch city Utrecht.
#' 
#' Inspired by the Dutch Masters color palette 
#' by [Edwin Thoen](https://github.com/EdwinTh/dutchmasters)
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
#' Electricity boxes by Lisa Mantel. [IG:patatjes4life](https://www.instagram.com/patatjes4life/?hl=en)
#'  
#' 3D Organs by [Leon Keer](https://www.instagram.com/leonkeer/?hl=en)
#' 
#' Nijntje by Dick Bruna
#' 
#' Groceries by [Jan Is De Man](https://janisdeman.com/)
#' 
#' Derk by [Jan Is De Man](https://janisdeman.com/) and [Derk Wessels](https://www.wijdedoelen.nl/grafiek-kunstenaars/derk-wessels/)
#' 
#' Glimpse Into The Past by [De Strakke Hand](https://www.destrakkehand.nl/)
#' 
#' Het Doppler Effect/The Doppler Effect by [De Strakke Hand](https://www.destrakkehand.nl/)
#' 
#' Gansstraat 64 by [De Strakke Hand](https://www.destrakkehand.nl/)
#' 
#' Vogelenbuurt/Bird Neighbourhood by [Jan Is De Man](https://janisdeman.com/)
#' 
#' De Wonderen/The Wonders by [Boukje Lootsma](http://www.muurschilderingenplus.nl/sprookjes-van-de-21ste-eeuw-muurschilderingen/)
#' 
#' Treinstel Mat '36/Train set '36 by De Verfdokter [IG: @verfdokter](https://www.instagram.com/accounts/login/?next=/verfdokter/)
#' 
#' Boekenkast/Bookcase by [Jan Is De Man](https://janisdeman.com/boekenkast/)
#' 
#' Dichterswijk/Poets District by Munir De Vries. [IG: @munir_de_vries](https://www.instagram.com/munir_de_vries/?hl=en)
#' 
#' Ducdalf Met Schepen/Ships With Ducdalf by Anne P. Boer
#' 
#' Caroline Bleeker by [De Strakke Hand](https://www.destrakkehand.nl/)
#' 

###################################################
#                 INSTRUCTIONS                    #
###################################################

#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


# @examples
# devtools::install_github("cherjuliette/rcolormiffy")




































##################################################
#                  COLOR CODES                   #
##################################################

## Miffy 
## Source: Dick Bruna
miffy = c(
          "blue"    = "#1B549A",
          "green"   = "#30702F",
          "yellow"  = "#FAC700",
          "orange"  = "#ED4C06",
          "red"     = "#DD3E0E",
          "brown"   = "#914D23",
          "white"   = "#DADADA",
          "black"   = "#202221"
          )



## Utrecht University
## Source:
uu = c(
       "yellow",
       "black",
       "red",
       "white_gray"
       )



## Utrecht College (University of Applied Sciences)
## Source:
hu = c(
       "blue",
       "red",
       "white_gray"
       )



## 



















# This function takes a character or integer index
miffy <- function(index = NULL, named = FALSE) {
  # Default to everything
  if (is.null(index)) {
    index <- names(miffy_pal)
  }

  # This works with integer or character values
  return_value <- miffy_pal[index]

  if (!named) {
    names(return_value) <- NULL
  }

  return(return_value)
}

# Another convenience function
miffy_col <- function() {
  names(miffy_pal)
}



# Example 1 ----
# Make a bad plot with these colours
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = as.character(cyl))) +
  scale_colour_manual(values = miffy()) +
  theme_minimal()


ggsave(filename = "bad_plot.png", height = 5, width = 5)


# Set up a basic palette ----
acme_palette <- function() {

  acme_colour_length <- length(acme_colours())

  function(n) {
    stopifnot(n <= acme_colour_length)
    return(acme_colours(1:n))
  }
}

scale_colour_acme <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "acme",
    palette = acme_palette(),
    ...
  )
}


# Example 2 ----
# mpg plot using scale_colour_acme()
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = as.character(cyl))) +
  scale_colour_acme() +
  theme_minimal()

ggsave(filename = "basic_palette.png", width = 5, height = 5)


# Automatic palette ----
acme_palette <- function() {
  acme_colour_length <- length(acme_colours())

  function(n) {
    stopifnot(n <= acme_colour_length)

    # Shortcut: if n = 1, we can just return the first colour
    if (n == 1) {
      return(acme_colours(1))
    }

    # Pick additional colours. Make them as spread out as possible
    interval_between_picks <- acme_colour_length / n

    additional_colour_indices <- 1 + (1:(n-1)) * interval_between_picks

    # Work out which colours to return
    colour_indices <- c(1, round(additional_colour_indices))

    return(acme_colours(colour_indices))
  }
}

# Example 3 ----
# Plot with automatic palette
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = as.character(cyl))) +
  scale_colour_acme() +
  theme_minimal()

ggsave(filename = "auto_palette.png", height = 5, width = 5)



# Manual palette ----
acme_palette <- function() {

  acme_colour_length <- length(acme_colours())

  function(n) {
    stopifnot(n <= acme_colour_length)

    colour_indices <-
      if (n == 1) { "red" }
    else if (n == 2) { c("red", "blue") }
    else if (n == 3) { c("red", "green", "blue") }
    else if (n == 4) { c("red", "green", "orange", "light_blue") }
    # ... etc. etc.
    else if (n == 8) {
      c(
        "red", "topaz", "orange", "light_blue",
        "yellow", "dark_blue", "green", "purple"
      )
    }

    return(acme_colours(colour_indices))
  }
}

scale_fill_acme <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "acme",
    palette = acme_palette(),
    ...
  )
}

# Example 4 ----
# Plot with the manual palette

ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = as.character(cyl))) +
  scale_colour_acme() +
  theme_minimal()

ggsave(filename = "manual_palette.png", height = 5, width = 5)

# 4a
sales <- read.csv("sales.csv") %>%
  gather("Product", "Sales", -Year)

ggplot(sales) +
  geom_col(aes(x = Year, y = Sales, fill = Product)) +
  scale_fill_acme() +
  coord_flip() +
  theme_minimal()

ggsave(filename = "manual_palette_bars.png", width = 5, height = 5)


# Continuous sequential scales ----
scale_colour_acme_c <- function(index = 1, colour_range = 0.75, ...) {
  low_colour <- acme_colours(index)
  high_colour <- colorspace::lighten(low_colour, amount = colour_range)

  ggplot2::scale_colour_gradient(
    low = low_colour,
    high = high_colour,
    ...
  )
}


# Example 5 ----
# Sequential palette plot
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, colour = cty)) +
  scale_colour_acme_c() +
  theme_minimal()

ggsave(filename = "sequential_palette.png", height = 5, width = 5)


# Continuous diverging scales ----
scale_colour_acme_div <- function(high_index = 1, low_index = 5, ...) {
  high_colour <- acme_colours(high_index)
  low_colour <- acme_colours(low_index)

  ggplot2::scale_colour_gradient2(
    low = low_colour,
    high = high_colour,
    ...
  )
}

# Example 6 ----
# Diverging palette plot

toyota_cars_2008 <-
  filter(mpg, manufacturer == "toyota", year == 2008)

mean_hwy <- mean(toyota_cars_2008$hwy)

ggplot(toyota_cars_2008) +
  geom_vline(xintercept = mean_hwy, linetype = 2) +
  geom_point(aes(y = model, x = hwy, colour = hwy)) +
  scale_colour_acme_div(midpoint = mean_hwy) +
  theme_minimal()

ggsave(filename = "diverging_palette.png", height = 5, width = 5)
