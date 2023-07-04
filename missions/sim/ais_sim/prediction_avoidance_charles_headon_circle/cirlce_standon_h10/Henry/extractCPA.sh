#!/bin/bash

# output file
outfile="output.csv"

# clear the output file
echo "" > $outfile

# use a dot to represent the current directory
for dir in ./*; do
    if [ -d "$dir" ]; then
        for subdir in "$dir"/*; do
            if [ -d "$subdir" ]; then
                for file in "$subdir"/TARGET_CPA.klog; do
                    if [ -f "$file" ]; then
                        # extract the fourth column and append it to the output file
                        awk '{print $4}' "$file" >> $outfile
                    fi
                done
            fi
        done
    fi
done

