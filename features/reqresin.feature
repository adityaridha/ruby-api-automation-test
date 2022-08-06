Feature: API Test using Reqresrin API

    Scenario: GET User
        Given user send GET User Request
        Then user should get response 200 OK
