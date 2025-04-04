source "$(dirname "$0")/configs.sh"

pushd "$(dirname "$0")"
    docker build \
        -f Dockerfile \
        -t $IMAGE_NAME \
        .
popd