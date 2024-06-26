#' Animal Sounds Sentence Maker
#'
#' Outputs a sentence of what **sounds** a given *animal* makes using [this
#' function][paste0()].
#'
#' @param animal name for the animal
#' @param sound sound that the animal makes
#'
#' @return a sentence in the format of what the animal says
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " goes ", sound, ".")
}
