## file downloads and uzips the dataset, unless it is already unzipped or downloaded.

file.name <- unlist(strsplit(URLdecode(url), '/', fixed=T))
file.name <- file.name[length(file.name)]
zip.file  <- getPath(DIR.DATA, file.name)
txt.file  <- sub('.zip', '.txt', zip.file, fixed=T)

if (!file.exists(txt.file)) {
    if (!file.exists(zip.file)) {
        print('Downloading dataset...')
        download.file(url, file.path)
    }

    print('Decompressing dataset...')
    unzip(zip.file, exdir=DIR.DATA)
}

rm(file.name, zip.file, url)