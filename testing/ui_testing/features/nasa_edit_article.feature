Feature: Edit Article

  Scenario: As a User I am able to edit an article
    Given I am on the all articles page
    When I choose an article
    And I press edit
    When I change the title
    Then I can see a new title for that article
