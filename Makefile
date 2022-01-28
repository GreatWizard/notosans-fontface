GREEN:=$(shell tput -Txterm setaf 2)
YELLOW:=$(shell tput -Txterm setaf 3)
RESET:=$(shell tput -Txterm sgr0)
TARGET_MAX_CHAR_NUM=30

## Show help
help:
	@echo ''
	@echo 'Usage:'
	@echo '  ${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
	@echo ''
	@echo 'Targets:'
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = $$1; sub(/:$$/, "", helpCommand); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "  ${YELLOW}%-$(TARGET_MAX_CHAR_NUM)s${RESET} ${GREEN}%s${RESET}\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)

## Build the distribution files
build:
	./node_modules/.bin/node-sass ./scss/notosans-fontface-allweight.scss --output-style expanded > ./css/notosans-fontface-allweight.css
	./node_modules/.bin/node-sass ./scss/notosans-fontface.scss --output-style expanded > ./css/notosans-fontface.css
	./node_modules/.bin/node-sass ./scss/notosans-fontface-modern-allweight.scss --output-style expanded > ./css/notosans-fontface-modern-allweight.css
	./node_modules/.bin/node-sass ./scss/notosans-fontface-modern.scss --output-style expanded > ./css/notosans-fontface-modern.css
	./node_modules/.bin/node-sass ./scss/notosans-fontface-allweight.scss --output-style compressed > ./css/notosans-fontface-allweight.min.css
	./node_modules/.bin/node-sass ./scss/notosans-fontface.scss --output-style compressed > ./css/notosans-fontface.min.css
	./node_modules/.bin/node-sass ./scss/notosans-fontface-modern-allweight.scss --output-style compressed > ./css/notosans-fontface-modern-allweight.min.css
	./node_modules/.bin/node-sass ./scss/notosans-fontface-modern.scss --output-style compressed > ./css/notosans-fontface-modern.min.css

## Convert ttf files into woff2, woff, eot and svg
convert:
	./convert.sh

## Install yarn packages
install:
	yarn install --non-interactive --prefer-offline

## Run tests
test: test-less test-scss test-styl

test-less:
	mkdir -p tmp/less

	./node_modules/.bin/lessc ./less/notosans-fontface-allweight.less > ./tmp/less/notosans-fontface-allweight.css
	diff tests/outputs/less/notosans-fontface-allweight.css tmp/less/notosans-fontface-allweight.css

	./node_modules/.bin/lessc ./less/notosans-fontface.less > ./tmp/less/notosans-fontface.css
	diff tests/outputs/less/notosans-fontface.css tmp/less/notosans-fontface.css

	./node_modules/.bin/lessc ./less/notosans-fontface-modern-allweight.less > ./tmp/less/notosans-fontface-modern-allweight.css
	diff tests/outputs/less/notosans-fontface-modern-allweight.css tmp/less/notosans-fontface-modern-allweight.css

	./node_modules/.bin/lessc ./less/notosans-fontface-modern.less > ./tmp/less/notosans-fontface-modern.css
	diff tests/outputs/less/notosans-fontface-modern.css tmp/less/notosans-fontface-modern.css

test-scss:
	mkdir -p tmp/scss

	./node_modules/.bin/node-sass ./scss/notosans-fontface-allweight.scss --output-style expanded > ./tmp/scss/notosans-fontface-allweight.css
	diff tests/outputs/scss/notosans-fontface-allweight.css tmp/scss/notosans-fontface-allweight.css

	./node_modules/.bin/node-sass ./scss/notosans-fontface.scss --output-style expanded > ./tmp/scss/notosans-fontface.css
	diff tests/outputs/scss/notosans-fontface.css tmp/scss/notosans-fontface.css

	./node_modules/.bin/node-sass ./scss/notosans-fontface-modern-allweight.scss --output-style expanded > ./tmp/scss/notosans-fontface-modern-allweight.css
	diff tests/outputs/scss/notosans-fontface-modern-allweight.css tmp/scss/notosans-fontface-modern-allweight.css

	./node_modules/.bin/node-sass ./scss/notosans-fontface-modern.scss --output-style expanded > ./tmp/scss/notosans-fontface-modern.css
	diff tests/outputs/scss/notosans-fontface-modern.css tmp/scss/notosans-fontface-modern.css

test-styl:
	mkdir -p tmp/styl

	./node_modules/.bin/stylus ./styl/notosans-fontface-allweight.styl -o ./tmp/styl/notosans-fontface-allweight.css
	diff tests/outputs/styl/notosans-fontface-allweight.css tmp/styl/notosans-fontface-allweight.css

	./node_modules/.bin/stylus ./styl/notosans-fontface.styl -o ./tmp/styl/notosans-fontface.css
	diff tests/outputs/styl/notosans-fontface.css tmp/styl/notosans-fontface.css

	./node_modules/.bin/stylus ./styl/notosans-fontface-modern-allweight.styl -o ./tmp/styl/notosans-fontface-modern-allweight.css
	diff tests/outputs/styl/notosans-fontface-modern-allweight.css tmp/styl/notosans-fontface-modern-allweight.css

	./node_modules/.bin/stylus ./styl/notosans-fontface-modern.styl -o ./tmp/styl/notosans-fontface-modern.css
	diff tests/outputs/styl/notosans-fontface-modern.css tmp/styl/notosans-fontface-modern.css
