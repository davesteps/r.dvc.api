# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


# global reference to scipy (will be initialized in .onLoad)
api <- NULL

.onLoad <- function(libname, pkgname) {
  # use superassignment to update global reference to dvc.api
  api <<- reticulate::import("dvc.api", delay_load = TRUE)
}

#' get_url
#'
#' Returns the URL to the storage location of a data file or directory tracked in a DVC project.
#'
#' @param path
#' @param repo
#' @param rev
#' @param remote
#'
#' @return
#' @export
#'
#' @examples
get_url <- function(path, repo = NULL,rev = NULL,remote = NULL) {

  api$get_url(
    path=path,
    repo=repo,
    rev=rev,
    remote=remote)
}
