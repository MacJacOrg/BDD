Feature: Some feature

#  Background:
#    Given step1 open browser
#    And step2 go to shop page
#    And step3 add productto basket
#    And open basket view

  Scenario: scenario_1
    When user input correct code
    Then discount is added to product price


  Scenario: scenario_2
    When ser input incorrect code
    Then discount is not added to product price
