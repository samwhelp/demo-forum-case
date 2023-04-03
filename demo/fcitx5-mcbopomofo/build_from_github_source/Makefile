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
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make pkg-root'
	@echo
	@echo '	$$ make clean'
	@echo
.PHONY: help




prepare:
	@./prepare.sh
.PHONY: prepare


download:
	@./download.sh
.PHONY: download


build:
	@./build.sh
.PHONY: build


install:
	@./install.sh
.PHONY: install


uninstall:
	@./uninstall.sh
.PHONY: uninstall


pkg-root:
	@./pkg-root.sh
.PHONY: pkg-root


clean:
	@./clean.sh
.PHONY: clean

