Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content("What's your name?")
end

Then(/^I should see a form with field "(.*?)"$/) do |arg1|
  expect(page).to have_field("Name")
end