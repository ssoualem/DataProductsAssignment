###########################################################################
# Global constants (reachable by both ui.R and server.R)
###########################################################################

# Variables labels for the user prompt
stateVarInputNm <- c("Population", "Income", "Illiteracy", "Life expectancy",
                     "Murder rate", "High school graduation rate", "Number of days below freezing", "State area")

# Statistics descriptions
stateVarDescHeader <- "Statistics information"
stateVarDesc <- c("Population estimate as of July 1, 1975 (in thousands)",
                  "Per capita income in US dollars (1974)",
                  "Illiteracy (1970, percent of population)",
                  "Life expectancy in years (1969–71)",
                  "Murder and non-negligent manslaughter rate per 100,000 population (1976)",
                  "Percent high-school graduates (1970)",
                  "Mean number of days with minimum temperature below freezing (1931–1960) in capital or large city",
                  "Land area in square miles")