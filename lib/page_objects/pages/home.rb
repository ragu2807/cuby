class HomePage < SitePrism::Page
  set_url '/groceries'
  set_url_matcher(/\/groceries/)

  section :search_bar, SearchSection, '#search-form'
end
