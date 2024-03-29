% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/soxspectrogram.R
\name{sox.spectrograms}
\alias{sox.spectrograms}
\title{Generate multiple spectrograms using SoX}
\usage{
sox.spectrograms(
  data,
  out.path = file.path(getwd(), "Spectrograms"),
  size = list(x = 1200, y = 500),
  duration = list(start = 0, end = 180),
  doParallel = FALSE
)
}
\arguments{
\item{data}{Selection data.frame containing a file.path column with paths to wavs to generate spectrograms.}

\item{out.path}{A string of the folder path to save the spectrogram file. Defaults to create a Spectrogram folder in your working directory.}

\item{size}{A list for the x and y size in px of the spectrogram. Default is x = 1200 and y = 500 which is faster than the sox.spectrogram default.}

\item{duration}{A list for the start and end time of the spectrogram in seconds. Default is start = 0 and end = 180 for a 3 min clip.}

\item{doParallel}{Binary TRUE or FALSE whether to run process in parallel to save time. Will work better on some machines vs others.}
}
\description{
This function uses SoX to generate a multiple spectrograms of desired length from wav files.
}
\examples{
sox.spectrogram(data,out.path = file.path(getwd(),"Spectrograms"), duration = list(start = 0, end = 180))
}
\keyword{sox}
\keyword{spectrogram}
