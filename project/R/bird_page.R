bird_page <- function(bird) {
  if(!bird %in% all_species$SPECIES_CODE) {
    stop("You need to enter a valid species code")
  } else {
    browseURL(paste0("https://ebird.org/species/", bird))
  }
}