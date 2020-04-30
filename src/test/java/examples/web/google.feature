Feature: web-browser automation

  Background:
    * configure driver = { type: 'chrome', addOptions: ['--start-maximized'] }

  Scenario: Search for Karate on Google

    Given driver 'https://www.google.com'
    And input("input[name=q]", 'Karate')
    And click("input[name=btnK]")
    When click("/(//div//a/h3)[1]")
    Then retry(5, 2000).waitForUrl('https://cs.wikipedia.org/wiki/Karate')
