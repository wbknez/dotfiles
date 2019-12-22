define(NAME)dnl
define(EMAIL)dnl
[user]
	name = NAME
	email = EMAIL
[core]
	editor = nvim 
	autocrlf = false
	safecrlf = true
	excludesfile = ~/.gitignore.global
[include]
	path = ~/.gitconfig.local
