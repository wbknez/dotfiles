.POSIX:

.PHONY: clean-git
clean-git:
	@rm -frv $(CONFIG_DIR)/git

.PHONY: clean-fish
clean-fish:
	@rm -frv $(CONFIG_DIR)/fish

.PHONY: clean-nvim
clean-nvim:
	@rm -frv $(CONFIG_DIR)/nvim

.PHONY: clean-ssh
clean-ssh:
	@rm -frv $(CONFIG_DIR)/ssh

