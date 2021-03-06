% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_random_seqs_from_genome.R
\name{extract_random_seqs_from_genome}
\alias{extract_random_seqs_from_genome}
\title{Extract random loci from a genome of interest}
\usage{
extract_random_seqs_from_genome(size, interval_width, subject_genome,
  file_name = NULL, append = FALSE)
}
\arguments{
\item{size}{a non-negative integer giving the number of loci that shall be sampled.}

\item{interval_width}{the length of the locus that shall be sampled.}

\item{subject_genome}{file path to the \code{fasta} file storing the subject genome.}

\item{file_name}{a name of the output \code{fasta} file that will store the sequences of the randomly
sampled loci.}

\item{append}{shall new random sequences be added to an existing \code{file_name} (\code{append = TRUE})
or should an exosting \code{file_name} be removed before storing new random sequences (\code{append = FALSE}; Default)?}
}
\description{
This function allows users to specify a number of sequences
of a specified length that shall be randomly sampled from the genome.
The sampling rule is as follows:
For each locus independently sample:
\itemize{
\item 1) choose randomly (equal probability: see \code{\link{sample.int}} for details) from which of the given chromosomes the locus shall be sampled (\code{replace = TRUE}).
\item 2) choose randomly (equal probability: see \code{\link{sample.int}} for details) from which strand (plus or minus) the locus shall be sampled (\code{replace = TRUE}).
\item 3) randomly choose (equal probability: see \code{\link{sample.int}} the starting position of the locus in the sampled chromosome and strand (\code{replace = TRUE}).
}
}
\author{
Hajk-Georg Drost
}
