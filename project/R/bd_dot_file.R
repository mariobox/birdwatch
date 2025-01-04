# generate the data frame needed to visualize a scatter plot of birds on a map

bd_dot_file <- function(species = c(), state = "") {
  
  # validate user input
  validate_species(species)
  validate_state(state)
  
  if (state == "") {
    locs <- birds |>
      select(c(american_english_name, LOC_ID, LONGITUDE, LATITUDE, SUBNATIONAL1_CODE, SPECIES_CODE, VALID)) |>
      filter(LONGITUDE > -125 & VALID == 1 & SPECIES_CODE %in% species) |>
      group_by(SPECIES_CODE)|>
      distinct(LOC_ID, LONGITUDE, LATITUDE, SUBNATIONAL1_CODE, SPECIES_CODE, american_english_name)
  } else {
    locs <- birds |>
      select(c(american_english_name, LOC_ID, LONGITUDE, LATITUDE, SUBNATIONAL1_CODE, SPECIES_CODE, VALID)) |>
      filter(LONGITUDE > -125 & VALID == 1 & SPECIES_CODE %in% species & SUBNATIONAL1_CODE %in% paste0("US-", state)) |>
      group_by(SPECIES_CODE)|>
      distinct(LOC_ID, LONGITUDE, LATITUDE, SUBNATIONAL1_CODE, SPECIES_CODE, american_english_name)
  }
  
  
  print(locs)
  
}


