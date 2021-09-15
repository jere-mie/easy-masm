# Easy-MASM
## The simplest way to assemble, link, and run masm32 files on Windows, Linux, or MacOS

### Introduction Video
Check out [this video](https://youtu.be/-pYwO4sTpxI) where I quickly install easy-masm, edit a file, and run it on Windows and Linux (all in under 3 minutes)!

### Steps For Windows Users
1. Clone this repo and save to your desired location:
```
git clone https://github.com/jere-mie/easy-masm
```

2. Edit the `source.asm` file in the `src` folder as you need (or it can serve as a template for each new project) \
**NOTE**: Make sure you put all of your `.asm` files you want to run in the `src` folder. If they are not in the `src` folder they won't be run \
**NOTE**: The following two lines are only necessary when not using Visual Studio. If you are using Visual Studio they can be left out:
```
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
```

3. Run your program by typing `"run source"` into cmd/powershell (you can change source to whatever your assembly file name is without the .asm extension) \
**NOTE**: if you're using powershell, type `"./run source"` into powershell instead \
**NOTE**: make sure your terminal isn't in the `src` folder. If you are in the `src` folder, run `cd ..` to go back to the root of the `easy-masm` directory. (Also make sure you aren't in the `lib` folder. Similarly, run `cd ..` to go back in the correct folder).

4. Delete Visual Studio and save your SSD space for osu! beatmaps ;)

### For Linux/MacOS Users
1. [Install Wine](https://www.winehq.org/) on your computer. (If you're using the CS Servers at UWindsor, Wine is already installed so you can skip this step)
2. Run `chmod +x run.sh` in the terminal to make "run.sh" executable after you clone the repository (you only need to do this once)
    * This step may not be required. If you get a permission error when trying to run `run.sh`, then try the above step
3. Follow the same steps as Windows users with the following exception: when running your program in step 3, instead of running `run source`, type `./run.sh source` (the run.sh file must be used instead of the run.bat file)  

**NOTE**: if you're using the CS Servers, you **MUST** run Easy-MASM on No Machine before running it via SSH

### FAQ/Common Errors
* "When I try to run, I get the following error: **'The term 'run' is not recognized as the name of a cmdlet...'"**
    * You are probably using Powershell, so try running `./run source`
    * It is also possible you are in either the `src` folder or `lib` folder. Run `cd ..` to go back to the right folder
* "When I try to run, I get the following error: **'. is not recognized as an internal or external command...'"**
    * You are probably using CMD, so try running `run source`
    * It is also possible you are in either the `src` folder or `lib` folder. Run `cd ..` to go back to the right folder
* "When I try to run, I get the following error: **'-bash: run: command not found' or '-bash: ./run: No such file or directory'"**
    * You are probably using Linux or MacOS (Bash), so try running `./run.sh source`
    * It is also possible you are in either the `src` folder or `lib` folder. Run `cd ..` to go back to the right folder
* "When I try to run, I get the following error: **'./run.sh: line 4: wine: command not found'"**
    * You are probably using Linux or MacOS and don't have Wine Installed. Wine is required to run easy-masm on non-Windows machines. Be sure to install it by going [here](https://www.winehq.org/)
* I can't clone the repository, **"'git' is not recognized as an internal or external command"**
    * You may not have git installed. Either install it [here](https://git-scm.com/downloads) or download the repository as a zip
* I'm seeing something like **"source.exe not found"** when trying to run
    * Your antivirus may be deleting the executable file before you can run it. Try disabling antivirus and re-running
* I'm getting weird **'x11'** errors with wine when trying to run the command
    * This may be because wine is being used for the first time, and is unrelated to easy-masm. Try stopping the process and re-running the script a couple times. This usually fixes it
* I'm getting an error that isn't described above
    * Reach out to me at borna113@uwindsor.ca and I can do my best to help

### Contact
If you have a question, comment, or want to contribute. Feel free to make a pull request or create an issue on this repo. You can also contact me at borna113@uwindsor.ca

### Credits
This guide could not have been made without direct/indirect help from the following:
* ASMDude's guide to [installing](https://asmdude.wordpress.com/2019/02/15/how-to-install-masm32-on-windows-10/) and [running](https://asmdude.wordpress.com/2019/02/14/how-to-compile-and-link-masm-on-windows-10/) MASM files
* [masm32-wine](https://github.com/olivatooo/masm32-wine) for inspiration and some source files
* GitHub user [bachittle](https://github.com/bachittle) for figuring out how to run this on Wine
* GitHub user [WahidBawa](https://github.com/WahidBawa) for providing me with some of these resources
* Anyone else who Stars, Forks, or contributes to this in the future :)
