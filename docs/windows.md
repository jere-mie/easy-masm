# Windows

## Prerequisites before getting started with a local install

Make sure you have git installed. Download and install it [here](https://git-scm.com/download/win). Select the "64-bit Git for Windows Setup" option.

## Steps For Windows Users

1. Clone this repo and save to your desired location:

```bash
git clone https://github.com/jere-mie/easy-masm
```

2. Run `cd easy-masm` to go into the Easy-MASM directory.

3. Edit the `source.asm` file in the `src` folder as you need (or it can serve as a template for each new project) \
**NOTE**: Make sure you put all of your `.asm` files you want to run in the `src` folder. If they are not in the `src` folder they won't be run \
**NOTE**: If you're trying to run an example MASM file from another source, make sure you include these two lines after `INCLUDELIB Irvine32.lib`. If you don't include the following two lines, the program will not be able to run.

```asm
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
```

4. Run your program! Simply type `.\run source` (make sure you're using `\`, not `/`)

## Running files other than source.asm

If you want to run a file other than `source.asm`, the instructions are the same. The only difference is the command you run in step 3. Replace "source" with whatever the name of your file is without the `.asm` extension.  
For example, to run `Assignment1.asm`, type either `.\run Assignment1`

**NOTE**: make sure your terminal isn't in the `src` folder. If you are in the `src` folder, run `cd ..` to go back to the root of the `easy-masm` directory. (Also make sure you aren't in the `lib` folder. Similarly, run `cd ..` to go back in the correct folder).
