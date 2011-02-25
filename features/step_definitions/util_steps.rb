Then /^debug$/ do
  debugger;1
end

When /^I follow "([^"]*)" in the row with "([^"]*)"$/ do |link, text|
When %Q|I follow "#{link}" within "tr:contains('#{text}')"|
end

