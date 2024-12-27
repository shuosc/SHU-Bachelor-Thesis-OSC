#!/bin/bash

DEFAULT_FILENAME="main"
CONTENT_DIR="contents"

show_usage() {
    echo "Usage:"
    echo "  bash $0                 - single xelatex compilation of main.tex"
    echo "  bash $0 xe              - single xelatex compilation of main.tex"
    echo "  bash $0 xebib           - full xe->bib->xe->xe compilation of main.tex"
    echo "  bash $0 clean           - remove build directory"
    echo "  bash $0 help            - show usage"
}

single_compile() {
    local filename=$1
    mkdir -p build/$CONTENT_DIR
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    echo "Single compilation completed successfully!"
}

full_compile() {
    local filename=$1
    mkdir -p build/$CONTENT_DIR
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    bibtex "build/$filename" || exit 1
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    echo "Full compilation sequence completed successfully!"
}


main() {
    local COMPILE_TYPE="xe"

    # Parse all arguments
    while [ $# -gt 0 ]; do
        case "$1" in
            "xe")
                COMPILE_TYPE="xe" ;;
            "xebib")
                COMPILE_TYPE="xebib" ;;
            "clean")
                rm -rf ./build
                echo "Build directory cleaned!"
                exit 0 ;;
            "help")
                show_usage; exit 0 ;;
            *)
                show_usage; exit 1 ;;
        esac
        shift
    done

    # Execute based on final compile type
    case "$COMPILE_TYPE" in
        "xe")
            single_compile $DEFAULT_FILENAME
            ;;
        "xebib")
            full_compile $DEFAULT_FILENAME
            ;;
        *)
            show_usage
            exit 1
            ;;
    esac
}

main "$@"
