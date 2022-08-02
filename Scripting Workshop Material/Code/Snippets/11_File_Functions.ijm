/*
 * Illustration of file functions and manipulations
 */

//-------------- Example 1 ------------------

print("\nExample 1");
input_directory = getDirectory("Choose a Directory");
file_exists = File.exists(input_directory);

if(file_exists){
	print("The directory " + input_directory + " exists");
} else {
	print("The directory " + input_directory + " does not exist");
}

//-------------- Example 2 ------------------

print("\nExample 2");
print(File.separator);

//-------------- Example 3 ------------------

print("\nExample 3");
input_directory = getDirectory("Choose a Directory");
output_directory = input_directory + File.separator + "Results";

File.makeDirectory(output_directory);
if(!File.exists(output_directory)){
	print("Error - failed to create output directory");
} else {
	print("Created output directory: " + output_directory);
}
