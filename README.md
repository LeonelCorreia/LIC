# LIC
#List of main git commands
;
;
git init: Initialize a new Git repository in the current directory.
git clone <repository_url>: Clone a repository from a remote server to your local machine.
git add <file(s)>: Add file(s) to the staging area to be included in the next commit.
git commit -m "<commit_message>": Commit changes in the staging area to the local repository with a descriptive message.
git status: Check the current status of your repository, including tracked/untracked files and changes not staged for commit.
git diff: Show the difference between the working directory and the staging area.
git diff --staged: Show the difference between the staging area and the last commit.
git branch: List all branches in the repository.
git branch <branch_name>: Create a new branch with the specified name.
git checkout <branch_name>: Switch to a different branch.
git checkout -b <branch_name>: Create a new branch and switch to it in a single step.
git merge <branch_name>: Merge changes from the specified branch into the current branch.
git pull origin <branch_name>: Fetch the latest changes from the remote repository and merge them into the current branch.
git pull origin <branch_name> --allow-unrelated-histories: This flag allows Git to merge branches with unrelated histories
git push: Push local commits to the remote repository.
git remote -v: List all remote repositories and their URLs.
git remote add <name> <repository_url>: Add a new remote repository.
git log: Display the commit history of the current branch.
git reset HEAD <file(s)>: Unstage file(s) from the staging area.
git reset --soft <commit>: Reset the current branch's HEAD to a specified commit, keeping staged changes.
git reset --hard <commit>: Reset the current branch's HEAD to a specified commit, discarding all changes.
