all: deps
	@ansible-playbook mac.yml -i hosts ${ARGS}

deps:
	@sh -c "$(CURDIR)/scripts/deps.sh"

upgrade:
	@sh -c "$(CURDIR)/scripts/upgrade.sh"

.PHONY: all, deps, upgrade
