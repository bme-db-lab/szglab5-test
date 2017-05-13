## Funkcionális tesztek futtatásához lépések:

* install Ruby 2.2. http://rubyinstaller.org/downloads/

* a gemeket: ```gem install selenium-webdriver cucumber capybara rspec```

* és a devkitet http://rubyinstaller.org/add-ons/devkit/
* ahová a devkitet kicsomagoltad ``` ruby dk.rb init ``` ``` ruby dk.rb install ``` 

* chromedriver/iedriver/edgedriver letöltése és path-ba rakása

* ajánlott IDE https://www.jetbrains.com/ruby/download

* futtatás
``` cucumber features/* --format html > features.html ```
