# generate the data frame needed to visualize number of bird observations per month

bd_line_file <- function(species = c(), state = "") {
  # check if user input a valid state
  validate_state(state)
  validate_species(species)
  
  # sub-setting data frame to only include the birds we selected
  if(state == "") {
    birds <- birds |> filter(SPECIES_CODE %in% species & VALID == 1)
  } else {
    birds <- birds |> filter(SPECIES_CODE %in% species & SUBNATIONAL1_CODE == paste0("US-", state) & VALID == 1)
  }
  
  # species_by_month(tibble)
  obs_by_mo <- birds |> group_by(factor_month, SPECIES_CODE, american_english_name) |> summarize(observations = sum(HOW_MANY))
}


