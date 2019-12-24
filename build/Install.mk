.POSIX:

NAME = 'Will Knez'
EMAIL = 'wbknez.devgmail.com'

.PHONY: install-fish
install-fish: directories-xdg
	@mkdir -pv -- $(CONFIG_DIR)/fish
	@cp -pv -- fish/config.fish $(CONFIG_DIR)/fish
	@cp -prv -- fish/conf.d $(CONFIG_DIR)/fish
	@cp -prv -- fish/functions $(CONFIG_DIR)/fish

.PHONY: install-git
install-git:
	@cp -pv -- git/gitignore.global $(HOME)/.gitignore.global
	@m4 -EQ \
		-DNAME=$(NAME) \
		-DEMAIL=$(EMAIL) -- \
		git/gitconfig.m4 > $(HOME)/.gitconfig && \
		echo "'git/gitconfig.m4' -> '$(HOME)/.gitconfig'"

.PHONY: install-nvim
install-nvim: directories-xdg
	@mkdir -pv -- $(CONFIG_DIR)/nvim
	@cp -pv -- nvim/init.vim $(CONFIG_DIR)/nvim
	@cp -prv -- nvim/ftdetect $(CONFIG_DIR)/nvim
	@cp -prv -- nvim/ftplugin $(CONFIG_DIR)/nvim
	@cp -prv -- nvim/plugin $(CONFIG_DIR)/nvim
	@cp -prv -- nvim/spell $(CONFIG_DIR)/nvim

.PHONY: install-ssh
install-ssh:
	@mkdir -pv -- $(HOME)/.ssh
	@cp -pv -- ssh $(HOME)/.ssh
	@chmod -v -- 0700 $(HOME)/.ssh
	@chmod -v -- 0600 $(HOME)/.ssh

