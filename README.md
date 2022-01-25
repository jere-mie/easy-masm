# Easy-MASM
## The simplest way to assemble, link, and run masm32 files on Windows or Linux

## Introduction Video
Check out [this video](https://youtu.be/-pYwO4sTpxI) where I quickly install easy-masm, edit a file, and run it on Windows and Linux (all in under 3 minutes)!

## Steps For Windows Users
1. Clone this repo and save to your desired location:
```
git clone https://github.com/jere-mie/easy-masm
```
**NOTE**: If you're having issues with this command, you need to install git. Download and install it [here](https://git-scm.com/download/win). Select the "64-bit Git for Windows Setup" option.


2. Edit the `source.asm` file in the `src` folder as you need (or it can serve as a template for each new project) \
**NOTE**: Make sure you put all of your `.asm` files you want to run in the `src` folder. If they are not in the `src` folder they won't be run \
**NOTE**: If you're trying to run an example MASM file from another source, make sure you include these two lines after `INCLUDELIB Irvine32.lib`. If you don't include the following two lines, the program will not be able to run.
```
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
```

3. Run your program by typing `"run source"` into cmd/PowerShell (you can change source to whatever your assembly file name is without the .asm extension) \
**NOTE**: if you're using PowerShell, type `"./run source"` into PowerShell instead \
**NOTE**: make sure your terminal isn't in the `src` folder. If you are in the `src` folder, run `cd ..` to go back to the root of the `easy-masm` directory. (Also make sure you aren't in the `lib` folder. Similarly, run `cd ..` to go back in the correct folder).

## For Linux Users
1. [Install Wine](https://www.winehq.org/) on your computer. (If you're using the CS Servers at UWindsor, Wine is already installed so you can skip this step)
2. Run `chmod +x run.sh` in the terminal to make "run.sh" executable after you clone the repository (you only need to do this once)
    * This step may not be required. If you get a permission error when trying to run `run.sh`, then try the above step
3. Follow the same steps as Windows users with the following exception: when running your program in step 3, instead of running `run source`, type `./run.sh source` (the run.sh file must be used instead of the run.bat file)  

**NOTE**: if you're using the CS Servers, you **MUST** run Easy-MASM on No Machine before running it via SSH  
**NOTE**: if you're having issues with wine, try running the following 2 commands (one at a time):
```sh
rm -rf ~/.wine
winecfg
```
This should take a while, between 5 and 10 minutes.

## I Use MacOS, What do I do?
Unfortunately, since Wine is no longer available on newer versions of MacOS, there is no easy way to get Easy-MASM to work on MacOS. There are two main options to get Easy-MASM running:
1. Using SSH to connect to a remote server, and run Easy-MASM there. If you can connect to a Linux server, then you can use Wine to get Easy-MASM running. 
    - If you're a UWindsor student, you can ssh into the CS servers by running: `ssh UWINID@cs.uwindsor.ca`, replacing `UWINID` with your UWinID.
    - After putting in your password, you can follow the instructions in the "For Linux Users" section.
    - If you can get this solution working, I recommend using it rather than a virtual machine (option 2).
2. Create a virtual machine (Windows or Linux) and run Easy-MASM on there.
    - Check out [this tutorial](https://www.youtube.com/watch?v=E27f1VO9ZnA) to learn more.

### You may be asking yourself, **"If I need to use a virtual machine anyways, why should I use Easy-MASM? Why shouldn't I just use Visual Studio?"**.  
This is a very valid question. The reasons why you should use Easy-MASM in this case are the same reasons why you'd want to use Easy-MASM at all:
- It is much smaller in size than Visual Studio (~11Mb vs ~20Gb)
- It is much quicker to set up than Visual Studio (~5min vs ~1hr)
- You can use any editor you want with Easy-MASM
    - This is especially important for VM users because running a heavy IDE like Visual Studio in a VM can be an awful experience. Since you can use any editor you want with Easy-MASM, you don't need to bog down your VM with a heavy IDE.  

I understand that MacOS users are especially disadvantaged when trying to get MASM up and running. Unfortunately, I have not found any great way to get it working. If you have any thoughts, insights, or ideas, feel free to [create a new issue](https://github.com/jere-mie/easy-masm/issues/new/choose) on the GitHub repository, [email me](mailto:borna113@uwindsor.ca), or contribute to this project! You can find the GitHub repository to this project here: https://github.com/jere-mie/easy-masm/ .

## FAQ/Common Errors
* "When I try to run, I get the following error: **'The term 'run' is not recognized as the name of a cmdlet...'"**
    * You are probably using PowerShell, so try running `./run source`
    * It is also possible you are in either the `src` folder or `lib` folder. Run `cd ..` to go back to the right folder
* "When I try to run, I get the following error: **'. is not recognized as an internal or external command...'"**
    * You are probably using CMD, so try running `run source`
    * It is also possible you are in either the `src` folder or `lib` folder. Run `cd ..` to go back to the right folder
* "When I try to run, I get the following error: **'-bash: run: command not found' or '-bash: ./run: No such file or directory'"**
    * You are probably using Linux (Bash), so try running `./run.sh source`
    * It is also possible you are in either the `src` folder or `lib` folder. Run `cd ..` to go back to the right folder
* "When I try to run, I get the following error: **'./run.sh: line 4: wine: command not found'"**
    * You are probably using Linux and don't have Wine Installed. Wine is required to run easy-masm on non-Windows machines. Be sure to install it by going [here](https://www.winehq.org/)
* I can't clone the repository, **"'git' is not recognized as an internal or external command"**
    * You may not have git installed. Either install it [here](https://git-scm.com/downloads) or download the repository as a zip
* I'm seeing something like **"source.exe not found"** when trying to run
    * Your antivirus may be deleting the executable file before you can run it. Try disabling antivirus and re-running
* I'm getting weird **'x11'** errors with wine when trying to run the command
    * This may be because wine is being used for the first time, and is unrelated to easy-masm. Try stopping the process and re-running the script a couple times. This usually fixes it
* I'm getting an error that isn't described above
    * Reach out to me at borna113@uwindsor.ca and I can do my best to help

## Some Helpful Tips
* For VSCode users, check out the [MASM Extension](https://marketplace.visualstudio.com/items?itemName=blindtiger.masm) to add syntax highlighting for MASM files

## Contact
If you have a question, comment, or want to contribute. Feel free to make a pull request or create an issue on this repo. You can also contact me at borna113@uwindsor.ca

## Credits
This guide could not have been made without direct/indirect help from the following:
* ASMDude's guide to [installing](https://asmdude.wordpress.com/2019/02/15/how-to-install-masm32-on-windows-10/) and [running](https://asmdude.wordpress.com/2019/02/14/how-to-compile-and-link-masm-on-windows-10/) MASM files
* [masm32-wine](https://github.com/olivatooo/masm32-wine) for inspiration and some source files
* GitHub user [bachittle](https://github.com/bachittle) for figuring out how to run this on Wine
* GitHub user [WahidBawa](https://github.com/WahidBawa) for providing me with some of these resources
* Anyone else who Stars, Forks, or contributes to this in the future :)
