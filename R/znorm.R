#' Normalizing data vector
#'
#' @param x Numeric vector.
#' @param removeNA A logical value indicating whether NA values should be removed, with default value of TRUE.
#' @param ...
#'
#' @return
#' A vector containing the normalized input data vector
#' @export
#'
#' @examples
#' znorm(c(16, 9, 13, 5))

znorm <- function(x, removeNA = TRUE, ...){
  mean <- mean(x, na.rm = removeNA, ...)
  sd <- sd(x, na.rm = removeNA)
  for (i in 1:length(x)){
    if(!is.numeric(x[i])){
      stop('I am so sorry, but this function only works for numeric input!\n',
           'You have provided an input of class: ', class(x[i]))
    }
    x[i] <- (x[i] - mean) / sd
  }
  x
}
