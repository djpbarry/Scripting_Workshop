/*
 * Demonstration of a simple dialog for obtaining user input
 */

//-------------- Example 1 ------------------

format = ".TIF";
min_size = 10;

Dialog.create("Example Dialog");
Dialog.addMessage("This is an example of a simple dialog.");
Dialog.addString("Specify file format:", format);
Dialog.addNumber("Minimum object size:", min_size);

Dialog.show();

format = Dialog.getString();
min_size = Dialog.getNumber();

print("Format is " + format);
print("Minimum object size is " + min_size);