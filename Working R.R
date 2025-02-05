library("stringr")

################ Task 1 Step 1 

music_dirs <- list.dirs("MUSIC", recursive = TRUE)

################ Task 1 Step 2 
slash_counts <- str_count(music_dirs, "/")

album_dirs <- music_dirs [which(slash_counts == 2)]


################ Task 1 Step 3 Part 1
# For each album one at a time
curr.album <- album_dirs[1]
files_in_album <- list.files(curr.album)


################ Task 1 Step 3 Part 2
WAV_counts <- str_count(files_in_album, ".wav")
files_in_album <- files_in_album [which(WAV_counts == 1)]


################ Task 1 Step 3 Part 3 Part A
code_to_process = vector(mode = "character", length = 0)
track = files_in_album[1]
Track_Title <- paste('"',curr.album, "/",track,'"', sep = "")
Track_Title


################ Task 1 Step 3 Part 3 Part B
track.file.name <- str_sub(track, 1, nchar(track) - 4)
split_name <- str_split(track.file.name, "-")[[1]]
track_name <- split_name[length(split_name)]

################ Task 1 Step 3 Part 3 Part C
split_artistname <- str_split(curr.album, "/")[[1]]
artist_name <- split_artistname[2]


split_albumname <- str_split(curr.album, "/")[[1]]
album_name <- split_albumname[length(split_albumname)]


Desired.Output.File <- paste(artist_name, "-",album_name,'-',track_name,'.',"json", sep = "")
Desired.Output.File
