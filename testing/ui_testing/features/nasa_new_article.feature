Feature: Create New Article

  Scenario: As a User I am able to create a new article
    Given I am on the index page
    And I move to new article page
    When I fill the title, body and image
    And I Press Submit
    Then I can see my new article displayed
