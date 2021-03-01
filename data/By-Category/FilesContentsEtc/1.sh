#finds all files in diff. folders rec.
# inspired by some stack ovf. Questions
# https://stackoverflow.com/questions/18204904/fast-way-of-finding-lines-in-one-file-that-are-not-in-another?rq=1
# https://stackoverflow.com/questions/18338322/how-to-find-files-recursively-by-file-type-and-copy-them-to-a-directory-while-in

find . -name "*.dll" -type f -exec strings {} \;

# improvement:
find . -name "*.dll" -maxdepth <num here> -type f -exec <cmd here> {} \;


# env usage (NOT tested)

# echo "Enter EXT (e.g \"*.dll\")"
# read EXT
# echo "Enter CMD (e.g \"strings\" to perform the \"strings\" command on all files with *.dll extension @the end of them.)"
# read CMD

# Debug, if needed
# echo "$EXT"
# echo "$CMD"
# echo "" #

# be ready
# echo "5 secs until executing."
# sleep 5


# E.g find . -name $EXT -type f -exec $CMD {} \; # you can redirect it here, e.g  | >> outfile.txt # or, you can further operate on the stream: grep "keyword1\|keyword2" >> outfile.txt
