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
