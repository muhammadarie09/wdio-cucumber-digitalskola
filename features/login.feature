@login
Feature: Login Test

  Background: 
  Given user is on login page

  @positive @tc-1
  Scenario Outline: Success Login
    When user login using "<username>" as username and "<password>" as password
    Then user should be redirected to homepage

    Examples:
    | username | password |
    | standard_user | secret_sauce |
    | problem_user | secret_sauce |
    | performance_glitch_user | secret_sauce |
    | error_user | secret_sauce |
    | visual_user | secret_sauce |

  @negative @tc-2
  Scenario Outline: Unseccess Login
    When user login using "<username>" as username and "<password>" as password
    Then user should see error message "<message>"

    Examples:
    | username | password | message|
    | standard_user | wrong_pass | Epic sadface: Username and password do not match any user in this service |
    | locked_out_user | secret_sauce | Epic sadface: Sorry, this user has been locked out. |
