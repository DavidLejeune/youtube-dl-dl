#!/usr/bin/env bash

# remove the old download list
rm download_list.txt -f

# Newline jump
IFS=" " 


for line in `cat html_extract.txt`;do
	#youtube-dl -o "%(stitle)s.mp4" $line 
	
	echo $line | grep -o -P '(?<=v=).*(?=&amp;list)' >> download_list.txt
done 

echo "" 
echo "DOWNLOAD COMPLETED ." 
echo ""
# DLY download terminated
