Feature: ActiveTransactionProjectContact

  Background: 
    Given User navigates to ISG Landing Page and Login

  Scenario Outline: Verify user able add Client to Project contact list #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    And Click on go to Project contact list
    Then Add the new client contact
    Then Add Client First Name
    And Add Client Last Name
    Then Select Pronouns
    Then Select job Tittle
    Then Select Project Role
    Then Select Project Responsibilties
    Then Add Email Address for the Member
    And Add mobile and Click on save Contact

    Examples: 
      | DataSetName |
      | AddContact  |

  Scenario Outline: Verify user able add Client to Project contact list after adding only Required field #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    And Click on go to Project contact list
    Then Add the new client contact
    Then Add Client First Name
    And Add Client Last Name
    Then Select Project Role
    Then Add Email Address for the Member and Click on save Contact

    Examples: 
      | DataSetName |
      | AddContact  |

  Scenario Outline: Verify user able add Lead Attorney to Project contact list #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    And Click on go to Project contact list
    Then Add the new Lead Attorney
    Then Add Lead Attorney First Name
    And Add Lead Attorney Last Name
    Then Select Lead Attorney Pronouns
    Then Select Lead Attorney Legal firm
    Then Select Job tittle of lead Attorney
    Then Add Email Address for the Lead Attorney
    And Add mobile for Lead Attorney and Click on save Contact

    Examples: 
      | DataSetName |
      | AddContact  |

  Scenario Outline: Verify user able add Lead Attorney to Project contact list After adding only required field #<DataSetName>
    When user logs in to ISG
    Then Verify for Active Transaction
    Then User clicks on first Active Transaction
    And Click on go to Project contact list
    Then Add the new Lead Attorney
    Then Add Lead Attorney First Name
    And Add Lead Attorney Last Name
    Then Select Lead Attorney Pronouns
    Then Select Lead Attorney Legal firm
    Then Select Job tittle of lead Attorney
    Then Add Email Address for the Lead Attorney
    And Add mobile for Lead Attorney and Click on save Contact

    Examples: 
      | DataSetName |
      | AddContact  |

