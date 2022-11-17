#' A sample mortality data
#'
#' A data extract takes from the CDC Wonder database.
#'
#' @format A data frame with 13 row of 3 columns representing the US population
#' at mulit-year different age groups with which we use to make a life table.
#' This data is from the year 2016
#' \describe{
#'   \item{age_group}{Categorical variable identifying each age group}
#'   \item{deaths}{the mid-year number of deaths in each age group}
#'   \item{population}{the US population of each age group}
#' }
#' @source <https://wonder.cdc.gov/controller/datarequest/D140;jsessionid=3CDDD721939CA32630B8DCAFE69B>
"mortality"

#' A sample mortality data
#'
#' A data extract taken from the CDC Wonder database.
#'
#' @format A data frame with 85 rows of 3 columns representing the deaths and US
#' population at each single-year age group with which we can use to make a life table.
#' This data is from the year 2016.
#'
#' \describe{
#'   \item{age_group}{Categorical variable identifying each age group}
#'   \item{deaths}{the mid-year number of deaths in each age group}
#'   \item{population}{the US population of each age group}
#' }
#' @source <https://wonder.cdc.gov/ucd-icd10.html>
"mortality2"