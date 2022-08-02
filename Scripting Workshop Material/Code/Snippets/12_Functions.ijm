/*
 * Examples of user-defined functions
 */

//-------------- Example 1 ------------------

print("\nExample 1");
hello(); 

function hello() {
	print("Hello");
}

//-------------- Example 2 ------------------

print("\nExample 2");
c = add(1, 3);
print(c);

function add(a, b){
	return a + b;
}

//-------------- Example 3 ------------------

print("\nExample 3");
input = getDirectory("Choose a Directory");
listAllFiles(input);

function listAllFiles(input) {
	print(input);
	list = getFileList(input);
	list = Array.sort(list);
	for (i = 0; i < list.length; i++) {
		print(list[i]);
	}
}

//-------------- Example 4 ------------------

//print("\nExample 4");
//input = getDirectory("Choose a Directory");
//listAllFiles(input);

//function listAllFiles(input) {
//	print(input);
//	list = getFileList(input);
//	list = Array.sort(list);/
//	for (i = 0; i < list.length; i++) {
//		file = input + list[i];
//		if(File.isDirectory(file)){
//			listAllFiles(file);
//		} else {
//			print(list[i]);
//		}
//	}
//}
