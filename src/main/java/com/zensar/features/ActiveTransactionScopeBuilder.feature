Feature: ActiveTransactionScopeBuilder

  Background: 
    Given User navigates to ISG Landing Page and Login

  Scenario Outline: Verify user able add common packed service to the bundle  #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User clicks on Go to scope builder
    Then User selects commonly packed service
    And User Clicks on Items in Scope Basket & Save Basket

    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able add FA to the Scope Bundle  #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User clicks on Go to scope builder
    Then User selects FA from section
    And User Clicks on Items in Scope Basket & Save Basket

    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able remove one services from selected FA to the Scope Bundle  #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User clicks on Go to scope builder
    Then User selects FA from section
    And User Clicks on Items in Scope Basket & Save Basket

    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able remove one Process from selected FA to the Scope Bundle  #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User clicks on Go to scope builder
    Then User selects FA from section
    And User Clicks on Items in Scope Basket & Save Basket

    Examples: 
      | DataSetName |
      | ValidLogin  |
