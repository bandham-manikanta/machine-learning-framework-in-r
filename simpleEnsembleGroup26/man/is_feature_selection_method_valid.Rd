% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_handling.R
\name{is_feature_selection_method_valid}
\alias{is_feature_selection_method_valid}
\title{Check if a feature selection method is valid.}
\usage{
is_feature_selection_method_valid(method)
}
\arguments{
\item{method}{A character vector specifying the feature selection method to be validated.}
}
\value{
TRUE if the method is valid, FALSE otherwise.
}
\description{
This function checks if a given feature selection method is valid based.
}
\details{
Valid feature selection methods include "auto", "logistic", "correlation", "random_forest".
}
\examples{
is_feature_selection_method_valid("random_forest")
# Returns TRUE

is_feature_selection_method_valid("PCA")
# Returns FALSE

}
