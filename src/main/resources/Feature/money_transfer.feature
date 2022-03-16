Feature: Transfer money, a lot od money

  Scenario: transferMoney from current account to saving account
    Given I have 1000 on currentAccount
    And I have 1000 on savingAccount
    When I transfer 500 from currentAccount to savingAccount
    Then Transfer was executed

