Feature: Igame Login
        As a user I should able to login into Igame.

  Scenario: I login with valid credential
    Given I navigate to "https://www.igame.com"
    And I click on element having id "login-button-li"
    And I enter "klue3" into input field having id "ulogin"
    And I enter "Jagoda11" into input field having id "upass"
    When I click on element having id "loginSubmitBtn"
    And I wait for 5 sec
    Then element having id "navbar-user-panel-logged-in" should have partial text as "klue3"
    When I click on element having id "user-panel-toggle"
    And  I click on link having partial text "Logout"
    Then I wait 5 seconds for element having xpath "//*[contains(text(), 'Sign in again')]" to display
    Then I close browser
