
#' Compute Metrics Function
#'
#' @param result 
#'
#' @return max and min values of C
#' @export
#'
#' @examples
compute_metrics <- function(result) {
  maxsize = max(result$P)
  idx = which.max(result$P)
  maxyear = result$time[idx]
  return(list(maxsize = maxsize, maxyear = maxyear))
}