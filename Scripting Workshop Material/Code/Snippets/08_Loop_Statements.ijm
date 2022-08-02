/*
 * Illustration of flow control statements
 */

//-------------- Example 1 ------------------

print("\nExample 1");
for(i = 0; i < 10; i++){
	print(i);
}

//-------------- Example 2 ------------------

print("\nExample 2");
i = 0;
for( ; i < 10; ){
	print(i);
	i++;
}

//-------------- Example 3 ------------------

print("\nExample 3");
i = 0;
while(i < 10){
	print(i);
	i++;
}

//-------------- Example 4 ------------------

print("\nExample 4");
i = 0;
do{
	print(i);
	i++;
} while(i < 10);

//-------------- Example 5 ------------------

print("\nExample 5");

height = 4;
width = 6;
for(y = 0; y < height; y++){
	for(x = 0; x < width; x++){
		print("x is " + x + ", y is " + y);
	}
}

//-------------- Example 6 ------------------

print("\nExample 6");

threshold_methods = getList("threshold.methods");
print("Number of threshold methods: " + threshold_methods.length);

for(t = 0; t < threshold_methods.length; t++){
	print("Method " + t + " : " + threshold_methods[t]);
}

