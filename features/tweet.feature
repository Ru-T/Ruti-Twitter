Feature: Tweet

  Scenario: Tweet Creation
    Given I am logged into the site
    When I visit the "/users/following" page
      And I click "Create Tweet"
      And I fill in "Text" with "Look at me I'm tweeting!"
      And I click "Create Tweet"
      And I visit my own profile page
    Then I should see "Look at me I'm tweeting!"
