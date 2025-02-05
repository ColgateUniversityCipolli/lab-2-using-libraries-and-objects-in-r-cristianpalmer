library("stringr")

################ Task 1 Step 1 

music_dirs <- list.dirs("MUSIC", recursive = TRUE)

################ Task 1 Step 2 
code_to_process <- c()
slash_counts <- str_count(music_dirs, "/")

album_dirs <- music_dirs [which(slash_counts == 2)]
for (i in 1:length(album_dirs)) {

################ Task 1 Step 3 Part 1
# For each album one at a time
curr.album <- album_dirs[i]
files_in_album <- list.files(curr.album)


################ Task 1 Step 3 Part 2
WAV_counts <- str_count(files_in_album, ".wav")
files_in_album <- files_in_album [which(WAV_counts == 1)]
for (j in 1:length(files_in_album)) {

################ Task 1 Step 3 Part 3 Part A
track = files_in_album[j]
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

################ Task 1 Step 3 Part 3 Part C
Final.output <- paste('streaming_extractor_music.exe "', track, '" "', Desired.Output.File, '"', sep = "")
code_to_process <- c(code_to_process, Final.output)
}
}
################ Step 4
writeLines(code_to_process, "batfile.txt")


################ Task 2

################ Step 1
Json_file = "The Front Bottoms-Talon Of The Hawk-Au Revoir (Adios).json"
split_Json_file = str_split(Json_file, "-", simplify = TRUE)

################ Step 2
JSON_Data = fromJSON(Json_file)

################ Step 3
average_loudness = JSON_Data$lowlevel$average_loudness
spectral_energy = JSON_Data$lowlevel$spectral_energy$mean
danceability = JSON_Data$rhythm$danceability
bpm =JSON_Data$rhythm$bpm

