Given /^I have accounts "([^"]*)" in my administration$/ do |accounts|
  accounts.split(', ').each_slice(2) do |account,description|
    LedgerAccount.create!(:account => account, :description => description)
  end
end

Then /^I should have (\d+) accounts$/ do |count|
  LedgerAccount.find(:all).size.should eq(count.to_i)
end
