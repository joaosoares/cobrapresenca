Given(/^I have entered "(.*?)" into the search box$/) do |search_term|
  within(".search_form") do
    fill_in 'Search', :with => search_term
  end
  click_button 'Search'
end

When(/^I press enter$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^it should say he DOES NOT require for CALCULO VI$/) do
  pending # express the regexp above with the code you wish you had
end
