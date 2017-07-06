Feature: Igame Invalid Login
        As a user I should not be able to login into Igame with invalid credentials.
        
  Scenario Outline: I try to login with invalid credential
    Given I navigate to "https://www.igame.com"
    And I click on element having id "login-button-li"
    And I enter "<username>" into input field having id "ulogin"
    And I enter "<password>" into input field having id "upass"
    When I click on element having id "loginSubmitBtn"
    Then I wait 5 seconds for element having css "a.login-forgot-password" to display
    Then element having id "generic-error" should have partial text as "Login or password is incorrect."
    
    # first example will fail, it is for testing embedded screenshot (credentials are valid)
    Examples:
       | username   | password |
       | klue3      | Jagoda11 |
       | kime1      | Jagoda11 |
       
