# GitHub Codespaces

GitHub Codespaces is a way of running Easy-MASM in your browser. Since it runs in your browser, this solution will work on any device, including MacOS devices and Chromebooks It's recommended that you have some familiarity with git and GitHub before using GitHub Codespaces (though you can always use this as an opportunity to learn git and GitHub).

## A Bit About Codespaces

GitHub Codespaces is a cloud-based development environment that allows you to write, run, and debug code from within your web browser. It comes with a built-in code editor, terminal, and debugger, and you can use it to work on your Git repositories. With GitHub Codespaces, you can quickly spin up a development environment for any of your repositories, without the need to set up a local development environment on your own computer. You can use GitHub Codespaces to work on your projects from anywhere, on any device, and collaborate with your team in real-time. You can learn more about Codespaces [here](https://github.com/features/codespaces).

## Getting Setup With Codespaces for Easy-MASM

Since Codespaces runs on Linux, the steps for setting up Easy-MASM on Codespaces is similar to the steps to set it up on Linux. For your convenience, however, I've prepared some automation scripts that may help you speed up the process. 

### Step 1 - Setting up GitHub and Creating Your Repository

Firstly, ensure you have a GitHub account, as you'll need one to have access to Codespaces. Next, you'll need to create a new Repository where your code will live. I'd recommend calling this "masm", "masm-work", "comp-2660" or something similar. When creating your repository, make sure you check the "Create README.md" box and make the repository private. Keeping the repository private is important if you want to use Codespaces for your schoolwork. Otherwise, people will be able to see your work. Your repository should look something like the picture below:
![image](https://user-images.githubusercontent.com/47261508/210434837-66d4d937-078e-4209-8511-377b209f8748.png)

### Step 2 - Opening in and Setting up Codespaces

Once your repository is created, you should be taken to the repository's homepage. Now, you'll need to press the green "Code" button, click on the "Codespaces" tab that drops down, and then press "Create codespace on Main". 

![image](https://user-images.githubusercontent.com/47261508/210438283-8fc70727-269b-48d4-b65d-95f663a67be3.png)

A new tab should open up and you should be brought to an online version of VS Code. It may take a minute or so to fully load. Now, paste the following in your terminal:
```bash
sudo dpkg --add-architecture i386; sudo apt-get update; sudo apt-get install wine wine32 -y; git clone https://github.com/jere-mie/easy-masm; cp -r easy-masm/* .; cp easy-masm/.* .; rm -rf easy-masm;
```

This will install all the prerequisite software as well as download the Easy-MASM files. Note: this whole process may take a couple of minutes so sit tight and let it do its thing.

Once this is done, you'll be able to run the sample `src/source.asm` file by typing in the terminal `./run.sh source`. The first time you run it you might see a bunch of text output on the screen; this is just wine running itself for the first time. Subsequent runs should be a bit quicker. Play around with this file, make some changes, and see how the output changes when you run it.

### Step 3 - Committing your files

It's important whenever you're done coding, and especially after you first set up your repository, that you commit all of your changes. If you're not familiar with git, I highly recommend you learn the basics of it. You can check out a decent tutorial [here](https://www.youtube.com/watch?v=HkdAHXoRtos). Essentially though, committing and pushing your changes just makes it such that the changes to your repository are saved. This is important if you want to keep your code saved, or if you don't want to have to re-set up the repository each time you want to work on your code. A very simple way to do this is to type the following in your terminal:

```bash
git add -A
git commit -m "input some message here"
git push
```

Congratulations! You've now set up Easy-MASM to run in GitHub Codespaces and pushed your code to a private GitHub repository.

**Now that your repository is set up, opening your code up in Codespaces will look a little different.** I will detail this below:

## Opening Your Code in GitHub Codespaces After Setting up the Repository

After you've set up your repository, the way you open up and interact with Codespaces changes slightly. Each time you want to open up your repository in Codespaces, you hit the green "Code" button on the repository's page, select the "Codespaces" tab, and then one of two things may happen:

1. You see that a Codespace is already available. Similar to the image below:

![image](https://user-images.githubusercontent.com/47261508/210438172-0a14af80-63c8-4716-a7c3-7c61427cf314.png)

2. You see there is no Codespace. Similar to the image below:

![image](https://user-images.githubusercontent.com/47261508/210438283-8fc70727-269b-48d4-b65d-95f663a67be3.png)

### (1) What to Do If There is Already A Codespace

In this case, you can simply click on the Codespace and it should open in a new tab for you. You can work on it the same as before without any additional configuration.

### (2) What to Do If There is No Codespace

Occasionally, GitHub deletes Codespaces that haven't been used in a while. If this happens, you won't see any active Codespaces when you go to work on your repository. This is why it's important to commit and push your changes whenever you make them in GitHub Codespaces.

Now, similar to before you can click the button that says "Create codespace on main" and you should see a new tab open with your code. However, this new codespace will not have all the prerequesite software installed. Thus, you must paste the following in your terminal once it loads:

```bash
sudo dpkg --add-architecture i386; sudo apt-get update; sudo apt-get install wine wine32 -y;
```

Note that this is a different script from the one we used to set up the repository initially. This installation process should take a few minutes, similar to before. Once it's done, you can run your code the same as before!

## Helpful Tips

### Pricing

While Codespaces is free, there is a limit to how much you can use it each month for free. If you're just using Codespaces for this and a few classes, you shouldn't ever hit this limit. However, if you plan on using Codespaces a lot (like I do) you may want to consider deleting codespaces right after you're done using them. This will make it such that you reach that limit much slower.

### Syntax Highlighting

You can get very good syntax highlighting by installing [this VS Code extension](https://marketplace.visualstudio.com/items?itemName=blindtiger.masm). This will improve your developer experience a lot!
