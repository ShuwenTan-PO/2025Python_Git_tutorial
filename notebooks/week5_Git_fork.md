# Git fork, branch, push, and pull from 2025Python_Git_tutorial

- Press the "Fork" button at the top of this Github page to create your own fork of this repository. 
- Clone your fork of the repository with
```bash
git clone https://github.com/YOUR-GITHUB-USERNAME/2025Python_Git_tutorial.git
```
- Add origin, here origin is an alias/alternate name for your remote repository so that you don't have to type the entire path for remote every time and henceforth you are declaring that you will use this name(origin) to refer to your remote
```bash
git remote add origin https://github.com/YOUR-GITHUB-USERNAME/2025Python_Git_tutorial.git
```
using `git remote -v` to check out upstream & local repos.
- Create a new branch to work on new features of 2025Python_Git_tutorial (e.g., create a new notebook to plot salinity for GO-SHIP p02 transect) using
```bash
git checkout -b yourname
```
you can jump back and forth the main branch and new breanch using `git checkout`
```bash
git checkout main
git checkout yourname
```
- Then you will work on the new features on branch yourname. You can add the new changes you made (a output file here for example) using
```bash
git add notebooks/newnotebook.ipynb
```
or add all changes using
```bash
git add .
```
- Check what's new from the previous using
```bash
git status
```
- Commit your change using
```bash
git commit -m "add new notebook for plotting salinity”
```
- Push your changes to remote repo with
```bash
git push 
```
- The changes were done on your local repo. Let's say now you want to submit your changes to an upstream repo (here ShuwenTan-PO), you need to make a pull request by going to the Github page of your repository and press the "Pull requests" button at the top of this Github page to create a pull request.
- Make sure you add the upstream repo using
```bash
git remote add upstream https://github.com/ShuwenTan-PO/2025Python_Git_tutorial.git
```
again, you can use `git remote -v` to check out upstream & local repos.
- Let's say the upstream repo merged all pull requests from everyone in the class. You want to update the main branch to the latest version of the remote repo. You can use 
```bash
git fetch upstream
```
and download changes in local repo to local machine with 
```bash
git checkout main
git merge upstream/main
```
- Then you can create a new branch to make changes & develop new features and push to your remote repo
```bash
git add .
git commit -m "add xx new feature”
git push
```
