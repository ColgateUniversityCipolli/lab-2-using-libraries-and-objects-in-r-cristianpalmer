library(stringr)
music_dirs <- list.dirs("MUSIC", recursive = TRUE)
print(music_dirs)
str_count(music_dirs, "/")



