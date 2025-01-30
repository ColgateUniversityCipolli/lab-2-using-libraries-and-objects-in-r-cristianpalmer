library("stringr")



usic_dirs <- list.dirs("MUSIC", recursive = TRUE)

slash_counts <- str_count(music_dirs, "/")

music_dirs [which(slash_counts == 2)]




