Feature: Follow

  Scenario: Follow Another User
    Given I am logged into the site
    When I visit a user's profile
    And I click "Follow"
    When I visit the "/users/following" page
    Then I see my followed user's tweet

  Scenario: Unfollow Another User
    Given I am logged into the site
    When I visit a user's profile
    And I click "Follow"
    And I click "Unfollow"
    When I visit the "/users/following" page
    Then I no longer see my followed user's tweet
