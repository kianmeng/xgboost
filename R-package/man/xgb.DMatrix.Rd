% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xgb.DMatrix.R
\name{xgb.DMatrix}
\alias{xgb.DMatrix}
\title{Construct xgb.DMatrix object}
\usage{
xgb.DMatrix(
  data,
  info = list(),
  missing = NA,
  silent = FALSE,
  nthread = NULL,
  ...
)
}
\arguments{
\item{data}{a \code{matrix} object (either numeric or integer), a \code{dgCMatrix} object, or a character
string representing a filename.}

\item{info}{a named list of additional information to store in the \code{xgb.DMatrix} object.
See \code{\link{setinfo}} for the specific allowed kinds of}

\item{missing}{a float value to represents missing values in data (used only when input is a dense matrix).
It is useful when a 0 or some other extreme value represents missing values in data.}

\item{silent}{whether to suppress printing an informational message after loading from a file.}

\item{nthread}{Number of threads used for creating DMatrix.}

\item{...}{the \code{info} data could be passed directly as parameters, without creating an \code{info} list.}
}
\description{
Construct xgb.DMatrix object from either a dense matrix, a sparse matrix, or a local file.
Supported input file formats are either a LIBSVM text file or a binary file that was created previously by
\code{\link{xgb.DMatrix.save}}).
}
\examples{
data(agaricus.train, package='xgboost')
dtrain <- with(agaricus.train, xgb.DMatrix(data, label = label))
xgb.DMatrix.save(dtrain, 'xgb.DMatrix.data')
dtrain <- xgb.DMatrix('xgb.DMatrix.data')
if (file.exists('xgb.DMatrix.data')) file.remove('xgb.DMatrix.data')
}
