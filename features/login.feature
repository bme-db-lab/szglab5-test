Feature: As a registered user I want to login

  Scenario: Check the login form elements
    When I navigate to the login page on "dev" environment
    Then I check the login form elements

  Scenario Outline: Check the login by roles
    When I navigate to the login page on "dev" environment
    When I login with username <uname> and pass <pass>
    Then I check if the <role> page appears
    Then I logout

    Examples:
      | role          | uname     | pass  |
      | admin         | admin     | admin |
      | demonstrator  | admin     | admin |
      | corrector     | admin     | admin |
      | student       | admin     | admin |

  Scenario Outline: Check the login with wrong parameters
    When I navigate to the login page on "dev" environment
    When I login with username <uname> and pass <pass>
    Then I check the: <wrong> <error_message>

    Examples:
      | wrong             | uname     | pass   | error_message                                 |
      | wrong username    | nouser    | admin  | User with login name "nouser" does not exist! |
      | wrong password    | admin     | nopass | Incorrect password for "admin"                |
      | empty username    |           | admin  | Üres felhasználó/jelszó mező.                 |
      | empty password    | admin     |        | Üres felhasználó/jelszó mező.                 |
      | empty credentials |           |        | Üres felhasználó/jelszó mező.                 |

  Scenario: Check the login with oauth
    When I navigate to the login page on "dev" environment
    When I click on "Login with BME account" button
    Then BME Auth page appears



