Feature: Ledger Account

  So I can administer my ledger accounts
  As a adminstrator
  I want to perform valid inspections, adding, changing and deleting of ledger accounts

Scenario: Look at ledger accounts
  Given I have accounts "2500, Kas, 2600, Bank" in my administration
  When I go to accounts
  Then I should see "2500"
  And I should see "2600"

Scenario: Add a valid ledger account
  Given I go to new account
  And I fill in "Test account" for "Description"
  And I fill in "1234" for "Account"
  And I press "Create Ledger account"
  And I follow "Edit"
  Then the "Account" field should contain "1234"
  And the "Description" field should contain "Test account"

Scenario: Add an invalid ledger account
  # all fields empty
  Given I go to new account
  And I press "Create Ledger account"
  Then I should see "prohibited"

  # one required field empty
  Given I go to new account
  And I fill in "Test account" for "Description"
  And I press "Create Ledger account"
  Then I should see "prohibited"

  Given I go to new account
  And I fill in "1234" for "Account"
  And I press "Create Ledger account"
  Then I should see "prohibited"

Scenario: Edit a ledger accounts
  Given I have accounts "2500, Kas" in my administration
  When I go to accounts
  And I follow "Edit"
  Then the "Account" field should contain "2500"
  And the "Description" field should contain "Kas"

  When I go to accounts
  And I follow "Edit"
  And I fill in "Giro" for "Description"
  And I press "Update Ledger account"
  Then I should see "successfully updated"

  When I go to accounts
  And I follow "Edit"
  Then the "Account" field should contain "2500"
  And the "Description" field should contain "Giro"
  
Scenario: Delete a ledger accounts
  Given I have accounts "2500, Kas" in my administration
  When I go to accounts
  And I follow "Destroy"
  Then I should have 0 accounts
  
 



  


