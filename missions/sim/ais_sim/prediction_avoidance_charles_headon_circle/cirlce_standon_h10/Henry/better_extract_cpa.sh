#!/bin/bash

# temporary file directory
tempdir="./temp"

# make the temporary directory if it doesn't exist
mkdir -p $tempdir

# use a dot to represent the current directory
for dir in ./*; do
    if [ -d "$dir" ]; then
        for subdir in "$dir"/*; do
            if [ -d "$subdir" ]; then
                for file in "$subdir"/TARGET_CPA.klog; do
                    if [ -f "$file" ]; then
                        # create a temporary file for each klog file
                        temp_file="$tempdir/$(basename $subdir).csv"
                        # extract the fourth column into the temporary file
                        awk '{print $4}' "$file" > $temp_file
                    fi
                done
            fi
        done
    fi
done

# output file
outfile="output.csv"

# remove the output file if it exists
rm -f $outfile

# paste the temporary CSV files together column-wise
paste -d, $tempdir/*.csv > $outfile

rm -r $tempdir
