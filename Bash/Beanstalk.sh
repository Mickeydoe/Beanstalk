#!/bin/bash

#GROUP BEANSTALK


echo "Welcome to the Beanstalk file manager"

#Asking the user the specified directory they want to work in"
echo "What directory would you like to work in"
read dir_name



if [[ ! -d "$dir_name" ]];
then
	echo "Error: Directory '$dir_name' does not exist"
	exit 1
fi


while true; do

	echo "Select the action you want to perform"

	echo "1. Create a file"
	echo "2. Delete an existing file"
	echo "3. List files in a directory"
	echo "4. Exit"

	read user_input

	if [ "$user_input" -eq 1 ]; 
	then
		echo "Creating a file"

		echo "What is the name of the file you want to create"
		read file_name
		touch $dir_name/$file_name
	

	elif [ "$user_input" -eq 2 ];
	then
		echo "Deleting a file"
		echo "Enter the name of the file you want to delete"
		read file_name
		rm $dir_name/$file_name

	elif [ "$user_input" -eq 3 ];
	then
		echo "Listing files in the directory"
		echo "What directory files would you want to list"
		ls $dir_name

	elif [ "$user_input" -eq 4 ];
	then
		echo "Exiting script"
		exit 0
	else
		echo "Wrong Input"
		echo "Try again"

	fi
done
