syntax match RecentFilesTitle /\VRecent files/
syntax match UserHomeDirectory /\V~/
syntax match DirectoryDelimiter /\V\/\|\\/
syntax match DirectoryName /\v(\w|-)+(\\)@=/


highlight default link RecentFilesTitle Title
highlight default link UserHomeDirectory Directory
highlight default link DirectoryDelimiter Directory
highlight default link DirectoryName Statement

