## code to prepare `gradient` dataset goes here

gradient <- data.table::fread("data-raw/gradient.csv")
gradient <- janitor::clean_names(gradient)
gradient$g_name <- stringr::str_replace_all(gradient$g_name, '""', "")
gradient$hex1 <- stringr::str_replace_all(gradient$hex1, '""', "")
gradient$hex2 <- stringr::str_replace_all(gradient$hex2, '""', "")
gradient$hex3 <- stringr::str_replace_all(gradient$hex3, '""', "")
gradient <- gradient %>% dplyr::distinct(g_name, .keep_all = T)


usethis::use_data(gradient, overwrite = TRUE)
