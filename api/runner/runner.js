const newman = require('newman');
const testsFolder = '../tests/';
const fs = require('fs');
const testFiles = [];
const async = require('async');

fs.readdirSync(testsFolder).forEach(file => {
    if(file.includes('api.postman-collection')){
        testFiles.push(file);
    }
})
 
async.mapSeries(testFiles,
  // item iterator function
  (testFile, callback) => {
    console.log('Testing now: ' + testFile);
    newman.run({
      collection:   testsFolder+testFile,
      environment:  testsFolder+'environment.json',
      reporters:        ['cli','html'],
      reporter: { html: { export : '../output/'+testFile+'.html'}}
    }, (err, result) => {
      if (err) {
        return callback(err);
      }
      callback(null, result);
    });
  },
  // callback function, when all iterate function finished (or error happened)
  (err, results) => {
    if (err) {
      console.log('Something went wrong while running tests', err);
      return;
    }
    console.log('reports');
    console.log(results);
  });