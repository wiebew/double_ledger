Given /^I have bank journals "([^"]*)" in my administration$/ do |journals|
  journals.split(', ').each do |name|
    BankJournal.create!(:name => name , :description => ".")
  end
end


Then /^I should have (\d+) bank journals$/ do |count|
  BankJournal.find(:all).size.should eq(count.to_i)
end
