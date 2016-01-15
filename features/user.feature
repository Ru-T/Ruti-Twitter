Feature: User

  Scenario: User Account Creation
    Given I am not logged into the site
    When I visit the "/users/sign_up" page
    And I enter my desired email address
    And I enter my desired password
    And I click submit
    Then I am presented with a flash message that says "Account Successfully Created!"

  Scenario: User Login
    Given I am not logged into the site
    When I visit the "/users/sign_in" path
    And I enter my username or email
    And I enter my password
    And I click "Log in"
    Then I am presented with a flash message that says "You have successfully logged in!"

  Scenario: User Logout
    Given I am logged into the site
    When I click "Log Out"
    Then I am presented with a flash message that says "You have successfully logged out!"

  Scenario: View User Profile
    Given I am logged into the site
    When I visit my own profile page
    Then I see my username
    And I can see my bio
    And I can see the number of tweets I have made
    And I can see my tweets
    And I can see my avatar

  Scenario: Edit User Profile
    Given I am logged into the site
    When I visit my own profile page
    And I click "Edit"
    And I change my bio
    And I click "Save"
    And I visit my own profile page
    Then I see my new bio
