.POSIX:


.PHONY: software-base
software-base:
	dnf install fish			\
				fzf 			\
				nvim 			\
				ripgrep			\
				util-linux-user

