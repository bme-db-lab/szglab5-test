Scenario: 1. Usertypes login via e-mail and password
Given The szglab5-backend with API
When I use "hallgat�" POST login request to "/auth/login" endpoint with "loginName1" and "password"
Then I GET a token
When I use "jav�t�" POST login request to "/auth/login" endpoint with "loginName2" and "password"
Then I GET a token
When I use "m�r�svezet�" POST login request to "/auth/login" endpoint with "loginName3" and "password"
Then I GET a token
When I use "laborfelel�s" POST login request to "/auth/login" endpoint with "loginName4" and "password"
Then I GET a token
When I use "adminisztr�tor" POST login request to "/auth/login" endpoint with "loginName5" and "password"
Then I GET a token

Scenario: 2. Invalid login via e-mail and password
Given The szglab5-backend with API
When I use "hallgat�" POST login request to "/auth/login" endpoint with "wrongUsername" and "rightpass"
Then I GET an error "403" "no user message" 
When I use "hallgat�" POST login request to "/auth/login" endpoint with "loginName" and "wrongpass"
Then I GET an error "403" "incorrect password"