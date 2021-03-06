.defunct <- function (new,
                      package = NULL,
                      msg,
                      old = as.character(sys.call(sys.parent()))[1L]) {
  if (missing(msg)) {
    msg <- gettextf("'%s' is defunct.\n", old)
    if (!missing(new)) 
      msg <- c(msg, gettextf("Use '%s' instead.\n", new))
    c(msg, if (!is.null(package)) gettextf("See help(\"Defunct\") and help(\"%s-defunct\").", 
                                           package) else gettext("See help(\"Defunct\")"))
  }
  .Defunct(new, package, msg)
}


#' Defunct functions in package \sQuote{BiocStyle}
#'
#' These functions are defunct and no longer available.
#'
#' The following functions are no longer available; use the replacement
#' indicated below:
#' \itemize{
#'   \item \code{latex_old, latex2: \link{latex}}
#'   \item \code{pdf_document_old, pdf_document2: \link{pdf_document}}
#'   \item \code{html_document_old, html_document2: \link{html_document}}
#' }
#'
#' @name BiocStyle-defunct
#' @aliases latex_old latex2 pdf_document_old pdf_document2 html_document_old
#'   html_document2
NULL


#' @export
latex_old <- function(...) {
  .defunct("latex", old = "latex_old")
}

#' @export
latex2 <- function(...) {
  .defunct("latex", old = "latex2")
}

#' @export
pdf_document_old <- function(...) {
  .defunct("pdf_document", old = "pdf_document_old")
}

#' @export
pdf_document2 <- function(...) {
  .defunct("pdf_document", old = "pdf_document2")
}

#' @export
html_document_old <- function(...) {
  .defunct("html_document", old = "html_document_old")
}

#' @export
html_document2 <- function(...) {
  .defunct("html_document", old = "html_document2")
}
