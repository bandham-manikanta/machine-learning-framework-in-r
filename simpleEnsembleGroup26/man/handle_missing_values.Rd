% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_handling.R
\name{handle_missing_values}
\alias{handle_missing_values}
\title{Handle Missing Values in Data}
\usage{
handle_missing_values(y, x, drop = TRUE, method = "mean")
}
\arguments{
\item{y}{Response variable vector.}

\item{x}{Predictor variables dataframe.}

\item{drop}{flag indicating if records with missing values should be dropped. Default is TRUE.}

\item{method}{The method used for imputing missing values in case 'drop' is FALSE.
Supported methods are "mean", "median" for continous data and "mode" for categorical data.}
}
\value{
A list with modified 'y' and 'x'
}
\description{
This function handles missing values in the dataset by either dropping columns
or imputing them based on the given method.
}
\examples{
data <- data.frame(a = c(1, 2, NA), b = c(NA, 2, 3), c = c(1, 2, 3))
response <- c(1, NA, 2)
result <- handle_missing_values(response, data, drop = FALSE, method = "mean")

}
