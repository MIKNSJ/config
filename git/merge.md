# Merging Git Repository Documentation

The following documentation goes over how to merge repositories and branches.

***

## Merging Repositories

You may refer to the guides shown below:

[Option A](https://gist.github.com/msrose/2feacb303035d11d2d05)

[Option B](https://medium.com/altcampus/how-to-merge-two-or-multiple-git-repositories-into-one-9f8a5209913f)


*Note: I used option B.*

***

## Initial Setup

We want to consider creating a new empty repository with README.md that will
soon contain all the other repositories that needs to be merged. Now this step
is purely optional, but it is a safeguard measure to prevent accidental
overwrites of an existing repository, given that the user wants to keep the old
versions of each repository.

We will consider an example using three repositories and denote its name as
follows:

repo_1 = an existing repository

repo_2 = another existing repository different from repo_1

repo_3 = a new and empty repository

We want to accomplish repo_1 + repo_2 -> repo_3.

In other words, repo_3 = repo_1 + repo_2.

***

## Enviroment Setup

We want to clone a repo using HTTPS, SSH, or GitHub CLI. For this
example, consider using HTTPS in the format: 
https://github.com/{user-name}/{repo_name}.git and open the repository in an
external text editor like VSCode. Recall that cloning can be
done using the command ```git clone``` or through Github Desktop. We will apply this step for the empty repository (repo_3) unless you prefer doing repo_1 ->
repo_2 or repo_2 -> repo_1 instead of the path defined above.

Execute the following commands in your terminal (repo_3) or the repo that will contain all the sub-repo contents (the repo that is after ->):

```
git remote add -f {repo_label} https://github.com/{username}/{repo_name}.git

git merge {repo-label}/main --allow-unrelated-histories

git add .

git commit -m "{commit message}"

git push origin main
```

*Note: {repo-label} can be anything as it is suppose to represent a shorten version of calling the entire path of the added repository.*

*Note: If your branch uses master, then replace main with master.*

*Note: Other existing README.md contents will overlap, so the formatting may be incorrect.*

Now you have merged either repo_1 or repo_2 -> repo_3 and you may repeat
this process again for the remaining repository, where repo_3 will have both contents of repo_1 and repo_2.

***

## Merging Branches

### Merging feature-branch to update master without PR

```
git checkout master
git pull origin master
git merge --squash feature-branch
git commit -m "Merge feature-branch into master"
git push origin master
git branch -d feature-branch
git push origin --delete feature-branch
```

***

### Merging feature-branch to revert master

```
git checkout master
git reset --hard view-branch
git push origin master --force
```

Or you can use the first method above which retains commit history.

***

### Merging master to update a feature-branch

```
git checkout master
git pull master
git checkout <feature-branch>
git merge master
```

***

### Merging some files/folders to another repo

To move a folder from one Git repository to another while preserving its commit history, you can use the following steps:

Clone the Source Repository: Begin by cloning the source repository that contains the folder you want to move.

```git clone <source_repository_url>```

Navigate to the Source Repository: Go into the directory of the cloned repository.

```cd <source_repository_name>```

Filter the Folder: Use git filter-branch or git filter-repo to filter out everything except the folder you want to move. This operation will rewrite the repository's history.

For git filter-branch:

```git filter-branch --subdirectory-filter <folder_path> -- --all```

For git filter-repo:

```git filter-repo --subdirectory-filter <folder_path>```

Create a Patch: Generate a patch file for the folder. This step isn't necessary but can be helpful for review purposes.

```git format-patch -o /path/to/patch origin/master -- <folder_path>```

Create a New Repository: Now, create a new repository where you want to move the folder.
```
mkdir <new_repository_name>
cd <new_repository_name>
git init
```

Apply the Patch: Move the patch file created in step 4 into the new repository and apply it.

```
git am /path/to/patch
```

Add Remote and Push: If you want to keep the new repository synchronized with the source repository, you can add the source repository as a remote and push changes.

```
git remote add <source_remote_name> <source_repository_url>
git pull <source_remote_name> master
git push origin master
```

Clean Up: After ensuring everything is correct, you can delete the old repository or remove the filtered files (if you don't want them anymore).

ALTERNATIVE METHOD: Clone and merge the entire repository and delete the files you do not need. Of course, the commits would have to be deleted alongside as well using rebase.
