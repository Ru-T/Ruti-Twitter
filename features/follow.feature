Feature: Follow

  Scenario: Follow Another User
    Given I am logged into the site
    When I visit a user's profile
      And I click "Follow"
    Then I visit the "/users/following" page
    And I see my followed user's tweet

  Scenario: Unfollow Another User
    Given I am logged into the site
    When I visit a user's profile
      And I click "Follow"
      And I click "Unfollow"
    Then I visit the "/users/following" page
      And I no longer see my followed user's tweet
