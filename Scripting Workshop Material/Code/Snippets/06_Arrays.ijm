/*
 * Working with lists/arrays
 */

//-------------- Example 1 ------------------

files = newArray(10);
files[0] = "image.tif";
print(files[0]);
print(files[1]);

//-------------- Example 2 ------------------

files = newArray(10);
length_of_array = files.length;
print(length_of_array);

//-------------- Example 3 ------------------

files = newArray(10);
length_of_array = lengthOf(files);
print(length_of_array);

//-------------- Example 4 ------------------

threshold_methods = getList("threshold.methods");
print("Number of threshold methods: " + threshold_methods.length);
print("First method: " + threshold_methods[0]);
print("Second method: " + threshold_methods[1]);