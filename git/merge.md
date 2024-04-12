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

### Merging feature-branch to a master

```
git checkout master
git pull origin master
git merge --squash feature-branch
git commit -m "Merge feature-branch into master"
git push origin master
git branch -d feature-branch
git push origin --delete feature-branch
```

### Merging master to update a feature-branch

```
git checkout master
git pull master
git checkout <feature-branch>
git merge master
```
