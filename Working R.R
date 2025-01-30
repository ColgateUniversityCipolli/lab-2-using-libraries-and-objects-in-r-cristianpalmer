library("stringr")

################ Task 1 Step 1 

music_dirs <- list.dirs("MUSIC", recursive = TRUE)

################ Task 1 Step 2 

slash_counts <- str_count(music_dirs, "/")

music_dirs [which(slash_counts == 2)]

################ Task 1 Step 3 Part 1

files_in_album <- list.files(music_dirs, full.names = TRUE)

################ Task 1 Step 3 Part 2

WAV_counts <- str_count(files_in_album, ".wav")
files_in_album [which(WAV_counts == 1)]

################ Task 1 Step 3 Part 2 Part A