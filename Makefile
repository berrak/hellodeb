#!/usr/bin/make
# WARN: gmake syntax

REPONAME := hellodeb
VERSION := $(shell (cat VERSION))
PKG_NAME := $(REPONAME)-$(VERSION)
PKG:= $(PKG_NAME).tar.gz

all: 
	@go build cmd/hello.go
help:
	@echo
	@echo "help ---------- show this help"
	@echo "build --------- build a binary"
	@echo "test ---------- run tests"
	@echo "clean --------- remove built binary and all artifacts"
	@echo "dist ---------- create source tar archive (do: git commit first)"
	@echo
build: all
	@echo "Built binary..."
test:
	@go test -v ./...	
clean:
	@rm -rf *.tar.gz
	@rm -f hello
install: 
	@echo "No install here"
dist:
	@git archive --output=$(PKG) --prefix=$(PKG_NAME)/ HEAD
