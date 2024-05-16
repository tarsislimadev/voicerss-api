#!/usr/bin/sh

. .env

pathname="downloads"

mkdir -p "${pathname}"

src=$( . ./urlencode.sh "${1}" )

filename="${2}"

curl -sL _X GET "https://api.voicerss.org/?key=${API_TOKEN}&hl=en-us&src=${src}" --output "./${pathname}/${filename}.wav"
