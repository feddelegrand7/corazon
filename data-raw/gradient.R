## code to prepare `gradient` dataset goes here

gradient <- data.table::fread("data-raw/gradient.csv")

gradient <- janitor::clean_names(gradient)

gradient$g_name <- str_replace_all(gradient$g_name, '""', "")
gradient$hex1 <- str_replace_all(gradient$hex1, '""', "")
gradient$hex2 <- str_replace_all(gradient$hex2, '""', "")
gradient$hex3 <- str_replace_all(gradient$hex3, '""', "")


gradient <- gradient %>% distinct(g_name, .keep_all = T)


usethis::use_data(gradient, overwrite = TRUE)
