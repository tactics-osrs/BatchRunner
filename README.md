# Batch File Runner

This repository contains a Batch script that allows you to run .bat files from a specified directory.

## Description

The script provides a menu for the user to select and run a .bat file from a specified directory. The default directory is set to the "Batch" folder on the current user's desktop (`%USERPROFILE%\Desktop\Batch`). If the directory does not exist, the script will prompt the user to input the location of their "Batch" folder and use the input to change the directory.

## Usage

1. Clone this repository or download the .bat file.
2. Run the .bat file.
3. If the "Batch" folder does not exist at the default location, you will be prompted to enter the full path to your "Batch" folder.
4. The script will display a list of .bat files in the specified directory.
5. Enter the number of the file you want to run.
6. The selected file will be run, and a message will be displayed indicating that the file has been successfully opened.

## Note

The user must name their batch files folder "Batch" unless they change it in the codeline. To change the default directory, modify the "dir" variable in the script.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

