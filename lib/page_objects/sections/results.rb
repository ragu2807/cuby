class ResultsSection < SitePrism::Section
  elements :results, 'li.product-list--list-item'

  def product_lists
    wait_for_results(5)
    results
  end
end
