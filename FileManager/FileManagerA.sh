#setting the file name
file="sampleLab8.txt"

# Checking if file exists else create
if [ ! -f "$file" ]; then
    touch "$file"
fi
# Checking if user is owner
if [ -O "$file" ]; then
    # Checking if file has write permission
    if [ -w "$file" ]; then
    # Appending ls -1 output of to the file
        ls -1 >> "$file"
    else
        # Setting write permissions
        echo "File does not have write permission."
        chmod +w "$file"
    fi
else
    # If user is not owner of the file
    echo "You are not the owner of the file."
fi

