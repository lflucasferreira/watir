Feature: Amazon Search

   Search for an Amazon product

   Scenario: Searching for mobile phones on Amazon
    Given a user goes to Amazon home page
    When a user search for "mobile phones"
    Then amazon should return result for "mobile phones"