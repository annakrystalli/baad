manipulate <- function(raw) {
 
  # remove std error values given in table
  for(j in c(2,5:16)){
    raw[,j]    <-  unlist(lapply(raw[,j], function(x){as.numeric(strsplit(x, "_")[[1]][1])}))
  }

  #remove numbers from Tree label
  raw[["Tree"]]     <-  unlist(lapply(gsub("s ", "s_", raw[["Tree"]]), function(x){strsplit(x, "_")[[1]][1]}))  
  
  # stem mass - difference between total and leaf
  raw$m.st <- (raw[["Dry mass (Mg)"]]*1000 - raw[["Leaf dry mass (kg)"]])

  # provides diametr, but this is better listed as area because "ours are functional diameters (cross sectional area converted to diameter of circle with same area)"
  # diameter will then be back claculated from diameter in postprocess
  raw[["a.stbh"]] <- 0.25*pi*raw[["Dbh (cm)"]]^2
  raw
}

