Feature: Create an account and log in
  In order to log in
  As a user
  I want to create an account and log in

  Scenario: Create an Account
    Given I am not authenticated
    And I am on Sign up
    And I fill in "email" with "joe_unconfirmed@example.com"
    And I fill in "password" with "password"
    And I fill in "password confirmation" with "password"
    And I press "user_submit"
    Then I should be on User index
    And I should see "You have signed up successfully. If enabled, a confirmation was sent to your e-mail."

  Scenario: Signed-in User is Logged-in
    Given I am not authenticated
    And I am a new, confirmed user with email joe3@example.com and password password
    And I am on Sign in
    And I fill in "email" with "joe3@example.com"
    And I fill in "password" with "password"
    And I press "user_submit"
    Then I should be on User index

