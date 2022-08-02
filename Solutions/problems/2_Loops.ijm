/* **********************************************************
 * 															*
 * Problem 2.1 - 2 Points									*
 * 															*
 * Below is what is referred to as an "infinite loop",		*
 * because it will never terminate.							*
 * 															*
 * Fix the code so that the loop stops when i becomes		*
 * negative													*
 * 															*
 * **********************************************************/

for(i = 101; !(i == 0); i = i - 2){
	print(i);

	// Ignore the next few lines - this is just to allow you to terminate the script by
	// pressing the space bar
	if(isKeyDown("space")){
		break;
	}
}


//Solution:


for(i = 101; i >= 0; i = i - 2){
	print(i);
}


/* **********************************************************
 * 															*
 * Problem 2.2 - 2 Points									*
 * 															*
 * Complete the code below to print all the files in the	*
 * user-specified directory									*
 * 															*
 * **********************************************************/

input_directory = getDirectory("Choose a Directory");
print("Input directory is: " + input_directory);
files = getFileList(input_directory);
number_of_files = lengthOf(files);
print("Number of files is " + number_of_files);

for ( ; ; ) {
	
}


//Solution:


input_directory = getDirectory("Choose a Directory");
print("Input directory is: " + input_directory);
files = getFileList(input_directory);
number_of_files = lengthOf(files);
print("Number of files is " + number_of_files);

for (i = 0; i < number_of_files; i++) {
	print(files[i]);
}