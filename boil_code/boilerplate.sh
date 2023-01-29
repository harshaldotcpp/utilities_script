#!/bin/bash


HTML_PATH=/usr/local/boilerplate/index.html 
CURRENT_PATH=$(pwd); 
BOILERPLATE_TYPE=$1; FILE_NAME=$2;
DEFAULT_FILE_NAME="default";
NUMBER_OF_ARGUMENT=$#;
EMPTY="";





function fileExist () {
    [ -e $1 ]
    return $?
}


function getBasename () {
    path=$1;
    basename=$( basename $path );
    echo $basename
    return 0;
}




if [ "$FILE_NAME" = "$EMPTY" ]; then
    FILE_NAME=$DEFAULT_FILE_NAME;
fi


case $BOILERPLATE_TYPE in

    -html)
        
        file="$CURRENT_PATH/$FILE_NAME.html"
        if ! fileExist $file ; then
            if cat $HTML_PATH > $file; then
                basename=$( getBasename $file );
                echo "file created: $basename";
            fi

        else
            echo "file already exist";
        fi

        ;;
        
    -cpp)
        echo "$FILE_NAME.cpp"
        ;;
    -c)
        echo "$FILE_NAME.c"
        ;;
    *)
        echo "Please mention type -{type}"
        ;;
esac

    
