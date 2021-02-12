#' Creates some plots and numeric summary
#'
#' @param x vector
#' @return the data frame with the summary
#'
#'
#' @export
funhist2df <- function(x) {
  # 1 row and 2 columns
  par(mfrow = c(1,2))
  # Histogram
  hist(x,col = rainbow(30))
  # Box plot
  boxplot(x, col = 'green')
  par(mfrow = c(1,1))
  # Numeric summary
  df1 <- data.frame(min = min(x),
                    median = median(x),
                    mean = mean(x),
                    max = max(x))
  return(df1)
}
