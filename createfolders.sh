#!/bin/bash

Url=""
APIKey=""
ContainerPath=""
TargetPath=""

artists=$(curl --silent $Url/artist -H "accept: application/json" -H "X-Api-Key: $APIKey")
echo "$artists" | jq -cr '.[].path' | while read -r artistpath; do
        path=$(sed -E "s|$ContainerPath|$TargetPath|g" <<< $artistpath)
        if [ ! -d "$path" ]; then
                echo Creating $path...
                mkdir "$path"
        else
                echo $path Already Exists!
        fi
done
