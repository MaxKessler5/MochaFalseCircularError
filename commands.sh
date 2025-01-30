npm init -y
sed -i 's/"type": "commonjs"/"type": "module"/' package.json
echo "// Entry point for the application" > index.js
echo "import { cloneDeep } from \"lodash-es\";" >> index.js
sed -i 's/"test":.*/"test": "mocha"/' package.json
npm install mocha
mkdir test
echo "import \"../index.js\";" > test/test.js
npm test > npm_test_output.log

