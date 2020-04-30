Feature: web-browser automation

  Background:

  Scenario: Search for Karate on Google

    Given driver baseUrl
    And input("input[name=q]", 'Karate')
    And click("input[name=btnK]")
    When click("/(//div//a/h3)[1]")
    Then retry(5, 4000).waitForUrl('https://cs.wikipedia.org/wiki/Karate')
