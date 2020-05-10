# Go-CI
## Make, go and bash
Built by rk0_d, 2020

# File contains
`bash`, `go` and `make`

# Purpose
Run make for Go

# Run
In workflow:

```
name: CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Go-CI setup
      uses: rkoCyrus/Go-CI@1.01
      # You can add argument if needed
    - name: Run make
      run: make
```

Makefile:

```
# Code may differ
GO := go
GOFLAG := 
GOFILE := foo.go
# Use this if you have module
GOEXTPACKAGE := 
.PHONY : all build clean

all : build clean

build : $(GOFILE)
	# Use this if you have module, remove if not
	$(GO) get $(GOEXTPACKAGE)
	$(GO) build $(GOFILE)

clean :
	rm -f $(GOFILE)
```

# Versioning
For example: <br>
`1.0` for gomake (Image of Go-CI) is represented go 1.14 (actually is 1.14.2).
When major update released (not included beta), the integer will be increased (`2.0` for go 1.15)<br><br>

First 2 digit of Go-CI's version is the same of gomake, but third and after digit number represented as hotfix minor update. I recommend use as latest as possible.
