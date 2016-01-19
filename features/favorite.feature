Feature: Favorite

  Scenario: Favorite Creation
    Given I am logged into the site
    When I visit a user's profile
    And I click "Follow"
    When I visit the "/users/following" page
    And I click "Favorite"
    Then I click "Unfavorite"
