@search
Feature: Search from homepage
  As a customer
  I want to visit Tesco groceries homepage
  So that I can search for products I wish to buy

  @homepage @anonymous
  Scenario: Anonymous search for a product from homepage
    Given I am an tesco groceries homepage
    When I search for "cola"
    Then I should see the results for "cola"
