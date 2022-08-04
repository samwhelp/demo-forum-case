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
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo
.PHONY: help




install: script-install service-install
.PHONY: install


script-install:
	sudo install -Dm755 demo-service-start.sh /usr/local/bin/demo-service-start.sh
.PHONY: script-install


service-install:
	sudo install -Dm644 demo-service-start.service /usr/lib/systemd/system/demo-service-start.service
.PHONY: service-install




remove: service-remove script-remove
.PHONY: remove


script-remove:
	sudo rm -f /usr/local/bin/demo-service-start.sh
.PHONY: script-remove


service-remove:
	sudo sudo systemctl disable demo-service-start
	sudo rm -f /usr/lib/systemd/system/demo-service-start.service
.PHONY: service-remove
