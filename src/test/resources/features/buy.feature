Feature: Buy products
    As a customer
    I want to buy products

    Background:
        Given a product "Bread" with price 20.50 and 15 quantity exists
        And a product "Jam" with price 80.00 and 20 quantity exists
        And a product "Doughnut" with price 30.00 exists

    Scenario: Buy one product
        When I buy "Bread" with quantity 2
        Then total should be 41.00
        And "Bread" quantity should be 13

    Scenario: Buy multiple products
        When I buy "Bread" with quantity 2
        And I buy "Jam" with quantity 1
        And I buy "Doughnut" with quantity 1
        Then total should be 151.00
        And "Bread" quantity should be 13
        And "Jam" quantity should be 19
        And "Doughnut" quantity should be 9

    Scenario: Buy more than stock
        When I buy "Bread" with quantity 16
        And I buy "Doughnut" with quantity 12
        Then total should be 0.00
        And "Bread" quantity should be 15
        And "Doughnut" quantity should be 10


