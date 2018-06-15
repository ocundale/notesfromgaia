DEPLOY_DIRECTORY=public
DEPLOY_BRANCH=gh-pages
DEV_BASE_URL=baseURL = "/"
PROD_BASE_URL=baseURL = "https://coull.github.io/documentation/"

all: submodules deploy clean

submodules:
	@ git submodule init
	@ git submodule update
build: use-prod-url
	@ hugo
use-prod-url:
	@ sed -i -e 's|$(DEV_BASE_URL)|$(PROD_BASE_URL)|' config.toml
use-dev-url:
	@ sed -i -e 's|$(PROD_BASE_URL)|$(DEV_BASE_URL)|' config.toml
worktree:
	@ git worktree add $(DEPLOY_DIRECTORY) $(DEPLOY_BRANCH)
deploy: worktree build
	@ cd $(DEPLOY_DIRECTORY) && git add . && git commit -m "Build output as of $(shell git log '--format=format:%H' master -1)"
	@ git push origin $(DEPLOY_BRANCH)
clean: use-dev-url
	@ rm -rf $(DEPLOY_DIRECTORY)
	@ git worktree prune
