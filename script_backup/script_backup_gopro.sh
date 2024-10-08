#! /bin/bash

source_path="/run/media/marco/disk/DCIM/100GOPRO/";

dest_path="/home/marco/Pictures/backup_gopro_photos/";


for i in $(diff "$source_path" "$dest_path" | grep .JPG | grep "$source_path");
do
	if [[ "$i" == *".JPG" ]];
	then
		cp "$source_path/$i" "$dest_path"
	fi
done

cd "$dest_path";
git add .;
git commit -m "backup of: $(date)";
git push;
