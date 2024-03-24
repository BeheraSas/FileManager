# Getting directory path and file extension from command
directory=$1
extension=$2

# Checking if directory is accesible
if [ -d "$directory" ]; then
    #counting the number of files of the specified extension in the user entered directory
    count=$(find "$directory" -type f -name "*.$extension" | wc -l)
    echo "Number of .$extension files in $directory: $count"
else
    # If directory is not found
    echo "Directory not found."
fi