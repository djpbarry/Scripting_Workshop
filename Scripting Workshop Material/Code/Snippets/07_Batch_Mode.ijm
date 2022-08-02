//setBatchMode(true);

width = 640;
height = 480;
depth = 1;
title = "New Image";
bits = "16-bit";

print("Creating new image...");
newImage(title, bits, width, height, depth);

print("Waiting...");
wait(3000);

print("Closing image...");
close();

print("Done");

//setBatchMode(false);
