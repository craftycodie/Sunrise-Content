cd "${0%/*}"
cd ..
# Sometimes it takes a second for the content.zip to finish uploading.
sleep 5s
rm -rf public/storage/title/tracked/12070/default_hoppers/*
git pull
APPVEYOR_TOKEN=$(grep APPVEYOR_TOKEN .env | xargs)
APPVEYOR_TOKEN=${APPVEYOR_TOKEN#*=}
bash ./build_scripts/download-latest-build.sh --token $APPVEYOR_TOKEN
unzip -q content.zip -d public/storage/title/tracked/12070/default_hoppers
rm -rf content.zip