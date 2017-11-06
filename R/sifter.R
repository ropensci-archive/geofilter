#' Sift geojson - high level inerface
#'
#' @export
#' @param .data input, one of character string, json, list, or ...
#' @param ... dots
#' @param .dots dots
#' @return an object of class \code{character}
#' @template sifter_egs
sifter <- function(.data, ...) {
  UseMethod("sifter")
}

#' @export
sifter.character <- function(.data, ...) {
  sifter_(.data, .dots = lazyeval::lazy_dots(...))
}

#' @export
sifter.json <- function(.data, ...) {
  sifter_(.data, .dots = lazyeval::lazy_dots(...))
}

#' @export
sifter.list <- function(.data, ...) {
  sifter_(.data, .dots = lazyeval::lazy_dots(...))
}

#' @export
#' @rdname sifter
sifter_ <- function(.data, ..., .dots) {
  tmp <- lazyeval::all_dots(.dots, ...)
  x <- deparse(pluck(tmp, "expr")[[1]])
  xsplit <- strsplit(x, "\\s")[[1]]
  qry <- sprintf('%s %s "%s"', xsplit[[1]], xsplit[[2]], xsplit[[3]])
  z <- paste0(".features[] | select(.properties.", qry, ")")
  sift_client(.data, z)
}
