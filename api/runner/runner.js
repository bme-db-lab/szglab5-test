const newman = require('newman');
const testsFolder = '../tests/';
const fs = require('fs');
const testFiles = [];
const { promisify } = require('util');

fs.readdirSync(testsFolder).forEach(file => {
    if(file.includes('api.postman-collection')){
        testFiles.push(file);
    }
});

async function main () {
  try {
    const results = [];
    for (const testFile of testFiles) {
      const result = await promisify(newman.run)({
        collection:   testsFolder+testFile,
        environment:  testsFolder+'environment.json',
        reporters:        ['cli','html','junit'],
        reporter: { html: { export : '../output/'+testFile+'.html'}, junit: { export : '../junit/'+testFile+'.xml'}}
      });
      results.push(result);
    }
    console.log(results);
  } catch (err) {
    console.log('Something went wrong while running tests', err);
  }
}
main();


