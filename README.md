# Easy-MASM
## The simplest way to assemble, link, and run masm32 files on Windows, Linux, or MacOS

### Steps For Windows Users
1. Clone this repo and save to your desired location

2. Edit the source.asm file as you need (it can serve as a template for each new project)
**NOTE**: The following two lines:
```
includelib kernel32.lib
includelib user32.lib
```
are only necessary when not using Visual Studio. If you are using Visual Studio they can be left out

3. Run your program by typing `"run source"` into cmd/powershell (you can change source to whatever your assembly file name is without the .asm extension)
**NOTE**: if you're using powershell, type `"./run source"` into powershell instead

4. Delete Visual Studio and save your SSD space for osu! beatmaps

### For Linux/MacOS Users
1. Install Wine on your computer
2. Follow the same steps as Windows users with the following exception: when running your program in step 3, instead of running `run source`, type `./run.sh source` (the run.sh file must be used instead of the run.bat file)

### Credits
This guide could not have been made without direct/indirect help from the following:
* ASMDude's guide to [installing](https://asmdude.wordpress.com/2019/02/15/how-to-install-masm32-on-windows-10/) and [running](https://asmdude.wordpress.com/2019/02/14/how-to-compile-and-link-masm-on-windows-10/) MASM files
* [masm32-wine](https://github.com/olivatooo/masm32-wine) for inspiration and some source files
* GitHub user [bachittle](https://github.com/bachittle) for figuring out how to run this on Wine
* GitHub user [WahidBawa](https://github.com/WahidBawa) for providing me with some of these resources