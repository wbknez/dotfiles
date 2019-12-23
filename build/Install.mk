.POSIX:

NAME = 'Will Knez'
EMAIL = 'wbknez.devgmail.com'

.PHONY: install-fish
install-fish: directories-xdg
	@mkdir -pv -- $(HOME)/.config/fish
	@cp -pv -- fish/config.fish $(HOME)/.config/fish
	@cp -prv -- fish/conf.d $(HOME)/.config/fish
	@cp -prv -- fish/functions $(HOME)/.config/fish

.PHONY: install-git
install-git:
	@cp -pv -- git/gitignore.global $(HOME)
	@m4 -EQ \
		-DNAME=$(NAME) \
		-DEMAIL=$(EMAIL) -- \
		git/gitconfig.m4 > $(HOME)/.gitconfig && \
		echo "'git/gitconfig.m4' -> '${HOME}/.gitconfig'"

.PHONY: install-nvim
install-nvim: directories-xdg
	@mkdir -pv -- $(HOME)/.config/nvim
	@cp -pv -- nvim/init.vim $(HOME)/.config/nvim
	@cp -prv -- nvim/ftdetect $(HOME)/.config/nvim
	@cp -prv -- nvim/ftplugin $(HOME)/.config/nvim
	@cp -prv -- nvim/plugin $(HOME)/.config/nvim
	@cp -prv -- nvim/spell $(HOME)/.config/nvim

.PHONY: install-ssh
install-ssh:
	@mkdir -pv -- $(HOME)/.ssh
	@cp -pv -- ssh/config $(HOME)/.ssh/config
	@chmod -v -- 0700 $(HOME)/.ssh
	@chmod -v -- 0600 $(HOME)/.ssh/config

