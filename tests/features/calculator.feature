Feature: Calculator

    As a programmer,
    I want to calculate arithmetics in my application,
    So that I can solve math problems.

    Background:
        Given a number "<a>" and a second number "<b>"

    Scenario Outline: Add two numbers
        When added together
        Then the calculator returns "<sum>"

        Examples:
            | a | b | sum |
            | 2 | 3 | 5   |
            | 3 | 4 | 7   |

    Scenario Outline: Subtract two numbers
        When subtracted from each other
        Then the calculator returns "<dif>"

        Examples:
            | a | b | dif  |
            | 2 | 3 | -1   |
            | 3 | 4 | -1   |
    
    Scenario Outline: Multiply two numbers
        When multipied together
        Then the calculator returns "<product>"

        Examples:
            | a | b | product |
            | 2 | 3 | 6       |
            | 3 | 4 | 12      |

    Scenario Outline: Divide two numbers
        When divided by each other
        Then the calculator returns "<quotient>"

        Examples:
            | a | b | quotient |
            | 2 | 4 | 0.5      |
            | 6 | 2 | 3.0      |

    Scenario Outline: Tare
        When added together
        And the calculator is tared
        Then the result is "<result>"

        Examples:
            | a | b | result |
            | 2 | 4 | 0      |
            | 6 | 2 | 0      |