## MacOS

MacOS users are particularly disadvantaged when trying to run MASM programs because neither Visual Studio nor Wine will work natively on it.

However, thanks to Docker, it is now possible to run Easy-MASM on MacOS.

Alternatively, you may want to check out [GitHub Codespaces](codespaces), an online IDE where you can also run Easy-MASM.

### Instructions

1. Install Docker (check out [this article](https://docs.docker.com/desktop/install/mac-install/) to learn how)

2. Pull the `jeremiedevelops/easy-masm:latest` Docker image by opening up a terminal and running the following:
```sh
docker pull jeremiedevelops/easy-masm:latest
```
**NOTE**: This download will probably take a while, depending on your internet speed and how fast your computer is.

3. Clone the repository by typing the following into a terminal:
```sh
git clone https://github.com/jere-mie/easy-masm
cd easy-masm
```

4. Make the scripts executable by running the following in a terminal:
```sh
chmod +x *.sh
```

5. Run the script!
```sh
./rundocker.sh source
```

As always, this will run the assembly program in the folder `src/source.asm`. If you'd like to run a different program, say `src/lab1.asm`, run the command `./rundocker.sh lab1`.
