Feature: ActiveTransactionProviderList

  Background: 
    Given User navigates to ISG Landing Page and Login

  Scenario Outline: Verify user able view In Process provider and Removed providers #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User will able to click view provider list

    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify project Overview maximum character set #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User Validates for Maximum Character in Project Overview

    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify client not able Update project Overview #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User not able to Update Project Overview

    Examples: 
      | DataSetName |
      | ValidLogin  |
