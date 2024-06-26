% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_functions.R
\name{scale_continuous_data}
\alias{scale_continuous_data}
\title{Scale Continuous Variables in a Dataframe}
\usage{
scale_continuous_data(dataframe)
}
\arguments{
\item{dataframe}{A dataframe containing the data to be scaled.}
}
\value{
A list with two parts: \code{x_data}, the changed dataframe, and \code{scale_params},
which will have mean and standard deviation used for each column.
}
\description{
This function scales the continuous (numeric) variables in a dataframe by centering
and scaling them individually. It only applies scaling for columns with non-zero variance
as columns with 0 variance are constant columns. The function returns the scaled dataframe and
the scaling parameters (mean and standard deviation) for each continuous column.
}
\examples{
# Load an example dataset
data(iris)

# Scale the continuous variables in the iris dataset
scaled_data <- scale_continuous_data(iris)

# Access the scaled dataframe
scaled_iris <- scaled_data$x_data

# Access the scaling parameters
scaling_params <- scaled_data$scale_params
}
