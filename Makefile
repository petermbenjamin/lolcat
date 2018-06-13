VERSION := $(shell cat VERSION.txt)

.PHONY: clean
clean: ## cleans project
	rm -rf $(CURDIR)/dist

.PHONY: tag
tag: ## tags project
	git tag -a $(VERSION) -m "Release: $(VERSION)"
	git push origin $(VERSION)

.PHONY: release
release: ## releases project to github releases
	goreleaser --rm-dist
