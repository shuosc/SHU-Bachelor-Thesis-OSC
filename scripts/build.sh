#!/bin/bash

MAINTEX_NAME="main"

show_usage() {
    echo "Usage:"
    echo "  bash $0                 - single xelatex compilation of main.tex"
    echo "  bash $0 xe              - single xelatex compilation of main.tex"
    echo "  bash $0 xebib           - full xe->bib->xe->xe compilation of main.tex"
}

single_compile() {
    local filename=$1
    mkdir -p build
    cp -r src build/
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    echo "Single compilation completed successfully!"
}

full_compile() {
    local filename=$1
    mkdir -p build
    cp -r src build/
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    bibtex "build/$filename" || exit 1
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=build "$filename" || exit 1
    echo "Full compilation sequence completed successfully!"
}

case $# in
    # 0 Param => Single Compile for main.tex
    0) 
        single_compile $MAINTEX_NAME
        ;;
    # 1 Param => Single/Full Compile for main.tex
    1)  
        case $1 in
            "xe")
                single_compile $MAINTEX_NAME
                ;;
            "xebib")
                full_compile $MAINTEX_NAME
                ;;
            *)
                show_usage
                exit 1
                ;;
        esac
        ;;
    # Too Many Params => Show Usage
    *)
        show_usage
        exit 1
        ;;
esac