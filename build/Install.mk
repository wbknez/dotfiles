.POSIX:

NAME = 'Will Knez'
EMAIL = 'wbknez.devgmail.com'

.PHONY: install-conda
install-conda: directories-home
	$(eval CONDA_WORK = $(shell mktemp -d))
	@mkdir -pv -- $(CONFIG_DIR)/conda
	@wget -O "$(CONDA_WORK)/miniconda.sh" -- \
		https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
	@bash -- "$(CONDA_WORK)/miniconda.sh" -b -p "$(HOME)/Apps/Conda"
	@cp -pv -- conda/condarc $(CONFIG_DIR)/conda
	@rm -frv -- $(CONDA_WORK)

.PHONY: install-fish
install-fish: directories-xdg
	@mkdir -pv -- $(CONFIG_DIR)/fish
	@cp -pv -- fish/config.fish $(CONFIG_DIR)/fish
	@cp -prv -- fish/conf.d $(CONFIG_DIR)/fish
	@cp -prv -- fish/functions $(CONFIG_DIR)/fish

.PHONY: install-git
install-git:
	@mkdir -pv -- $(CONFIG_DIR)/git
	@cp -pv -- git/gitignore.global $(CONFIG_DIR)/git/gitignore.global
	@m4 -EQ \
		-DNAME=$(NAME) \
		-DEMAIL=$(EMAIL) \
		-DGIT_CONFIG_DIR=$(CONFIG_DIR)/git -- \
		git/config.m4 > $(CONFIG_DIR)/git/config && \
		echo "'git/config.m4' -> '$(CONFIG_DIR)/git/config'"

.PHONY: install-tmux
install-tmux: directories-xdg
	@mkdir -pv -- $(CONFIG_DIR)/tmux
	@mkdir -pv -- $(RUNTIME_DIR)/tmux
	@cp -pv -- tmux/tmux.conf $(CONFIG_DIR)/tmux/tmux.conf

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

