#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=preact-javascript --title="Preact JavaScript" --profile=PreactJavaScript --outputDirectory=./apps/preact-javascript
mkdir -p ./apps/preact-javascript/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/preact-javascript/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/preact-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/preact-javascript

node unitejs/unitejs-cli/bin/unite configure --packageName=preact-typescript-commonjs --title="Preact TypeScript CommonJS" --profile=PreactTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/preact-typescript-commonjs
mkdir -p ./apps/preact-typescript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/preact-typescript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/preact-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/preact-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=preact-typescript-systemjs --title="Preact TypeScript SystemJS" --profile=PreactTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --unitTestRunner=Karma --unitTestEngine=ChromeHeadless --outputDirectory=./apps/preact-typescript-systemjs
mkdir -p ./apps/preact-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/preact-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/preact-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/preact-typescript-systemjs
