// Dave Barry, Francis Crick Institute
// 2018.01.17
// david.barry@crick.ac.uk

// Splits all files in input directory into constituent channels and saves results in separate sub-directories

macro "Batch Split"{
	format = ".tif"; // specify image format
	
	directory = getDirectory("Choose input files"); // get input directory
	print("Input: " + directory);
	fileList = getFileList(directory); // get file list
	print(fileList.length + " files.");
	
	outputDirectory = getDirectory("Choose output directory"); // get output directory
	print("Output: " + outputDirectory);
	
	setBatchMode(true); // supresses windows opening
	
	for (i = 0; i < fileList.length; i++) {
		file = directory + File.separator + fileList[i];
		if(endsWith(file, format)){ // check if file is correct format
			print("\nFile " + file + " is a recognised format - processing.");
			run("Bio-Formats Importer", "open=[" + file + "] color_mode=Default rois_import=[ROI manager] view=Hyperstack"); // open image with bioformats
			getDimensions(width, height, sizeC, slices, frames); // get image dimensions
			print("Number of channels: " + sizeC);
			if(sizeC > 1){
				run("Split Channels"); // split the image into constituent channels
			}
			subDirs = newArray(sizeC);
			for(c = 0; c < sizeC; c++){ // create subdirectories for each channel
				subDirs[c] = outputDirectory + "C_" + (c + 1);
				if(!File.exists(subDirs[c])){
					File.makeDirectory(subDirs[c]);
				}
			}
			titles = getList("image.titles"); // get the list of open images i.e the individual channels
			for(j = 0; j < titles.length; j++){
				selectWindow(titles[j]);
				filename = subDirs[j] + File.separator + titles[j] + "_C" + (j + 1) + ".ome.tiff";
				print("Saving " + filename);
				run("Bio-Formats Exporter", "save=[" + filename + "] use compression=Uncompressed"); // save image
				close();
			}
		} else {
			print("\nFile " + file + " is not a recognised format - skipping.");
		}
	close("*");
	}
	
	print("\nFinished");
	showStatus("Finished.");
	setBatchMode(false);
}