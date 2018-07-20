
function inst() {
    echo "cp $1 ~/$1"
    cp $1 ~/$1 || { echo "Can't do cp"; exit 1; }
}
