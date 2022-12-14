% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Steps1_3.R
\name{conditional_life_prob}
\alias{conditional_life_prob}
\title{Conditional Probability of Survival at Age x}
\usage{
conditional_life_prob(data, age, pop, deaths)
}
\arguments{
\item{data}{The mortality dataset, includes an age grouping variable}

\item{age}{The age grouping variable, must be cateogrical}

\item{pop}{Population of each age group, must be numeric}

\item{deaths}{The number of deaths at each age group, must be numeric}
}
\value{
Dataset that was input with added columns ConditionalProbDeath and ConditionalProbLife.
In other words, we are doing the "steps" up to the conditional probability of survival.
}
\description{
Adds a new column called ConditionalProbLife to the dataset that was input.
ConditionalProbLife column contains the probabilities of surviving for each given age group.
In other words, this is the probability of someone surviving to their next birthday.
}
\examples{
# This function will add the ConditionalProbDeath and ConditionalProbLife columns
# to the dataset
conditional_life_prob(mortality2, "age_group", "population", "deaths")
}
