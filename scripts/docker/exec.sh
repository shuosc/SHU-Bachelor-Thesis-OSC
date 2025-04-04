source "$(dirname "$0")/configs.sh"

docker exec -it \
    $CONTAINER_NAME \
    bash
