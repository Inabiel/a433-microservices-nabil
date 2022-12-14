#command to build docker image
docker build -t item-app:v1 .

#list local image
docker image ls

#renaming docker image using docker tag
docker tag item-app:v1 ghcr.io/inabiel/item-app:v1

#exporting github personal access token (dont use this, please! :( )
export CR_PAT=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

#cli login
echo $CR_PAT | docker login ghcr.io -u inabiel --password-stdin

#push to the specified repo
docker push ghcr.io/inabiel/item-app:v1