% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_functions.R
\name{make_predictions}
\alias{make_predictions}
\title{Generate Predictions Using a Pre-Trained Model - supports both binary classification and regression.}
\usage{
make_predictions(model, new_x)
}
\arguments{
\item{model}{An object representing the pre-trained model, containing all necessary preprocessing parameters.}

\item{new_x}{The new dataset for making predictions.}
}
\value{
A list with the predicted values or classes for the new data.
}
\description{
Prepares new data according to the specifications of a pre-trained model (including one-hot encoding and scaling),
optionally selects the same top k predictors used in training phase and then uses the model to predict outcomes.
}
\examples{
n <- 1000
p <- 10
X <- data.frame(matrix(rnorm(n * p), n, p))
y <- sample(0:1, n, replace = TRUE)
train_idx <- sample(1:n, 0.7 * n)
X_train <- X[train_idx, ]
y_train <- y[train_idx]
X_test <- X[-train_idx, ]
y_test <- y[-train_idx]
models = list("random_forest")
model_tuning_params <- list("random_forest" = list(ntree=10))
results <- unifiedModelingToolkit(X = X_train, y = y_train, models = models, 
 model_tuning_params = model_tuning_params, bagging = FALSE, bagging_R = 100, 
 ensemble = FALSE, feature_selection_method = NULL, k = NULL, 
 drop_missing_records = FALSE, fill_missing_method = "mean", scale_data = FALSE, 
 remove_outliers = FALSE, seed = 123, parameter_tuning = FALSE, cv_folds = 10, 
 ensemble_combine_method = NULL)
make_predictions(results$model, X_test)
}
