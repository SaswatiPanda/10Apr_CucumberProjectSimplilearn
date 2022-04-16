Feature: This feature would be creating a Calculator for Add and Substract

  Scenario: To Add two numbers
    Given I have a calculator
    When I add 2 and 3
    Then I should get the result as 5

  Scenario: To Substract two numbers
    Given I have a calculator
    When I substract 3 and 2
    Then I should get the result as 1

  Scenario Outline: To add two numbers using scenario outline
    Given I have a calculator
    When I add <num1> and <num2>
    Then I should get the result as <result>
     When I substract <num1> and <num2>
    Then I should get the result as <resultSub>

    Examples: 
      | num1 | num2 | result | resultSub |
      |    4 |    5 |      9 |        -1 |
      |    7 |    5 |     12 |         2 |

  Scenario: To add two numbers using cucumber datatable
    Given I have a calculator
    When I add below numbers
      | 4 |
      | 5 |
      | 7 |
      | 8 |
    Then I should get the result as 24

  Scenario: To add two numbers using List
    Given I have a calculator
    When I add below numbers using List
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then I should get the result as 34

  Scenario: To calculate the total bill of the order
    Given I have a calculator
    When I order below items
      | coffee | 23 |
      | tea    | 27 |
      | burger | 50 |
    Then I should get the result as 100

  Scenario: To calculate the total bill of the order using quantity
    Given I have a calculator
    When I order below items and quantity
      | coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get the result as 140
