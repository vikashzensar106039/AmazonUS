Feature: ActiveTransaction

  Background: 
    Given User navigates to ISG Landing Page and Login

  Scenario Outline: Verify user able Update project Overview #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User Updates Project Overview
    Then Validate for anticipated award date
    Then Select for Competitive project
    Then select for primary objevtives for sourcing
    Then Check for contract signed date
    And select contract duration in a years
    And Select type of automation of the project
    Then Select Cloud strategy
    And Select the Application Included
    Then What provider do well
    Then What improvements you suggest for their future pursuits and save

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

  Scenario Outline: Verify What did the provider/Carrier do well maximum character set #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User Validates for Maximum Character in What did the provider/Carrier do well & Save

    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify What improvements would you suggest for their future pursuits for maximum character set #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    Then User Validates for Maximum Character in What improvements would you suggest for their future pursuits & save

    Examples: 
      | DataSetName |
      | ValidLogin  |
