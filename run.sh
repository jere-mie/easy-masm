#!/bin/sh
cp src/$1.asm lib 
cd lib 
wine aml.exe /c /Zd /coff $1.asm 
wine alink.exe /SUBSYSTEM:CONSOLE $1.obj 
wine $1.exe 
rm $1.exe 
rm $1.obj 
rm $1.asm 
cd ..
