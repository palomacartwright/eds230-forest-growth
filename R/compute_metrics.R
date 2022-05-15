
#' Compute Metrics Function
#'
#' @param result results from the ode solver for the forest_growth 
#'
#' @return max and min values of C
#' @export
#'
#' @examples
compute_metrics <- function(result) {
  maxsize = max(result$forest_size)
  idx = which.max(result$forest_size)
  maxyear = result$year[idx]
  return(list(maxsize = maxsize, maxyear = maxyear))
}