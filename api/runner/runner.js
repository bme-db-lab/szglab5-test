var newman = require('newman');
var testsFolder = '../tests/';
var fs = require('fs');
var testFiles = [];

fs.readdirSync(testsFolder).forEach(file => {
	if(file.includes('api.postman-collection')){
		testFiles.push(file);
	}
})

testFiles.forEach(function(test){
	console.log('Testing now: ' + test);
newman.run({
    collection: 	testsFolder+test,
	environment: 	testsFolder+'environment.json',
    reporters: 		['cli','html'],
	reporter: { html: { export : '../output/'+test+'.html'}}
}, process.exit);
});

