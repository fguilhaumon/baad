manipulate <- function(raw) {
  
  # 'Better to remove fine root biomass from the database'
  raw$m.rf <- NULL
  
  # location
  raw$location <- paste(raw$location, raw$location2)
  
  # grouping variable has fertilization in it, extract
  raw$fertilization <- gsub("Destructive, Laclau, ","", raw$grouping)
  raw$grouping <- makeGroups(raw, "fertilization")

  raw
}


