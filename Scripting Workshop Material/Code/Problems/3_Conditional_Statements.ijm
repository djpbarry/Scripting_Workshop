/* **********************************************************
 * 															*
 * Problem 3.1 - 2 Points									*
 * 															*
 * Modify the code below, using an if statement, to check	*
 * whether the directory specified by the user exists		*
 * before printing											*
 * 															*
 * You may find the File.exists command useful				* 															
 * 															*
 * **********************************************************/

input_directory = getDirectory("Choose a Directory");
print("Input directory is: " + input_directory);



/* **********************************************************
 * 															*
 * Problem 3.2 - 2 Points									*
 * 															*
 * Complete the code below to print only the .TIF images in	*
 * input_directory											*
 * 															*
 * You may find the endsWith function useful				* 															
 * 															*
 * **********************************************************/

input_directory = getDirectory("Choose a Directory");
print("Input directory is: " + input_directory);
files = getFileList(input_directory);
number_of_files = lengthOf(files);
print("Number of files is " + number_of_files);

for (i = 0; i < number_of_files; i++) {
	
}