for files in *.txt
do
	folderName1=`echo $files | awk -F. '{print $1}'`;
    folderName2=`echo $files | awk -F. '{print $2}'`;
	echo $files;
	echo $folderName1;
	echo $folderName2;
	printf "\n";
	if [ -d ../xyz/$folderName1 ]
	then
		rm -r ../xyz/$folderName1;
	elif  [ -d ../xyz/$folderName1/folderName2 ]
	then
	    rm -r ../xyz/$folderName1/$folderName2;

		fi
	mkdir ../xyz/$folderName1;
	mkdir ../xyz/$folderName1/$folderName2;
	
	mv $files ../xyz/$folderName1/$folderName2/$files;
done