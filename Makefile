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
	@echo "clean --------- remove built binary and all artifacts"
	@echo "install ------- install binary to /usr/local/bin"
	@echo "dist ---------- create source tar archive (do: git commit first)"
	@echo
test:
	@go test -v ./...	
clean:
	@rm -fr bin
	@rm -rf *.tar.gz
install: all
	@cp bin/hello /usr/local/bin
dist:
	@git archive --output=$(PKG) --prefix=$(PKG_NAME)/ HEAD
