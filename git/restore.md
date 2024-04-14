# Restoring Repositories Documentation

This documentation goes over restoring a repository to a certain state.

***

## ```git revert```

[Article](https://stackoverflow.com/questions/4114095/how-do-i-revert-a-git-repository-to-a-previous-commit)

[Docs](https://git-scm.com/docs/git-reset)

```
git revert <commit_hash> ... <other-commit_hashes>
```

***

## ```git reset```

https://git-scm.com/docs/git-reset

[Source](https://www.reddit.com/r/git/comments/n5lc01/in_laymans_terms_what_does_git_reset_do/)

```
git stash
git reset --hard HEAD
git clean -fd, git checkout <other-branch>
git branch -d <feature-branch>
git push origin --delete feature-branch
git push origin master --force (if previous commands were applied on master branch)
```

Optional command to set main branch to current commit: ```git branch -f main HEAD```.

***

## ```git fetch```

[Source](https://stackoverflow.com/questions/292357/what-is-the-difference-between-git-pull-and-git-fetch)

***

## ```git checkout```

If you simply want to inspect the state of a previous commit without altering your current branch, you can use ```git checkout```.

[Source](https://stackoverflow.com/questions/69826597/what-does-git-checkout-do)

***

## A local branch is out of order

The current branch is either behind or ahead.

[Behind](https://stackoverflow.com/questions/34118404/what-i-can-do-to-resolve-1-commit-behind-master)

```
git checkout master (you are switching your branch to master)
git pull 
git checkout yourBranch (switch back to your branch)
git merge master
```

[Ahead](https://github.com/orgs/community/discussions/53389)

```
git fetch
git checkout
git push --force
```

***

## Change the name of HEAD branch

```
git branch -m <old-branch> <new-branch>
git fetch origin
git branch -u origin/<new-branch> <new-branch>
git remote set-head origin -a
```
