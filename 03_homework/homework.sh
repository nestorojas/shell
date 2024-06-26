#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir directory1 directory2 directory3 directory4 directory5

# 2. How would you verify the creation of all 5 directories?
ls -d directory*

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
cd directory1
for i in {1..5}; do touch file$i.txt && printf "I love data" > file$i.txt; done
cd ../directory2
for i in {1..5}; do touch file$i.txt && printf "I love data" > file$i.txt; done
cd ../directory3
for i in {1..5}; do touch file$i.txt && printf "I love data" > file$i.txt; done
cd ../directory4
for i in {1..5}; do touch file$i.txt && printf "I love data" > file$i.txt; done
cd ../directory5
for i in {1..5}; do touch file$i.txt && printf "I love data" > file$i.txt; done


# 4. How would you verify the presence of all 5 files?
ls directory1/*.txt
ls directory2/*.txt
ls directory3/*.txt
ls directory4/*.txt
ls directory5/*.txt

# 5. How would you append to one of the existing files " and machine learning!"?
echo -n " and machine learning!" >> directory1/file1.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat directory1/file1.txt

# 7. How would you delete all files except for the one with the appended text?
rm directory1/file{2..5}.txt

# 8. How would you navigate back to the parent directory containing all the directories?
cd ..

# 9. How would you remove each directory along with its contents?
rm -r directory1 directory2 directory3 directory4 directory5

# 10. How would you verify that all directories and files have been deleted?
ls -d directory*