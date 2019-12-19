---
layout: post
title:  "How to delete local branches"
date:   2019-11-28 04:00:30 +0000
categories: jekyll update
---

1. go to the branch `master`

2. run the command `$ git branch | grep -v '^*' | xargs git branch -D`

    * 2.1 `git branch` - lists the local branches

    * 2.2 `grep -v '^*'` - filters out the branch starting with * (current branch, which was master)

    * 2.3 `xargs git branch -D` - passes the filtered branch names to the git command git branch -D