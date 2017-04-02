# madoos-node-npm-publisher

Generates the changelog, publishes in npm the new version of the package and make a pull request to the branch develop and master.

## Getting Started

To build:
    
    docker build -t madoos/node-npm-publisher:<TAG> .

Pull:

    docker pull madoos/node-npm-publisher:<TAG> 


## Configuration

### Enviroment vars

* `GITHUB_USER`
* `GITHUB_REPO`
* `GITHUB_BRANCH`
* `GITHUB_TOKEN`
* `NPM_TOKEN`
* `PACKAGE_VERSION`
* `CI_EMAIL`


## Run

```console
#!/usr/bin/env bash

docker run --rm\
  -e GITHUB_USER=CHANGE \
  -e GITHUB_REPO=CHANGE \
  -e GITHUB_BRANCH=CHANGE \
  -e GITHUB_TOKEN=CHANGE \
  -e NPM_TOKEN=CHANGE \
  -e PACKAGE_VERSION=CHANGE \
  -e CI_EMAIL=CHANGE \
  -e FORCE_COLOR=1 \
   madoos/node-npm-publisher:latest

```


