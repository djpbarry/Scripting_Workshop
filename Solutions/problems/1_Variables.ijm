/* **********************************************************
 * 															*
 * Problem 1.1 - 1 Point									*
 * 															*
 * The expected output printed to the screen here is 0.75.	*
 * 															*
 * Fix the code below so it produces the correct result.	*
 * 															*
 * **********************************************************/

width = 640;
height = "480";

ratio = height / width;

print(ratio);


//Solution:


width = 640;
height = 480;

ratio = height / width;

print(ratio);


/* **********************************************************
 * 															*
 * Problem 1.2 - 1 Point									*
 * 															*
 * Fix this code so my name is printed to the screen		*
 * 															*
 * **********************************************************/

first_name = "David";
second_name = "Barry";

print("First name is first_name and second name is second_name");


//Solution:


first_name = "David";
second_name = "Barry";

print("First name is " + first_name + " and second name is " + second_name);



/* **********************************************************
 * 															*
 * Problem 1.3 - 1 Point									*
 * 															*
 * Modify this code so that it prints the name of the last 	*
 * threshold method in the list.							*
 * 															*
 * **********************************************************/

threshold_methods = getList("threshold.methods");

print("Number of threshold methods: " + threshold_methods.length);
print("First method: " + threshold_methods[0]);


//Solution:


threshold_methods = getList("threshold.methods");

print("Number of threshold methods: " + threshold_methods.length);
print("Last method: " + threshold_methods[threshold_methods.length - 1]);