Feature: Igame Login
        As a user I should able to login into Igame.
        
  Scenario Outline: I login with valid credential
    Given I navigate to "https://www.igame.com"
    And I click on element having id "login-button-li"
    And I enter "<username>" into input field having id "ulogin"
    And I enter "<password>" into input field having id "upass"
    When I click on element having id "loginSubmitBtn"
    Then I wait 5 seconds for element having id "navbar-user-panel-logged-in" to display
    Then element having id "navbar-user-panel-logged-in" should have partial text as "<username>"
    Then I wait 5 seconds for element having id "user-panel-toggle" to display
    When I click on element having id "user-panel-toggle"
    And  I click on link having partial text "Logout"
    Then I wait 5 seconds for element having xpath "//*[contains(text(), 'Sign in again')]" to display
    Examples:
       | username   | password |
       | klue3      | Jagoda11 |
       | kime1      | SuperSecure11 |
       
