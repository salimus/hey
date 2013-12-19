Feature: I want to pass the test
  @11
  Scenario: Create an account
    Given I am on the Desk.com site
    When I click on Start Free Trial button
    Then the button "Get Started" should be present
    And I enter "Mr. Petr2" in the name field
    And I enter "mr.Petr2@gmail.com" in the email field
    And I enter "1020304050" in the phone field
    And I enter "Petr2 Inc." in the company name field
    And I enter "Petr2Inc" in the url field
    When I click on Get Started button
    Then the button "Start your Free Trial" should present
    And I select "10-25 people" to the question How many people at your company provide support full time?
    And I select "1-3 Months" to the question How soon do you need a customer support tool like Desk.com?
    And I select "Email" to the question How do you handle customer support today?
    When I click on Start your free trial button
    Then I will see "Desk.com" page

  @22
  Scenario: Login to my account
    Given I am on the "Desk.com" site
    When I click the Login link
    Then I will see "Help us Find Your Login Page" page
    And I enter company URL "JacobsInc"
    And I click on Continue button
    Then I will see "Welcome Back to Desk.com!" page
    And I enter my "mr.Jacobs@gmail.com" and "qwerty123"
    And I click on the Login button
# Then I will see "My tasks" text