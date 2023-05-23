#'  Forest growth derivative
#' @param time time since start
#' @param C size of forest (kgC)
#' @param Ct canopy closure threshold (kgC)
#' @param parms - as list with two to three values, r, g, K
#' @param r early exponential growth rate
#' @param g linear growth rate (kg/year)
#' @param K carrying capacity (kgC)
#' @return derivative of carbon with time

dCgrowth = function(Time, C, parms) {
  
  if (C >= parms$Ct) {
    dC = parms$g * (1- C/parms$K)   
  } else {
    dC = parms$r * C 
  }
  
  return(list(dC))
}
