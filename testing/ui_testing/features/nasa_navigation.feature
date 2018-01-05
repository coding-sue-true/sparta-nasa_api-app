Feature: User Navigation

  Scenario: As a User I am able to navigate on the website through the nav-bar
    Given I am on the Nasa home page
    And I move to the Asteroids page
    When I move to the Articles page
    Then I can move back to NASA home page
