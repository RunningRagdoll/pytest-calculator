Feature: Calculator

    As a programmer,
    I want to calculate arithmetics in my application,
    So that I can solve math problems.

    Scenario Outline: Add two numbers
        Given an addend "<a>"
        And a second addend "<b>"
        Then the calculator returns "<sum>"

        Examples:
            | a | b | sum |
            | 2 | 3 | 5   |
            | 3 | 4 | 7   |

    Scenario Outline: Subtract two numbers
        Given a minuend "<a>"
        And a subtrahend "<b>"
        Then the calculator returns "<dif>"

        Examples:
            | a | b | dif  |
            | 2 | 3 | -1   |
            | 3 | 4 | -1   |
    
    Scenario Outline: Multiply two numbers
        Given a factor "<a>"
        And a second factor "<b>"
        Then the calculator returns "<product>"

        Examples:
            | a | b | sum  |
            | 2 | 3 | 6    |
            | 3 | 4 | 12   |

    Scenario Outline: Divide two numbers
        Given a dividend "<a>"
        And a divisor "<b>"
        Then the calculator returns "<quotient>"

        Examples:
            | a | b | quotient |
            | 2 | 4 | 0.5      |
            | 6 | 2 | 3.0      |