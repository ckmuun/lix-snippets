# https://stackoverflow.com/questions/7265272/how-to-list-files-in-directory-using-bash

# change dir here
for file in /source/directory/*
do
    if [[ -f $file ]]; then
        echo "processing $file"
        #copy stuff ....
    fi
done
