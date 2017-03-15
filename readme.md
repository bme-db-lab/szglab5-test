## Leírás

Ez a submodule tesztekkel teszi teljessé az szglab5-main projektet

## Szükséges technológiák a futtatáshoz

* Az API tesztek futtatásához newman telepítése 
```npm install -g newman```

* Funkcionális tesztek futtatásához lépések:
..* Egyelőre nem rendelkezünk funkcionális tesztekkel

## Futtatáshoz szükséges parancsok

### Newman futtatása .json megadásával és html report készítésével
* Fontos, hogy minden egyes teszt lefuttatása előtt ki kell adni az szglab5-backend mappájában, hogy:
```npm run cli:dev seed empty.seed.json```
* Utána ezzel a paranccsal tudunk generálni html reportot az adott tesztből.
```newman run <path_to_test>/{*.json} --reporters html```
* Amennyiben csak console-ban szeretnénk az eredményt látni, akkor:
```newman run <path_to_test>/{*.json} --reporters cli```

