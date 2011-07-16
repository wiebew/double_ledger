Feature: Bank journal
  So I can administer my banking transactions
  As a administrator
  I want to perform valid inspections, adding, changing and deleting of bank journals and register banking transactions

Scenario: Look at bank journals
  Given I have bank journals "Ing, Paypal" in my administration
  When I go to bank journals
  Then I should see "Ing"
  And I should see "Paypal"

Scenario: Add a valid bank journal
  Given I go to new bank journal
  And I fill in "ING" for "Name"
  And I fill in "ING bankrekening" for "Description"
  And I press "Create Bank journal"
  And I follow "Edit"
  Then the "Name" field should contain "ING"
  And the "Description" field should contain "ING bankrekening"

Scenario: Add an invalid bank journal
  # all fields empty
  Given I go to new bank journal
  And I press "Create Bank journal"
  Then I should see "prohibited"

  # one required field empty
  Given I go to new bank journal
  And I fill in "Test ledger" for "Name"
  And I press "Create Bank journal"
  Then I should see "prohibited"

  Given I go to new bank journal
  And I fill in "Test ledger" for "Description"
  And I press "Create Bank journal"
  Then I should see "prohibited"

Scenario: Edit a bank journal
  Given I have bank journals "Paypal" in my administration
  When I go to bank journals
  And I follow "Edit"
  Then the "Name" field should contain "Paypal"

  When I go to bank journals
  And I follow "Edit"
  And I fill in "ING" for "Name"
  And I fill in "The orange lion" for "Description"
  And I press "Update Bank journal"
  Then I should see "successfully updated"

  When I go to bank journals
  And I follow "Edit"
  Then the "Name" field should contain "ING"
  And the "Description" field should contain "The orange lion"

Scenario: Delete a bank journal
  Given I have bank journals "Paypal" in my administration
  When I go to bank journals
  And I follow "Destroy"
  Then I should have 0 bank journals

#  Then show me the page

