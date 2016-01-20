Feature: Favorite

  Scenario: Favorite Creation
    Given I am logged into the site
    When I visit a user's profile
    Then I click "Follow"
    Then I visit the "/users/following" page
    And I click "Favorite"
    And I click "Unfavorite"
