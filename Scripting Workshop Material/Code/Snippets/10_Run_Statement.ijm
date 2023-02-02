/*
 * Illustration of the run statement
 */

//-------------- Example 1 ------------------

run("Fluorescent Cells (400K)");
run("Show Info...");


//-------------- Example 2 ------------------

run("Cell Colony (31K)");
run("16 colors");


//-------------- Example 3 ------------------

run("Particles (75K)");
run("Options...", "iterations=1 count=1 do=Nothing");
run("Analyze Particles...", "  show=Outlines display");


//-------------- Example 4 ------------------

inputImage = "C:/OneDrive - The Francis Crick Institute/Training/Scripting Workshop/Scripting Workshop Material/Images/ScriptingWorkshopImages_2_MMStack_Pos0.ome.tif";

run("Bio-Formats Importer", "open=" + inputImage);


//-------------- Example 5 ------------------

inputImage = "C:/Users/barryd/OneDrive - The Francis Crick Institute/Training/Scripting Workshop/Scripting Workshop Material/Images/ScriptingWorkshopImages_2_MMStack_Pos0.ome.tif";

run("Bio-Formats Importer", "open=[" + inputImage + "]");
