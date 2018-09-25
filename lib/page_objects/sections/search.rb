class SearchSection < SitePrism::Section
  element :search_input, '#search-input'
  element :search_icon, 'button.search-bar__submit.icon-search-white'

  def search_for(search_term)
    wait_for_search_input(5)
    search_input.set(search_term)
    search_icon.click
  end
end
