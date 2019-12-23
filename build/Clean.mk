.POSIX:

.PHONY: clean-git
clean-git:
	@rm -fv $(HOME)/.gitconfig
	@rm -fv $(HOME)/.gitignore.global

.PHONY: clean-fish
clean-fish:
	@rm -frv $(HOME)/.config/fish

.PHONY: clean-nvim
clean-nvim:
	@rm -frv $(HOME)/.config/nvim

.PHONY: clean-ssh
clean-ssh:
	@rm -frv $(HOME)/.ssh

