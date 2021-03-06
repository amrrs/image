% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkg.R
\name{image_denoise_nlmeans}
\alias{image_denoise_nlmeans}
\title{Image Denoising using Non-Local Means}
\usage{
image_denoise_nlmeans(x, sigma = 10, win = 1, bloc = 10, filter = 0.4)
}
\arguments{
\item{x}{file on disk in .png format}

\item{sigma}{sigma noise parameter (type numeric)}

\item{win}{Half size of comparison window (type integer)}

\item{bloc}{Half size of research window (type integer)}

\item{filter}{filtering parameter (type numeric)}
}
\value{
a list with elements file, channels, width, height with information on the input file and
next file_denoised, the path to the denoised file as well as the algorithm arguments sigma, filter, window and bloc.
For details on the algorithm, check the paper \url{http://www.ipol.im/pub/art/2011/bcm_nlm}.
}
\description{
Image Denoising using Non-Local Means
}
\examples{
library(magick)
img <- system.file(package = "image.DenoiseNLMeans", "extdata", "img_garden.png")
x <- image_denoise_nlmeans(img, sigma = 1)
image_read(x$file_denoised)

x <- image_denoise_nlmeans(img, sigma = 10, win = 2, bloc = 10, filter = 0.4)
image_read(x$file_denoised)
}
