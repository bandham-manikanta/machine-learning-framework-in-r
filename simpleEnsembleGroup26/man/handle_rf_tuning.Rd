% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/param_tuning_cv.R
\name{handle_rf_tuning}
\alias{handle_rf_tuning}
\title{Tune Random Forest Model}
\usage{
handle_rf_tuning(X_train, y_train, user_params = list())
}
\arguments{
\item{X_train}{Training features.}

\item{y_train}{Training labels.}

\item{user_params}{Custom parameters for tuning.}
}
\value{
List with best \code{mtry} and other tuning parameters.
}
\description{
Finds the best \code{mtry} parameter for a Random Forest model using internal tuning.
}
\examples{
# Example usage:
n <- 1000
p <- 10
X <- matrix(rnorm(n * p), n, p)
y <- sample(0:1, n, replace = TRUE)
rf_params <- handle_rf_tuning(X, y)
print(rf_params)

}
