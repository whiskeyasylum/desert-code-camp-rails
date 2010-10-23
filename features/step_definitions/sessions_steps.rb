Given /^the following sessions:$/ do |sessions|
  Sessions.create!(sessions.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) sessions$/ do |pos|
  visit sessions_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following sessions:$/ do |expected_sessions_table|
  expected_sessions_table.diff!(tableish('table tr', 'td,th'))
end
