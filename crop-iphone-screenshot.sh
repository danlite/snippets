crop_directory=$1
shift

if [ ! -e $crop_directory ]; then
  mkdir $crop_directory
  echo "Creating directory \"$crop_directory\""
fi

mogrify -path $crop_directory -crop 320x460+38+146 $*