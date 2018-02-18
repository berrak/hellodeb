#!/usr/bin/make
# WARN: gmake syntax

NAME := hello
VERSION := $(shell (cat VERSION))
PKG_NAME := $(NAME)-$(VERSION)
PKG:= $(PKG_NAME).tar.gz

all: 
	@go build cmd/hello.go
	@test -d bin || mkdir bin
	@test -f hello && mv hello bin
help:
	@echo
	@echo "help ---------- show this help"
	@echo "test ---------- run tests"
	@echo "clean --------- remove build binary and all artifacts"
	@echo "dist ---------- creates source tar archive (git commit first)"
	@echo
test:
	@go test -v ./...	
clean:
	@rm -fr bin
	@rm -rf *.tar.gz
dist:
	@git archive --output=$(PKG) --prefix=$(PKG_NAME)/ HEAD
