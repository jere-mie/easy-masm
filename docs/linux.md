## Linux

The instructions for installing Easy-MASM on Linux are almost identical to the instructions to installing on Windows. The only difference is you need to complete a few steps first:

1. [Install Wine](https://www.winehq.org/) on your computer. (If you're using the CS Servers at UWindsor, Wine is already installed so you can skip this step)
2. Clone this repo and save to your desired location:

```
git clone https://github.com/jere-mie/easy-masm
```

3. Run `cd easy-masm` to go into the Easy-MASM directory.
4. Run `chmod +x run.sh` in the terminal to make "run.sh" executable after you clone the repository (you only need to do this once)
5. Edit any files in the `src` directory as needed.
6. Follow the same steps as Windows users to run the program with the following exception: instead of typing `run source` or `./run source`, type `./run.sh source` (the run.sh file must be used instead of the run.bat file)  

**NOTE**: if you're using the CS Servers, you **MUST** run Easy-MASM on No Machine before running it via SSH  
**NOTE**: if you're having issues with wine, try running the following 2 commands (one at a time):

```sh
rm -rf ~/.wine
winecfg
```

This should take a while, between 5 and 10 minutes.

**NOTE**: make sure your terminal isn't in the `src` folder. If you are in the `src` folder, run `cd ..` to go back to the root of the `easy-masm` directory. (Also make sure you aren't in the `lib` folder. Similarly, run `cd ..` to go back in the correct folder).
