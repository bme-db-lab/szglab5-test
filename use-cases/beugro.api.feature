Feature: Managing Questions, Languages and Tests via API

Scenario: 1. Create and delete Test using API
  Given The szglab5-backand with API
    And User with API key
   When I create a question "1. Kérdés?"
    And I create a question "2. Kérdés?"
   Then I add "language" "SQL"
    And I create a "Test-SQL-2Q" for "SQL" with "1. Kérdés?" and "2. Kérdés?"
   Then I check the list of "Questions"
    And I check the list of "Languages"
    And I check the list of "Tests"
   When I delete the "Test-SQL-2Q"
   Then I check the list of "Tests" if there is "Test-SQL-2Q"

Scenario: 2. Update question's name
  Given The szglab5-backand with API
    And User with API key
   When I check the list of "Questions"
    And I search if "1. Kérdés?" is not existing
   Then I create a question "1. Kérdés?"
    And I check the list of "Questions"
   When I update the name of "Questions" "1. Kérdés?" "1. Kérdés New?"
    And I search if "1. Kérdés?" is not existing
    And I search if "1. Kérdés New?" is existing

   

   4
   Given the backend API
   Scenario: Update a Test's relation
   As a teacher I create a Question.
   Then I add a  new language
   Then I create a Test without any Questions.
   Then I assign the Question to the Test.
   Then I check if the Question is assigned.



   5
   Given the backend API
   Scenario: Create a Question with missing element in the body
   As a teacher I create a Question.
   Then I check if the Question is in the list.
