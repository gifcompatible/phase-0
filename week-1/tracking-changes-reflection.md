Tracking and adding changes makes developer's lives easier because it allows for correction of error-if something were to go wrong, they can easily roll back to an earlier version because they have a history of changes.
A commit is a saved change-a change that you want to keep.
Best practices for the commit message are to keep them to about 72 characters, use the imperative, and state what was changed.
HEAD^ refers to the last commit.
I believe the 3 stages are add, commit, and commit message.  You move a file from one stage to the other by typing out the git commands for each stage.
Cheatsheet:
-git checkout master
-git pull
-git checkout -b branch-name
-make some changes
-git add
-git commit -v or -m "commit message"
-git push origin branch-name
-git checkout master
-git merge master
-git push origin branch-name
A pull request is how you make changes to your master branch from a different branch.  To create a pull request:
-Go to GitHub and navigate to the repo you want
-Click Compare and pull request or New Pull Request
-Make sure you are comparing the master branch with the branch you want to merge (the new branch)
-Add the title/description
-Click Create Pull Request
-Click Merge Pull Request, Confirm Merge
Pull requests are preferred when working with teams so that you aren't making changes directly to the master branch.
