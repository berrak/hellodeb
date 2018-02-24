#!/usr/bin/make
# WARN: gmake syntax

REPONAME := hellodeb
VERSION := $(shell (cat VERSION))
PKG_NAME := $(REPONAME)-$(VERSION)
PKG:= golang-github-berrak-$(PKG_NAME).tar.gz

all: 
	@go build hello.go
help:
	@echo
	@echo "help ---------- show this help"
	@echo "test ---------- run tests"
	@echo "clean --------- remove built binary and all artifacts"
	@echo "dist ---------- create source tar archive (do: git commit first)"
	@echo
test:
	@go test -v ./...	
clean:
	@rm -rf *.tar.gz
	@rm -f hello
install: 
	@echo "Installation is just a dummy target"
dist:
	@git archive --output=$(PKG) --prefix=$(PKG_NAME)/ HEAD
