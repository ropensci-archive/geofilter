#' @examples
#' library("leaflet")
#'
#' # get sample data
#' file <- system.file("examples", "zillow_or.geojson", package = "geofilter")
#'
#' # plot as is
#' dat <- jsonlite::fromJSON(file, FALSE)
#' leaflet() %>%
#'   addTiles() %>%
#'   addGeoJSON(dat) %>%
#'   setView(-122.8, 44.8, zoom = 8)
#'
#' # filter to features in Multnomah County only
#' json <- paste0(readLines(file), collapse = "")
#' #json2 <-
#' # sifter(json, '.features[] | select(.properties.COUNTY == "Multnomah")')
#' #dat <- jsonlite::fromJSON(json2, FALSE)
#' #leaflet() %>%
#' #   addTiles() %>%
#' #   addGeoJSON(dat) %>%
#' #   setView(-122.6, 45.5, zoom = 10)
#'
#' # sift to Multnomah County only
#' res <- sifter(json, COUNTY == Multnomah)
#' ## check that only Multnomah County came back
#' res %>% jqr::index() %>% jqr::dotstr(properties.COUNTY)
#' leaflet() %>%
#'   addTiles() %>%
#'   addGeoJSON(jsonlite::fromJSON(res, FALSE)) %>%
#'   setView(-122.8, 44.8, zoom = 8)
#'
#' # many counties at once
#' res <- sifter(json, COUNTY %in% c(Multnomah, X, Y))
#'
