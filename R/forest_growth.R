#' Forest Growth Modeling
#'
#' @param time growth period
#' @param C size of the forest measured in units of carbon (C)
#' @param threshold canopy cover threshold 
#' @param r early exponential growth rate 
#' @param g linear growth rate once threshold is met 
#' @param K carrying capacity in units of carbon (C)
#'
#' @return dC_dt change in forest growth 
#' @export
#'
#' @examples 
forest_growth <- function(time, C, params){
  
  # C is below a threshold canopy closure 
  if(C < params$threshold){
    dC_dt <- params$r * C
    return(list(dC_dt))
  } 
  # C is at or above the threshold canopy closure
  else{
    dC_dt <- params$g * (1 - C/params$K)
    return(list(dC_dt))
  }
}