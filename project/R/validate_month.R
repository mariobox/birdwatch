validate_month <- function(month) {
  months <- c(11, 12, 1, 2, 3, 4, "")
  if(!month %in% months) {
    stop("You need to input a valid month: 11, 12, 1, 2, 3 or 4")
  }
}