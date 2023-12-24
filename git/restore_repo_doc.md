# Restoring Repositories Documentation

This documentation goes over restoring a repository to a certain state.

***

## ```git revert```

[Source](https://www.reddit.com/r/git/comments/n5lc01/in_laymans_terms_what_does_git_reset_do/)

A branch is a set of commits plus a "you are here" pointer.

Let's take a scenario where you have 4 commits. These 4 commits have hashes A, B, C, and D.

Then you decide that commit D was a mistake and...

Scenario 1: You don't want any of that code. You don't want to change it. You don't want to see it again. You wish you had never written it.

You say git reset --hard C

Now if you do git log -n 4 , you won't see D anymore. You'll see C, B, A, and whatever was the thing before A, if anything.

Scenario 2: You might want that code, but you need to mess around with it some more.

There are multiple things you could do here. I'd prefer to make whatever changes I want and then use git commit --amend later, or make the changes and commit, then use git rebase to make the history look like I want it to. But you could use git reset --soft C

This makes it so, again, D isn't in your log. But now your changes are still on your machine, staged to be committed. If you want that same behavior but don't want them staged, leave off the --soft and you'll get --mixed, which does just that.

***

## ```git reset```

*Details coming soon.*

***

## ```git fetch```

[Source](https://stackoverflow.com/questions/292357/what-is-the-difference-between-git-pull-and-git-fetch)

***

## ```git checkout```

[Source](https://stackoverflow.com/questions/69826597/what-does-git-checkout-do)

***

## Branch is out of order

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
