## install: Install docsify and gitbook-summary
.PHONY: install
install:
	./scripts/install.docsify.sh
	./scripts/install.gitbook-summary.sh

## gen: Gen _sidebar.md file
.PHONY: gen
gen:
	gitbook-summary

## up: Docker compose up server
.PHONY: up
up: gen
	docker-compose  -f docker-compose.yaml up  -d

## push: Commit and push to remote repo
.PHONY: push
.IGNORE: push
push: gen
	git add .
	git commit -m "update: Auto commit And push"
	git push origin master

## update: Use update_remote.sh to update remote repo
.PHONY: update
update: push
	./update_remote.sh

## serve: Docsify serve
.PHONY: serve
serve: gen
	docsify serve .

## help: Show this help info.
.PHONY: help
help: Makefile
	@printf "\nUsage: make <TARGETS> <OPTIONS> ...\n\nTargets:\n"
	@sed -n 's/^##//p' $< | column -t -s ':' | sed -e 's/^/ /'
	@echo "$$USAGE_OPTIONS"
