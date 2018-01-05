Feature: User Navigation

  Scenario: As a User I am able to navigate on the website through the nav-bar
    Given I am on the Nasa home page
    When I move to the Asteroids page
    Then I see a list of all NEO for today
