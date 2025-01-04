validate_species <- function(species) {
  for (species in species) {
    if(!species %in% all_species$SPECIES_CODE) {
      stop(paste0("'", species, "'", " is not a valid species. Please provide a character vector of valid species."))
    }
  }
  
}