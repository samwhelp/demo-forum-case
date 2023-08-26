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
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make uninstall'
	@echo
	@echo '	$$ make clean'
	@echo
	@echo '	$$ make deb-info'
	@echo
	@echo '	$$ make deb-list'
	@echo
	@echo '	$$ make installed-info'
	@echo
	@echo '	$$ make installed-list'
	@echo
.PHONY: help




prepare:
	@./prepare.sh
.PHONY: prepare


build:
	@./build.sh
.PHONY: build


install:
	@./install.sh
.PHONY: install


uninstall:
	@./uninstall.sh
.PHONY: uninstall


clean:
	./clean.sh
.PHONY: clean


deb-info:
	./deb-info.sh
.PHONY: deb-info


deb-list:
	./deb-list.sh
.PHONY: deb-list


installed-info:
	./installed-info.sh
.PHONY: deb-info


installed-list:
	./installed-list.sh
.PHONY: installed-list
