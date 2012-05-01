Feature: Show Map
  As a visitor to the website
  I want to see a map on the homepage
  containing markups of the reported diseases

    Scenario: Show map
      Given I exist as a user
      When I look at the homepage
      Then I should see a map containing diseases reported
