.POSIX:

CACHE_DIR = $(HOME)/.cache
CONFIG_DIR = $(HOME)/.config
DATA_DIR = $(HOME)/.local/share
RUNTIME_DIR = $(XDG_RUNTIME_DIR)

.PHONY: directories-home
directories-home:
	@mkdir -pv -- $(HOME)/Apps
	@mkdir -pv -- $(HOME)/bin
	@mkdir -pv -- $(HOME)/Build
	@mkdir -pv -- $(HOME)/Documents
	@mkdir -pv -- $(HOME)/Downloads
	@mkdir -pv -- $(HOME)/Projects

.PHONY: directories-xdg
directories-xdg:
	@mkdir -pv -- $(CACHE_DIR)
	@mkdir -pv -- $(CONFIG_DIR)
	@mkdir -pv -- $(DATA_DIR)
