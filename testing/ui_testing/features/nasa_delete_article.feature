Feature: Delete an Article

  Scenario: As a User I am able to delete an article
    Given I am on the articles page
    And I click on an article
    When I click delete
    Then I can no longer see that article in my articles page
