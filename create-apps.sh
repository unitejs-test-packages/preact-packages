#!/bin/bash
set -e

node unitejs/cli/bin/unite configure --packageName=preact-javascript --title="Preact JavaScript" --profile=PreactJavaScript --outputDirectory=./apps/preact-javascript
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/preact-javascript

node unitejs/cli/bin/unite configure --packageName=preact-typescript-amd --title="Preact TypeScript CommonJS" --profile=PreactTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/preact-typescript-commonjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/preact-typescript-commonjs

node unitejs/cli/bin/unite configure --packageName=preact-typescript-systemjs --title="Preact TypeScript SystemJS" --profile=PreactTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --unitTestRunner=Karma --unitTestEngine=ChromeHeadless --outputDirectory=./apps/preact-typescript-systemjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/preact-typescript-systemjs
