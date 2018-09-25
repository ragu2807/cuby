Then(/^I should see the results for "([^"]*)"$/) do |search_term|
  expect(app.search_results_page.heading).to include(search_term)
  expect(app.search_results_page.search_results.product_lists).not_to be_empty
  # , "Search for '#{search_term}' din't return any products."
end
