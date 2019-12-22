.POSIX:

NAME = 'Will Knez'
EMAIL = 'wbknez.dev@gmail.com'

.PHONY: install-fish
install-fish: install-xdg
	mkdir -p $(HOME)/.config/fish
	cp -p -- fish/config.fish $(HOME)/.config/fish
	cp -pr -- fish/conf.d $(HOME)/.config/fish
	cp -pr -- fish/functions $(HOME)/.config/fish

.PHONY: install-git
install-git:
	cp -p -- git/gitignore.global $(HOME)/.gitignore.global
	m4 -EQ \
		-DNAME=$(NAME) \
		-DEMAIL=$(EMAIL) \
		git/gitconfig.m4 > $(HOME)/.gitconfig

.PHONY: install-ssh
install-ssh:
	mkdir -p $(HOME)/.ssh
	cp -p -- ssh/config $(HOME)/.ssh/config
	chmod 0700 $(HOME)/.ssh
	chmod 0600 $(HOME)/.ssh/config

.PHONY: install-xdg
install-xdg:
	mkdir -p $(HOME)/.cache
	mkdir -p $(HOME)/.config
	mkdir -p $(HOME)/.local/share
