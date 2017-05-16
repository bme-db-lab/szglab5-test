# Leírás és use-case-k

## Modell:
  * Test (teszt)
  * QuestionType (típus)
  * Question (kérdés)

## Kitételek:
  * Egy teszt, egy bizonyos laborra a beugró.
  * A teszt csak egy típusból rendelkezik kérdésekkel.
  * Egy teszt (n) darab kérdésből áll
  * Egy kérdés több tesztben is szerepelhet
  * Egy típusból több teszt is lehetséges

# Tests

* lekér egy tesztet                                                             
* lekéri az összes tesztet                                                      
* lekéri a testeket egy típushoz                                                
* új tesztet állít össze egy típushoz (n) kérdésből
* szerkeszti a tesztet
* teszthez hozzáfűz egy kérdést
* törli a tesztet meghagyja a kérdéseket
* törli a tesztet törli a kérdéseket

# QuestionTypes

 * lekér egy típust
 * lekéri az összes típust
 * lekéri az egy típushoz tartozó kérdéseket
 * lekéri az típushoz tartozó teszteket
 * új típust ad hozzá
 * típushoz új kérdést rendel
 * szerkeszti a típust
 * törli a típust és a hozzá rendelt kérdéseket
 * törli a típust és a hozzá rendelt teszteket
 * törli a típust és a hozzá rendelt teszteket és kérdéseket
 * törli a típust és meghagyja a teszteket és a kérdéseket

# Questions
 * lekérdez egy kérdést
 * lekérdezi az összes kérdést
 * lekérdezi a típus nélküli kérdéseket
 * lekérdezi a teszthez nem rendelt kérdéseket
 * hozzáad egy kérdést
 * szerkeszt egy kérdést
 * tötöl egy kérdést
