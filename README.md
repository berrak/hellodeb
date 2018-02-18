[![Build Status](https://travis-ci.org/berrak/hellodeb.svg?branch=master)]

# hellodeb

## Purpose

This project demonstrates how to make a Debian package from a basic application (hello).
The hello-application includes an internal usage 'library' below 'pkg/app' 
but use no other vendor dependencies which complicates packages creation.

## Linux Install

First, install [Go](https://golang.org), and then update `GOPATH`, `GOBIN` and `PATH` like so:

```bash
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:/usr/local/go/bin:$PATH
```
Next download the project and build the binary file.

```bash
## download source
$ go get -u github.com/berrak/hellodeb/cmd/hello
## create the binary
$ make
```

## Usage

### Print Hello world in reverse
```bash
$ bin/hello
dlrow olleH
```
A make file provides following help:

```bash
$ make help
help ---------- show this help
test ---------- run tests
clean --------- remove built binary and all artifacts
dist ---------- creates source tar archive (do: git commit first)
```

## License
This project is under the Apache License. See the LICENSE file for the full license text.
