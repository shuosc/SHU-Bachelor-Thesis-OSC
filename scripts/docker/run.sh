source "$(dirname "$0")/configs.sh"

if [ ! $CONTAINER_NAME ]; then
    CONTAINER_NAME=tmp
fi

docker run -td \
    --name $CONTAINER_NAME \
    --network=host \
    --shm-size=2G \
    --hostname $CONTAINER_NAME \
    -v $HOME:$HOME \
    -w $HOME \
    $IMAGE_NAME

docker cp $HOME/.ssh $CONTAINER_NAME:/root/
docker start $CONTAINER_NAME
docker exec $CONTAINER_NAME chown -R root:root /root/.ssh