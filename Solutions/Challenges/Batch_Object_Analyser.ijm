// Dave Barry, Francis Crick Institute
// 2018.01.17
// david.barry@crick.ac.uk

macro "Batch Object Analyser"{
	format = ".tif"; // specify image format
	filterRadius = 1.0;
	morphIterations = 3;
	minSize = 10.0;
	channel1Prefix = "C1";
	channel1Title = "";
	
	directory = getDirectory("Choose input files"); // get input directory
	print("Input: " + directory);
	fileList = getFileList(directory); // get file list
	print(fileList.length + " files.");
	
	outputDirectory = getDirectory("Choose output directory"); // get output directory
	print("Output: " + outputDirectory);
	
	setBatchMode(true); // supresses windows opening
	run("Set Measurements...", "area shape display redirect=None decimal=3"); // set measurements for morphological analysis
	minSize = getNumber("Enter minimum object area (" + getInfo("micrometer.abbreviation") + "^2): ", minSize); // ask user to specify minimum object size
	for (i = 0; i < fileList.length; i++) {
		file = directory + File.separator + fileList[i];
		if(endsWith(file, format)){ // check if file is correct format
			print("\nFile " + file + " is a recognised format - processing.");
			run("Bio-Formats Importer", "open=[" + file + "] color_mode=Default rois_import=[ROI manager] view=Hyperstack"); // open image with bioformats
			getPixelSize(unit, pw, ph); // get pixel dimensions
			getDimensions(width, height, sizeC, slices, frames); // get image dimensions
			print("Number of channels: " + sizeC);
			if(sizeC > 1){
				run("Split Channels"); // split the image into constituent channels
			}
			titles = getList("image.titles"); // get the list of open images i.e the individual channels
			for(j = 0; j < titles.length; j++){
				if(startsWith(titles[j], channel1Prefix)){
					channel1Title = titles[j];
				} else {
					close(titles[j]);
				}
			}
			selectWindow(channel1Title);
			analyseImage(filterRadius, morphIterations, minSize, outputDirectory);
			close("*"); // close all images
		} else {
			print("\nFile " + file + " is not a recognised format - skipping.");
		}
	}
	
	print("\nFinished");
	showStatus("Finished.");
	setBatchMode(false);

	function analyseImage(filterRadius, morphIterations, minSize, outputDirectory){
		run("Gaussian Blur...", "sigma=" + filterRadius); // apply Gaussian filtering
		setAutoThreshold("Intermodes dark"); // set thresholding options
		setOption("BlackBackground", false);
		run("Convert to Mask"); // convert image to binary
		run("Options...", "iterations=" + morphIterations + " count=1 do=Open"); // apply morphological opening
		run("Analyze Particles...", "size=" + minSize + "-Infinity show=Outlines display exclude include");	// run particle analyser
		titles = getList("image.titles");
		for(i = 0; i < titles.length; i++){
			if(startsWith(titles[i], "Drawing")){ // find the image window that the particle analyser output
				selectWindow(titles[i]);
				filename = outputDirectory + File.separator + titles[i] + "_outlines.png";
				print("Saving " + filename);
				saveAs("PNG", filename); // save the particle analyser output image
			}
		}		
	}
}