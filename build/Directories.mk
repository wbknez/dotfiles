.POSIX:

.PHONY: directories-home
directories-home:
	@mkdir -pv -- $(HOME)/Apps
	@mkdir -pv -- $(HOME)/Build
	@mkdir -pv -- $(HOME)/Projects

.PHONY: directories-xdg
directories-xdg:
	@mkdir -pv -- $(HOME)/.cache
	@mkdir -pv -- $(HOME)/.config
	@mkdir -pv -- $(HOME)/.local/share
