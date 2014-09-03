Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content("What's your name?")
end

Then(/^I should see a form with field "(.*?)"$/) do |arg1|
  expect(page).to have_field("Name")
end

When(/^I fill in the field "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

Then(/^field "(.*?)" should contain "(.*?)"$/) do |arg1, arg2|
  find_field(arg1).value.should eq(arg2)
end

Given(/^I have filled in the field "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_on arg1
end

Then(/^I should be taken to '\/new'$/) do
  expect(current_path).to eq(new)
end