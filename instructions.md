# Instructions to setup the environment
Follow these steps to install and setup Quartus Prime Lite

1. Go to this website - https://fpgasoftware.intel.com/?edition=lite&platform=windows
2. Select the "Lite" edition and "20.1.1" release.
3. Select the operating system.
4. Scroll down and click on the "Combined Files" tab and download the Quartus Prime Lite software.
5. Install the software.

# Instructions to setting up a new project
Follow these steps to set up Quartus Prime Lite 

1. Once you run the software, you will be greeted with the application window where you can create a new project or open an existing project.
2. Click on New Project Wizard and proceed to create a new project.
3. In the wizard, select the working directory and name your project.
4. Select Empty project and click next.
5. You can skip the Add Files window if you are just starting out.
6. The next windows, select the correct device. For consistency, select from the Device family - Cyclone V and in the available devices section, select '5CGXFC7CF23I7' and press next.
7. In the EDA tool settings window, leave the default settings and click on next.
8. To finish things off, take a look at all the settings and double-check it. If you are satisfied with the settings, click on finish to create the project.

# Instructions to start coding
Follow these steps to start coding 

1. Click on File on the top left corner and click on New.
2. Select the type of file you are looking to open. For example: If you planning to code on SystemVerilog, click on "SystemVerilog HDL file".
3. Once you do that, the EDA opens a text editor for you to start coding.
4. Remember to keep the same name for both the module name and the file name.
5. After you are done coding, save it and compile the file.
6. If you have multiple files (i.e structural style) head on to Project Navigator to the left side and click on the Hierarchy tab and click on Files. Once you do that right-click on the file that you want to compile and set it to top level priority. 
7. Make sure to run the testbench (if given) or create a simple testbench yourself and run it.

That's about all that is required for you to get started! A lot indeed so do contact the maintainers for any help required! We are happy to help :)
