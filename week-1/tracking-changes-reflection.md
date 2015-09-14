Tracking and adding changes makes developers' lives easier by creating a safety net for their code. It also allows for other developers to see the step by step process of what was done to the code and what each commit adds to the code. A commit is a save point for your code. It saves your code as it is now, and allows you to revert back to that state if you need to. 

When writing your commit messages, you want to be succinct while maintaining enough detail to absolutely explain what happened within this commit. You should have a header, which is a brief description of the commit. All commit messages should be written in the imperative, present tense. This helps to show someone what this commit will do to the code if they merge it, instead of telling them what you did. 

The HEAD argument refers to the most recent commit of the current branch.

The 3 stages of a git change are creating a new branch to do your work in, committing that work to the branch, and then merging that with the master, or parent, branch. To create a new branch, you use the command 'git checkout -b Branch-name-here' to take you to your new branch. Then when you are ready to commit your changes, you use the command 'git commit -m "commit message here"'. You can check the status of your branch at anytime with 'git status'. Once you are satisfied, you can use the command 'git push origin branch-name'. 

Cheat sheet of commands needed to commit changes.

git pull -- if using a remote repository, will get changes from there and merge them to your branch
git checkout -b branch-name-here -- This will create a new branch and allow you to work not on the master.
git add - this will add the files you want to be committed and tracked
git status - provides the status for your current commit
git commit -m "commit message" -- This is how you commit your changes and add a commit message at the same time. 

A Pull request is when you send your committed changes to the origin branch. You are sending through GitHub saying that you have completed whatever features you have worked on and that you would like them to review it, or if it is your own code you are going to merge this branch with the master file. To create a pull request, you want to have committed your changes first. After that use the command 'git push origin feature-branch-here'. Once you do that, you want to go into the corresponding repository in GitHub. The request will automatically pop up and ask you 'Compare and pull request'. This allows you to view which branch you will be merging the feature branch into. If they are able to automatically merge, you can do right through GitHub.

Pull requests are preferred when working with teams because they are a way to break up tasks without having everyone working on the same branch. It removes the chances of someone accidentally deleting someone else's work. It also makes it easier keep track of the amount of work each person has done. 