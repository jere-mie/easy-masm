## FAQ/Common Errors

### "When I try to run, I get the following error: **'-bash: run: command not found' or '-bash: ./run: No such file or directory'"** 

* You are probably using Linux (Bash), so try running `./run.sh source`
* It is also possible you are in either the `src` folder or `lib` folder. Run `cd ..` to go back to the right folder

---

### When I try to run, I get the following error: **'./run.sh: line 4: wine: command not found'"**

* You are probably using Linux and don't have Wine Installed. Wine is required to run easy-masm on non-Windows machines. Be sure to install it by going [here](https://www.winehq.org/)

---

### I can't clone the repository, **"'git' is not recognized as an internal or external command"**

* You may not have git installed. Either install it [here](https://git-scm.com/downloads) or download the repository as a zip

---

### I'm seeing something like **"source.exe not found"** when trying to run

* Your antivirus may be deleting the executable file before you can run it. Try disabling antivirus and re-running

---

### I'm getting weird **'x11'** errors with wine when trying to run the command

* This may be because wine is being used for the first time, and is unrelated to easy-masm. Try stopping the process and re-running the script a couple times. This usually fixes it

---

### I'm getting an error that isn't described above

* Reach out to me at borna113@uwindsor.ca and I can do my best to help
