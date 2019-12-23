.POSIX:

NAME = 'Will Knez'
EMAIL = 'wbknez.devgmail.com'

.PHONY: install-fish
install-fish: install-xdg
	@mkdir -pv -- $(HOME)/.config/fish
	@cp -pv -- fish/config.fish $(HOME)/.config/fish
	@cp -prv -- fish/conf.d $(HOME)/.config/fish
	@cp -prv -- fish/functions $(HOME)/.config/fish

.PHONY: install-git
install-git:
	@cp -pv -- git/gitignore.global $(HOME)/.gitignore.global
	@m4 -EQ \
		-DNAME=$(NAME) \
		-DEMAIL=$(EMAIL) \
		git/gitconfig.m4 > $(HOME)/.gitconfig && \
		echo "'git/gitconfig.m4' -> '${HOME}/.gitconfig'"

.PHONY: install-ssh
install-ssh:
	@mkdir -pv -- $(HOME)/.ssh
	@cp -pv -- ssh/config $(HOME)/.ssh/config
	@chmod -v -- 0700 $(HOME)/.ssh
	@chmod -v -- 0600 $(HOME)/.ssh/config

.PHONY: install-xdg
install-xdg:
	@mkdir -pv -- $(HOME)/.cache
	@mkdir -pv -- $(HOME)/.config
	@mkdir -pv -- $(HOME)/.local/share