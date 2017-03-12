## Leírás

Ez a submodule tesztekkel teszi teljessé az szglab5-main projektet

## Szükséges technológiák a futtatáshoz

* Az API tesztek futtatásához newman telepítése 
npm install -g newman

* Funkcionális tesztek futtatásához lépések:
..* Egyelöre nem rendelkezünk funkcionális tesztekkel

## Futtatáshoz szükséges parancsok

* Newman futtatása .json megadásával és html report készítésével
newman run api_tests/{*.json} --reporters html

