## Leírás

Ez a submodule tesztekkel teszi teljessé az szglab5-main projektet.
A use-cases mappában találhatóak az egyes funkciókhoz tartozó tesztelendő cselekvések.
## Szükséges technológiák a futtatáshoz

* Az API tesztek futtatásához newman telepítése
```npm install -g newman```

## Funkcionális tesztek futtatásához lépések:

* install Ruby 2.2. http://rubyinstaller.org/downloads/

* a gemeket: ```gem install selenium-webdriver cucumber capybara rspec```

* és a devkitet http://rubyinstaller.org/add-ons/devkit/
* ahová a devkitet kicsomagoltad ``` ruby dk.rb init ``` ``` ruby dk.rb install ``` 

* chromedriver/iedriver/edgedriver letöltése és path-ba rakása

* ajánlott IDE https://www.jetbrains.com/ruby/download

* futtatás
``` cucumber features/* --format html > features.html ```

## Futtatáshoz szükséges parancsok

### Newman futtatása .json megadásával és html report készítésével
* Fontos, hogy minden egyes teszt lefuttatása előtt ki kell adni az szglab5-backend mappájában, hogy:

```npm run cli:dev seed empty.seed.json```
* Utána ezzel a paranccsal tudunk generálni html reportot az adott tesztből.

```newman run <path_to_test>/{*.json} --reporters html```
* Amennyiben csak console-ban szeretnénk az eredményt látni, akkor:

```newman run <path_to_test>/{*.json} --reporters cli```
