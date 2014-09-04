Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I should see a form with field "(.*?)"$/) do |arg1|
  expect(page).to have_field(arg1)
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
  click_on(arg1)
end

Then(/^I should be taken to '\/new'$/) do
  expect(current_path).to eq('/new')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content?('arg1')
end

Given(/^I am on the "New Player" page$/) do
  visit('/new')
end

Then(/^I should see a field "(.*?)" with placeholder "(.*?)"$/) do |arg1, arg2|
  has_field?('arg1', :with => 'arg2')
end

Then(/^I should see a "(.*?)" button$/) do |arg1|
  has_button?('arg1')
end