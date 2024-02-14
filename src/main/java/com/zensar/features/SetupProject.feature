Feature: SetupProject

  Background: 
    Given User navigates to ISG Landing Page and Login

  Scenario Outline: Verify user able to Setup new Project #<DataSetName>
    When user logs in to ISG
    Then Verify for Notifications
    Then User clicks on set up Project icon
    Then User verifies project details & click on next
    And Navigate to Project Overview section & add project overview
    Then Select Anticipated award Date
    Then Select Competitive Project
    Then Select Primary objevtives of sourcing
    Then Clicks on Next & Add Client Lead
    Then Enter Client First Name & Last Name
    Then Add Client Lead Email Address & click on next

    #And User Navigates to confirm Project setup page & Clicks on Confirm Project Setup
    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able to Setup new Project with Projet Overview validation #<DataSetName>
    When user logs in to ISG
    Then Verify for Notifications
    Then User clicks on set up Project icon
    Then User verifies project details & click on next
    And Navigate to Project Overview section & add project overview for 5000 Chracter check
    Then Select Anticipated award Date
    Then Select Competitive Project
    Then Select Primary objevtives of sourcing
    Then Clicks on Next & Add Client Lead
    Then Enter Client First Name & Last Name
    Then Add Client Lead Email Address & click on next

    #And User Navigates to confirm Project setup page & Clicks on Confirm Project Setup
    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able to Setup new Project with first name validation #<DataSetName>
    When user logs in to ISG
    Then Verify for Notifications
    Then User clicks on set up Project icon
    Then User verifies project details & click on next
    And Navigate to Project Overview section & add project overview
    Then Select Anticipated award Date
    Then Select Competitive Project
    Then Select Primary objevtives of sourcing
    Then Clicks on Next & Add Client Lead
    Then Enter Client First Name Validation & enter Last Name
    Then Add Client Lead Email Address & click on next

    #And User Navigates to confirm Project setup page & Clicks on Confirm Project Setup
    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able to Setup new Project with last name validation #<DataSetName>
    When user logs in to ISG
    Then Verify for Notifications
    Then User clicks on set up Project icon
    Then User verifies project details & click on next
    And Navigate to Project Overview section & add project overview
    Then Select Anticipated award Date
    Then Select Competitive Project
    Then Select Primary objevtives of sourcing
    Then Clicks on Next & Add Client Lead
    Then Enter Client First Name & enter Last Name with validation
    Then Add Client Lead Email Address & click on next

    #And User Navigates to confirm Project setup page & Clicks on Confirm Project Setup
    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able to Setup new Project with email validation #<DataSetName>
    When user logs in to ISG
    Then Verify for Notifications
    Then User clicks on set up Project icon
    Then User verifies project details & click on next
    And Navigate to Project Overview section & add project overview
    Then Select Anticipated award Date
    Then Select Competitive Project
    Then Select Primary objevtives of sourcing
    Then Clicks on Next & Add Client Lead
    Then Enter Client First Name & Last Name
    Then Add Client Lead Email Address & click on next after validation

    #And User Navigates to confirm Project setup page & Clicks on Confirm Project Setup
    Examples: 
      | DataSetName |
      | ValidLogin  |

  Scenario Outline: Verify user able to Setup new Project with sole source #<DataSetName>
    When user logs in to ISG
    Then Verify for Notifications
    Then User clicks on set up Project icon
    Then User verifies project details & click on next
    And Navigate to Project Overview section & add project overview
   # Then Select Anticipated award Date
    Then Select sole source Project & reason
    Then Select Primary objevtives of sourcing
    Then Clicks on Next & Add Client Lead
    Then Enter Client First Name & Last Name
    Then Add Client Lead Email Address & click on next
    #And User Navigates to confirm Project setup page & Clicks on Confirm Project Setup
    Examples: 
      | DataSetName |
      | ValidLogin  |
