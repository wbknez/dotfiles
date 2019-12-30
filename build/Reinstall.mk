.POSIX:

.PHONY: reinstall-conda
reinstall-conda: clean-conda install-conda

.PHONY: reinstall-fish
reinstall-fish: clean-fish install-fish

.PHONY: reinstall-git
reinstall-git: clean-git install-git

.PHONY: reinstall-nvim
reinstall-nvim: clean-nvim install-nvim

.PHONY: reinstall-ssh
reinstall-ssh: clean-ssh install-ssh

.PHONY: reinstall-tmux
reinstall-tmux: clean-tmux install-tmux

