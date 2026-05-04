#' @export
impute_median <- function(data_name, col_name) {
  df <- get(data_name, envir = .GlobalEnv)
  med_val <- median(df[[col_name]], na.rm = TRUE)
  df[[col_name]][is.na(df[[col_name]])] <- med_val
  assign(data_name, df, envir = .GlobalEnv)
  return(paste("Success: Imputed missing values using median:", med_val))
}

#' @export
detect_outliers <- function(data_name, col_name) {
  df <- get(data_name, envir = .GlobalEnv)
  x <- df[[col_name]]
  q <- quantile(x, probs = c(0.25, 0.75), na.rm = TRUE)
  iqr_val <- diff(q)
  lower <- q[1] - 1.5 * iqr_val
  upper <- q[2] + 1.5 * iqr_val
  indices <- which(x < lower | x > upper)
  
  if(length(indices) == 0) return("No outliers detected.")
  return(paste("Outliers found at row indices:", paste(indices, collapse = ", ")))
}

#' @export
get_correlation <- function(data_name, var1, var2) {
  df <- get(data_name, envir = .GlobalEnv)
  res <- cor(df[[var1]], df[[var2]], use = "complete.obs")
  return(paste("Pearson correlation:", round(res, 3)))
}
