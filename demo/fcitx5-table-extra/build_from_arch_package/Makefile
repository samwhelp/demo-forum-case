default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make download'
	@echo
	@echo '	$$ make extract'
	@echo
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make fcitx5-install'
	@echo
	@echo '	$$ make fcitx5-config'
	@echo
	@echo '	$$ make use-fcitx5'
	@echo
.PHONY: help




prepare:
	./prepare.sh
.PHONY: prepare


download:
	./download.sh
.PHONY: download


extract:
	./extract.sh
.PHONY: extract


build:
	./build.sh
.PHONY: build


install:
	./install.sh
.PHONY: install


fcitx5-install:
	./fcitx5-install.sh
.PHONY: fcitx5-install


fcitx5-config:
	./fcitx5-config.sh
.PHONY: fcitx5-config


use-fcitx5:
	./use-fcitx5.sh
.PHONY: use-fcitx5


clean:
	./clean.sh
.PHONY: clean
