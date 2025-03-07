# LidarrCreateFolders

This is a script to create empty artist folders from Lidarr until the "Create Empty Artist Folder" checkbox works.

Just replace the Url, APIKey, ContainerPath, and TargetPath variables with your own.

### URL

Url to Lidarr (include port number and /api/v1 to the end of it)

Example ```Url="http://lidarIP:8686/api/v1"```

### APIKey 

Lidar API Key

Example ```APIKey="ABCDEFG"```

### ContainerPath

Lidarr Music Directory path without a leading "/" (how the container sees the music directory in Media Management)

Example ```ContainerPath="path/to/music/in/lidarr"```

### TargetPath

Music Directory on host device without a leading "/" (only needed if volume mapping is different from host directory location)

Example ```TargetPath="home/user/Music"```
