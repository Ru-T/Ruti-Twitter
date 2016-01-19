Feature: Follow

  Scenario: Follow Another User
    Given I am logged into the site
    When I visit the profile of another user
    And I click "Follow"
    And I visit my feed
    Then I see my followed user's tweet

  Scenario: Unfollow Another User
    Given I am logged into the site
    When I visit my feed
    And I click on a user's profile
    And I click "Unfollow"
    And I visit my feed
    Then I no longer see my followed user's tweet
