class SearchResultsPage < SitePrism::Page
  element :search_results_heading, 'h1'
  section :search_results, ResultsSection, '.product-lists'

  def heading
    wait_for_search_results_heading(5)
    search_results_heading.text
  end
end
