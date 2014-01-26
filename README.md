# Project
This is a project to groom other projects for public consumption.

# Installation

1. Clone the repo
1. `make`
1. `cp project ~/bin` or wherever

# Usage

To run all tests:
```bash
$ project
```

To just run test for licensing:
```bash
$ project license
```

To setup a new project using another github repo as a template:
```bash
$ project init vagrant
```

This will clone the $USER/project-vagrant repo into the current directory.
