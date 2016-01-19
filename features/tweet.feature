Feature: Tweet

  Scenario: Tweet Creation
    Given I am logged into the site
    When I visit my feed
    And I click "Create Tweet"
    And I fill in a tweet
    And I click "Create Tweet"
    And I visit my own profile page
    Then I see my tweet
