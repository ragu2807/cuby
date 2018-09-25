Given(/^I am an tesco groceries homepage$/) do
  app.home_page.load
end

When(/^I search for "([^"]*)"$/) do |search_term|
  app.home_page.search_bar.search_for(search_term)
end
