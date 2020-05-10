#A shell script that will rename all the text files in a directory
#each file will be named with the first line of text from that file

for file in ./mm/*
do
   # Avoid renaming diretories!
   if [ -f "${file}" ]
   then
       newname=`head -1 $file`
       if [ -f "${newname}" ]
       then
              echo "Cannot rename ${file} to ${newname} - file already exists"
       else
              mv "${file}" "mm/${newname}.md"
       fi
   fi
done