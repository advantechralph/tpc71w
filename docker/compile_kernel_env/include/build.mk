.PHONY: build
build: prepare $(builddir)/.dockerbuild

$(builddir)/.dockerbuild: 
	@docker build -t $(repo) .
	@touch $@

