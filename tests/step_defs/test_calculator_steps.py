from pytest_bdd import scenarios, parsers, given, when, then

from src.calculator import Calculator

CONVERTERS = { 
    'a': int,
    'b': int,
    'sum': int,
    'dif': int,
    'product': int,
    'quotient': float,
    'result': int,
}

scenarios('../features/calculator.feature', example_converters=CONVERTERS)

# Given statements

@given('a number "<a>" and a second number "<b>"')
def calculator(a, b):
    return Calculator(a, b)

# When statements

@when('added together')
def add_together(calculator):
    calculator.add()

@when('subtracted from each other')
def subtract_from(calculator):
    calculator.subtract()

@when('multipied together')
def multiply_together(calculator):
    calculator.multiply()

@when('divided by each other')
def divide_by(calculator):
    calculator.divide()

@when('the calculator is tared')
def tared(calculator):
    calculator.tare()

# Then statements

@then('the calculator returns "<sum>"')
def returns_sum(calculator, sum):
    assert calculator.result == sum

@then('the calculator returns "<dif>"')
def returns_difference(calculator, dif):
    assert calculator.result == dif

@then('the calculator returns "<product>"')
def returns_product(calculator, product):
    assert calculator.result == product

@then('the calculator returns "<quotient>"')
def returns_quotient(calculator, quotient):
    assert calculator.result == quotient

@then('the result is "<result>"')
def returns_result(calculator, result):
    assert calculator.result == result