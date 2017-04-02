#!/bin/bash
rm -rf newman
mkdir -p reports 
cd ../szglab5-backend/
npm run start:dev &> /dev/null
cd ../szglab5-test/
cd 
for file in tests/api/beugro/*; do
  cd ../szglab5-backend/
  npm run cli:dev seed empty.seed.json &> /dev/null
  cd ../szglab5-test/
  newman run ${file} --reporters html --reporters cli --reporter-html-export reports/"`basename ${file}`".html
done