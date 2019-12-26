define(NAME)dnl
define(EMAIL)dnl
define(GIT_CONFIG_DIR)dnl
[alias]
	addremove = !git add . && git add -u

	branches = branch -a

	ci = commit
	cm = commit -m
	co = checkout --recurse-submodules

	d = diff
	di = diff --cached

	fo = fetch origin
	fu = fetch upstream
	
	po = push origin
	pu = push upstream

	remotes = remote -v

	shelve = stash save --include-untracked

	tags = tag -l

	unshelve = stash pop
	unstage = reset HEAD

[color]
	branch = auto
	diff = auto
	interactive = auto
	status = auto

[core]
	editor = nvim 
	autocrlf = false
	safecrlf = true
	excludesfile = GIT_CONFIG_DIR/gitignore.global

[include]
	path = GIT_CONFIG_DIR/config.local

[push]
	default = current

[user]
	name = NAME
	email = EMAIL
