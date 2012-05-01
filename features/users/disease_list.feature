Feature: List diseases
  As a visitor to the website
  I want to see a list of reported diseases

    Scenario: List diseases
      Given I exist as a user
      When I click diseases tab on the navigation
      Then I should see a list of reported diseases
