Feature: API Test using Reqresrin API

    Scenario: Send GET User request
        When user send GET User request
        Then user should get API response 200
        And response should have "$.data.id" matching "2"

    Scenario: Send POST login request
        When user send POST login request
        Then user should get API response 200
        And response should have "$.token" matching "QpwL5tke4Pnpja7X4"
        And response should have schema matching "login"
