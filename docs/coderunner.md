## Code Runner Support (currently Linux and MacOS only)
Tired of typing the same command again and again. Code Runner gives one click execute support for better accessibility, make sure you have the [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) extenstion installed. Then follow the steps given below.

**Note:** You can only run this in easy-masm folder, it will not work dynamically work everywhere. 

**Note:** This method will make the ``` ./run.sh filename ``` method obsolete, see step three to make both steps accessible at the same time.

### 1. Change Extension Settings
Click on extension settings of the code runner extension.

  ![image](https://github.com/thehamzaihsan/easy-masm-pr/assets/85873694/c60c565e-76e1-402b-bc98-4395380f2ae2)

then goto goto the following file "Executer Map by File Extension"

   ![image](https://github.com/thehamzaihsan/easy-masm-pr/assets/85873694/cbe0c933-ecdf-464b-b0cd-7e4f03de6fa7)
then add the following lines here. 

 Linux & MacOS only: ``` ".asm" : "sh run.sh $fileNameWithoutExt $dir" ```

   ![image](https://github.com/thehamzaihsan/easy-masm-pr/assets/85873694/001c7c7b-e9e3-42b6-9131-1b5c85d7648b)

### 2. You can then change your ```run.sh``` to the following:
 ``` 
#!/bin/sh
cp "$2$1.asm" lib 
cd lib 
wine aml.exe /c /Zd /coff $1.asm 
wine alink.exe /SUBSYSTEM:CONSOLE $1.obj 
wine $1.exe 
rm $1.exe 
rm $1.obj 
rm $1.asm 
cd ..
 ``` 
It should work now!!!!

#### 3. (Optional) You can also make a newfile called ```coderunner.sh``` and put your the above code there & put the ``` ".asm" : "sh coderunner.sh $fileNameWithoutExt $dir" ``` in the code runner settings.
