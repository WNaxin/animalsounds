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
animal_sounds <- function(animal, sound = NULL) {
  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead."),
      class = "error_not_single_string"
    )
  }
  if (is.null(sound)){
    paste0("The ", animal, " makes no sound.")
  }
  else{
    if (!rlang::is_character(sound, n = 1)) {
      cli::cli_abort(
        c("{.var sound} must be a {.cls character} vector of length 1!",
          "i" = "It was {.type {sound}} of length {length(sound)} instead."),
        class = "error_not_single_string"
      )
    }
    paste0("The ", animal, " goes ", sound, "!")
  }
}
