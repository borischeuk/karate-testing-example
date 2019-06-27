Feature: abc
    Scenario: Test GET request exact response
        Given url 'https://jsonplaceholder.typicode.com/posts/1'
        When method GET
        Then status 200
        And match $ contains {id:1}