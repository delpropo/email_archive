#!/bin/bash

conda activate email_archive

# Directory containing the .msg files
input_dir="/home/delpropo/github/email_archive/data/raw"
# Output directory for the extracted messages
output_dir="/home/delpropo/github/email_archive/data/interim"

# Loop through all .msg files in the input directory
for msg_file in "$input_dir"/*.msg;
do
    # Run the extract_msg command on each file
    python -m extract_msg "$msg_file" --out "$output_dir"
done

# python -m extract_msg data/raw/Worker\ Registration\ Approved.msg --out data/interim
