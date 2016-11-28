#' geofilter
#'
#' @import geojson
#' @importFrom jqr jq
#' @importFrom lazyeval all_dots lazy_dots
#' @name geofilter-package
#' @aliases geofilter
#' @docType package
#' @keywords package
NULL

#' Data for use in examples
#'
#' @docType data
#' @keywords datasets
#' @format A list of character strings of points or polygons in
#' FeatureCollection or Feature Geojson formats.
#' @name geofilter_data
#'
#' @details The data objects included in the list, accessible by name
#' \itemize{
#'  \item filter_features - FeatureCollection of points
#'  \item points_average - FeatureCollection of points
#'  \item polygons_average - FeatureCollection of polygons
#'  \item points_count - FeatureCollection of points
#'  \item polygons_count - FeatureCollection of polygons
#'  \item points_within - FeatureCollection of points
#'  \item polygons_within - FeatureCollection of polygons
#'  \item poly - Feaure of a single 1 degree by 1 degree polygon
#'  \item multipoly - FeatureCollection of two 1 degree by 1 degree polygons
#'  \item polygons_aggregate - FeatureCollection of Polygons from turf.js
#'  examples
#'  \item points_aggregate - FeatureCollection of Points from turf.js
#'  examples
#' }
NULL
