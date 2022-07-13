library(here)
library(fs)
library(purrr)
library(rmarkdown)

render_all_rmd <- function(x){
  render(dir_ls(here(), recurse = T,
                regexp = "\\.Rmd$")[x])
}

map(1:length(dir_ls(here(), recurse = T,
                    regexp = "\\.Rmd$")), ~render_all_rmd(.x))
