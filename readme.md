## Le�r�s

Ez a submodule tesztekkel teszi teljess� az szglab5-main projektet

## Sz�ks�ges technol�gi�k a futtat�shoz

* Az API tesztek futtat�s�hoz newman telep�t�se 
npm install -g newman

* Funkcion�lis tesztek futtat�s�hoz l�p�sek:
..* Egyel�re nem rendelkez�nk funkcion�lis tesztekkel

## Futtat�shoz sz�ks�ges parancsok

* Newman futtat�sa .json megad�s�val �s html report k�sz�t�s�vel
newman run api_tests/{*.json} --reporters html

