/*
 * Illustration of conditional statements
 */

//-------------- Example 1 ------------------

print("\nExample 1");
input_directory = getDirectory("Choose a Directory");
print("Input directory is: " + input_directory);
files = getFileList(input_directory);
number_of_files = lengthOf(files);

if(number_of_files > 0){
	print("Number of files is " + number_of_files);
}


//-------------- Example 2 ------------------

print("\nExample 2");
input_directory = getDirectory("Choose a Directory");
print("Input directory is: " + input_directory);
files = getFileList(input_directory);
number_of_files = lengthOf(files);

if(number_of_files > 0){
	print("Number of files is " + number_of_files);
} else {
	print("No files found!");
}


//-------------- Example 3 ------------------

print("\nExample 3");
input_directory = getDirectory("Choose a Directory");
print("Input directory is: " + input_directory);
files = getFileList(input_directory);
number_of_files = lengthOf(files);

if(number_of_files > 0){
	print("Number of files is " + number_of_files);
	if(number_of_files > 10){
		print("Too many files - can't be bothered with all that work.");
		exit;
	}
} else {
	print("No files found!");
}
