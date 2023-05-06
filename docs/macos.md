# MacOS

## I Use MacOS, What do I do?

### UPDATE: [Thanks to GitHub Codespaces, you can now run Easy-MASM from your web browser](https://jere-mie.github.io/easy-masm/codespaces)!

This is **the best way** to run MASM on MacOS, with 0 installation required to get running!
Check out [this article](https://jere-mie.github.io/easy-masm/codespaces) for more info!

---

## Note: the following is outdated and only applies if you're interested in running Easy-MASM on your actual computer. I STRONGLY recommend you check out the [Codespaces section](https://jere-mie.github.io/easy-masm/codespaces) to run Easy-MASM in your browser!

Unfortunately, since Wine is no longer available on newer versions of MacOS, there is no easy way to get Easy-MASM to work on MacOS. There are two main options to get Easy-MASM running:

1. Using SSH to connect to a remote server, and run Easy-MASM there. If you can connect to a Linux server, then you can use Wine to get Easy-MASM running. 
    - If you're a UWindsor student, you can ssh into the CS servers by running: `ssh UWINID@cs.uwindsor.ca`, replacing `UWINID` with your UWinID.
    - After putting in your password, you can follow the instructions in the "For Linux Users" section.
    - If you can get this solution working, I recommend using it rather than a virtual machine (option 2).
2. Create a virtual machine (Windows or Linux) and run Easy-MASM on there.
    - Check out [this tutorial](https://www.youtube.com/watch?v=E27f1VO9ZnA) to learn more.

### Why shouldn't I just use Visual Studio?

This is a very valid question. The reasons why you should use Easy-MASM in this case are the same reasons why you'd want to use Easy-MASM at all:
- It is much smaller in size than Visual Studio (~11Mb vs ~20Gb)
- It is much quicker to set up than Visual Studio (~5min vs ~1hr)
- You can use any editor you want with Easy-MASM
    - This is especially important for VM users because running a heavy IDE like Visual Studio in a VM can be an awful experience. Since you can use any editor you want with Easy-MASM, you don't need to bog down your VM with a heavy IDE.  

I understand that MacOS users are especially disadvantaged when trying to get MASM up and running. Unfortunately, I have not found any great way to get it working. If you have any thoughts, insights, or ideas, feel free to [create a new issue](https://github.com/jere-mie/easy-masm/issues/new/choose) on the GitHub repository, [email me](mailto:borna113@uwindsor.ca), or contribute to this project! You can find the GitHub repository to this project here: https://github.com/jere-mie/easy-masm/.
