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
	@echo '	$$ make uninstall'
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


install:
	@./install.sh
.PHONY: install


build:
	@./build.sh
.PHONY: build


uninstall:
	@./uninstall.sh
.PHONY: uninstall


clean:
	./clean.sh
.PHONY: clean

