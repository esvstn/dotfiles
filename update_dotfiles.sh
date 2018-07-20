
function inst() {
    echo "cp $1 ~/$1"
    if [ -d $1 ]; then
        cp -vr $1 ~/ || { echo "Can't do cp"; exit 1; }
    else
        cp -v $1 ~/$1 || { echo "Can't do cp"; exit 1; }
    fi
}
