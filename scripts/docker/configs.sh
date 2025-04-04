IMAGE_NAME="jamesnulliu/texlive:v1.0-TL2024-debian"
CONTAINER_NAME="shu-bachelor-thesis"

help() {
    echo "Usage: source $0 [-c CONTAINER_NAME] [-i IMAGE_NAME]"
    echo "  -c CONTAINER_NAME  Name of the Docker container (default: $CONTAINER_NAME)"
    echo "  -i IMAGE_NAME      Name of the Docker image (default: $IMAGE_NAME)"
}

while [[ $# -gt 0 ]]; do
    case $1 in
        -c)
            CONTAINER_NAME=$2; shift ;;
        -i)
            IMAGE_NAME=$2; shift ;;
        *)
            echo "Invalid option: $1"
            help
            exit 1 ;;
    esac
    shift
done

