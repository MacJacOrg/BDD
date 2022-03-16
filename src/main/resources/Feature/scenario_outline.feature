Feature: Transfer money, a lot od money

  Scenario Outline: transferMoney from current account to saving account
    Given I have <current_ac> on currentAccount
    And I have <saving_ac> on savingAccount
    When I transfer <howMuchTransfer> from currentAccount to savingAccount
    Then Transfer was executed
    And Statement appear <what_statement>

    Examples:
      | current_ac | saving_ac | howMuchTransfer | what_statement |
      | 1000       | 1000      | 500             | "string1"      |
      | 1500       | 1500      | 1200            | "string2"      |