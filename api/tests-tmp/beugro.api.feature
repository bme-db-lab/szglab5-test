Feature: Managing Questions, Languages and Tests via API

Scenario: 1. Create and delete Test using API
  Given The szglab5-backend with API
    And User with API key
   When I create a question "1. Kérdés?"
    And I create a question "2. Kérdés?"
   Then I add "language" "SQL"
    And I create a "Test-SQL-2Q" for "SQL" with "1. Kérdés?"
    And I create a "Test-SQL-2Q" for "SQL" with "2. Kérdés?"
   Then I check the list of "Questions"
    And I check the list of "Languages"
    And I check the list of "Tests"
   When I delete the "Test-SQL-2Q"
   Then I check the list of "Tests" if there is "Test-SQL-2Q"

Scenario: 2. Update question's name
  Given The szglab5-backend with API
    And User with API key
   When I check the list of "Questions"
    And I search if "1. Kérdés?" is not existing
   Then I create a question "1. Kérdés?"
    And I check the list of "Questions"
   When I update the name of "Questions" "1. Kérdés?" "1. Kérdés New?"
    And I search if "1. Kérdés?" is not existing
    And I search if "1. Kérdés New?" is existing

Scenario: 3. Update Test's relation
  Given The szglab5-backend with API
    And User with API key
   When I create a "question"
    And I create a "language"
   Then I create a "test" without question
   When I assign the created question to the Test
   Then I check if the "question" is assigned to "test"

Scenario: 4. Create a Question with missing element in the body
  Given The szglab5-backend with API
    And User with API key
   When I create a "question" with bad body
   Then I check if the "question" is in the list.
