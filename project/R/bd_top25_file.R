
bd_top25_file <- function(state = "", month = "") {
  # validate input
  validate_state(state)
  validate_month(month)
  
  # filter rows according to input
  if(state == "" & month %in% c(11, 12, 1, 2, 3, 4)) {
    birds <- birds |> filter(Month %in% month)
  } else if(state != "" & month == "" ) {
    birds <- birds |> filter(SUBNATIONAL1_CODE == paste0("US-", state))
  } else if(state != "" & month %in% c(11, 12, 1, 2, 3, 4)) {
    birds <- birds |> filter(SUBNATIONAL1_CODE == paste0("US-", state) & Month %in% month)
  }

if (length(birds$SUBNATIONAL1_CODE) == 0) {
  stop("You need to input a valid state code. Try again.")
}
# calculate the total number of locations 
location_vector <- unique(birds$LOC_ID)
total_locations <- length(unique(birds$LOC_ID))

# calculate the total number of species spotted 
species_vector <- unique(birds$SPECIES_CODE)
total_species <- length(unique(birds$SPECIES_CODE))

# group by species code and location id
birds_grouped <- birds |> group_by(SPECIES_CODE, LOC_ID) |> arrange(LOC_ID) 

# select only 3 columns
birds_grouped <- birds_grouped[,c("LOC_ID", "SPECIES_CODE", "american_english_name")]

# create data frame to store the percentage of total locations where a species has been spotted
df1 <- data.frame(matrix(ncol = 3, nrow = 0))
colnames(df1) <- c("bird", "english_name", "perc_obs")


# loop calculate % of sites where each species was observed and add to species observations data frame
# only count one observation per location by using unique
for (bird in species_vector) {
  bird_obs <- birds_grouped[birds_grouped$SPECIES_CODE == bird, c("LOC_ID", "SPECIES_CODE", "american_english_name")]
  bird_locs <- length(unique(bird_obs$LOC_ID))
  english_name <- bird_obs$american_english_name[1]
  perc <- round(bird_locs/total_locations*100, 1)
  df1[nrow(df1) + 1, ] = c(bird, english_name, perc)
}

# cat the completed data frame
df1

# rename data frame and order by num of sites observed descending
df2 <- df1 |> arrange(desc(as.numeric(perc_obs)))
df2 <- head(df2, 25)

}
