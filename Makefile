#!/usr/bin/make
# WARN: gmake syntax

REPONAME := hellodeb
VERSION := $(shell (cat VERSION))
PKG_NAME := $(REPONAME)-$(VERSION)
PKG:= $(PKG_NAME).tar.gz

help:
	@echo
	@echo "help ---------- show this help"
	@echo "bin ----------- build a binary"
	@echo "test ---------- run tests"
	@echo "clean --------- remove built binary and all artifacts"
	@echo "dist ---------- create source tar archive (do: git commit first)"
	@echo
bin: 
	@go build cmd/hello.go
	@test -d bin || mkdir bin
	@test -f hello && mv hello bin
test:
	@go test -v ./...	
clean:
	@rm -fr bin
	@rm -rf *.tar.gz
install: 
	@echo "No install here"
dist:
	@git archive --output=$(PKG) --prefix=$(PKG_NAME)/ HEAD
