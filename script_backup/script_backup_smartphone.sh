#! /bin/bash

# partially complete [there are some problem with mount the smartphone mermory, because it use mtp system]

for i in $(diff ~/tmp/photo/ ~/Pictures/backup_smartphone_photos/ | grep .jpg);
do
	if [[ "$i" == *".jpg" ]];
	then
		cp ~/tmp/photo/$i ~/Pictures/backup_smartphone_photos/
	fi
done

cd ~/Pictures/backup_smartphone_photos
#git add .
#git commit -m "backup of: $(date)"
#git push
