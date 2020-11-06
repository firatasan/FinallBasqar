Feature: Create and Delete Functionality for Countries and Cities

  Background:
    Given Navigate to basqar
    When User sending the keys in the dialog content class
      | username | daulet2030@gmail.com |
      | password | TechnoStudy123@      |
    And User click on the element in the dialog content class
      | loginButton |
      | gotItBtn    |
    Then User should login successfully

  Scenario: Create and delete a country
    When User click on the element in the leftNav class
      | setup      |
      | parameters |
      | countries  |
    And User click on the element in the dialog content class
      | addButton      |
    Then User sending the keys in the dialog content class
      | name | Group3Country |
      | code | 33333333      |
    And User click on the element in the dialog content class
      | saveButton      |
    Then User should see success/error message
      | successfully |
