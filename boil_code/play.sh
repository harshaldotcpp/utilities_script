
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

function writeFile () {
    cat $1 > $2  
    echo $res;
    return $?;
}


writeFile ./index.html $1
