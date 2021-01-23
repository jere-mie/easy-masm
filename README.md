# Easy-MASM
## The simplest way to assemble, link, and run masm32 files on Windows, Linux, or MacOS

### Steps For Windows Users
1. Clone this repo and save to your desired location:
```
git clone https://github.com/jere-mie/easy-masm
```

2. Edit the `source.asm` file in the `src` folder as you need (or it can serve as a template for each new project) \
**NOTE**: The following two lines are only necessary when not using Visual Studio. If you are using Visual Studio they can be left out:
```
includelib kernel32.lib
includelib user32.lib
```


3. Run your program by typing `"run source"` into cmd/powershell (you can change source to whatever your assembly file name is without the .asm extension) \
**NOTE**: if you're using powershell, type `"./run source"` into powershell instead

4. Delete Visual Studio and save your SSD space for osu! beatmaps ;)

### For Linux/MacOS Users
1. Install Wine on your computer
2. Run `chmod +x run.sh` in the terminal to make "run.sh" executable (you only need to do this once)
3. Follow the same steps as Windows users with the following exception: when running your program in step 3, instead of running `run source`, type `./run.sh source` (the run.sh file must be used instead of the run.bat file)

### FAQ/Common Errors
* "When I try to run, I get the following error: 'The term 'run' is not recognized as the name of a cmdlet...'"
    * You are probably using Powershell, so try running `./run source`
* "When I try to run, I get the following error: '. is not recognized as an internal or external command...'"
    * You are probably using CMD, so try running `run source`
* "When I try to run, I get the following error: '-bash: run: command not found' or '-bash: ./run: No such file or directory'"
    * You are probably using Linux or MacOS (Bash), so try running `./run.sh source`
* "When I try to run, I get the following error: './run.sh: line 4: wine: command not found'"
    * You are probably using Linux or MacOS and don't have Wine Installed. Wine is required to run easy-masm on non-Windows machines. Be sure to install it by going [here](https://www.winehq.org/)
* I can't clone the repository, "'mit' is not recognized as an internal or external command"
    * You may not have git installed. Either install it [here](https://git-scm.com/downloads) or download the repository as a zip

### Credits
This guide could not have been made without direct/indirect help from the following:
* ASMDude's guide to [installing](https://asmdude.wordpress.com/2019/02/15/how-to-install-masm32-on-windows-10/) and [running](https://asmdude.wordpress.com/2019/02/14/how-to-compile-and-link-masm-on-windows-10/) MASM files
* [masm32-wine](https://github.com/olivatooo/masm32-wine) for inspiration and some source files
* GitHub user [bachittle](https://github.com/bachittle) for figuring out how to run this on Wine
* GitHub user [WahidBawa](https://github.com/WahidBawa) for providing me with some of these resources