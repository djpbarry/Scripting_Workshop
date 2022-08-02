 /* **********************************************************
 * 															*
 * Problem 4.1 - 4 Points									*
 * 															*
 * Use the macro recorder (Plugins > Macros > Record) to	*
 * generate a script that opens an image, splits it into	*
 * its constituent channels, then saves each resulting		*
 * image													* 															
 * 															*
 * **********************************************************/


//Solution:


run("Bio-Formats Importer", "open=[E:/Scripting Workshop Material/Images/ScriptingWorkshopImages_2_MMStack_Pos0.ome.tif] split_channels");
selectWindow("ScriptingWorkshopImages_2_MMStack_Pos0.ome.tif - C=2");
run("Bio-Formats Exporter", "save=[E:/Scripting Workshop Material/Output/ScriptingWorkshopImages_2_MMStack_Pos0_C2.ome.tif] compression=LZW");
close();
selectWindow("ScriptingWorkshopImages_2_MMStack_Pos0.ome.tif - C=1");
run("Bio-Formats Exporter", "save=[E:/Scripting Workshop Material/Output/ScriptingWorkshopImages_2_MMStack_Pos0_C1.ome.tif] compression=LZW");
close();
selectWindow("ScriptingWorkshopImages_2_MMStack_Pos0.ome.tif - C=0");
run("Bio-Formats Exporter", "save=[E:/Scripting Workshop Material/Output/ScriptingWorkshopImages_2_MMStack_Pos0_C0.ome.tif] compression=LZW");
close();
