Feature: This feature would be used to design the Login page of the application

  Scenario: Validate the successful login
    Given I have opened the application in browser
    When I click on the Login link
    And I enter username
    And I enter password
    And I click on the login button
    Then I should be landed on the home page

  Scenario: Validate the successful login
    Given I have opened the application in browser
    When I click on the Login link
    And I enter "abc@xyz.com"
    And I enter "Pqr@1234"
    And I click on the login button
    Then I should be landed on the home page

  Scenario Outline: Validate the successful login
    Given I have opened the application in browser
    When I click on the Login link
    And I enter "<Username>"
    And I enter "<Password>"
    And I click on the login button
    Then I should be landed on the home page

    Examples: 
      | Username    | Password |
      | abc@xyz.com | Pqr@1234 |
      | sas@abc.com | Pqr@1234 |
