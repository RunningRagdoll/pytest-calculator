""" calculator.py: Simple calculator module for testing purposes """

class Calculator:

    def __init__(self, a = 0, b = 0):
        if not isinstance(a, (int, float)) or not isinstance(b, (int, float)):
            raise TypeError("Inputs must be either int or float!")
        
        self._a = a
        self._b = b
        self._result = 0

    @property
    def result(self):
        return self._result

    def add(self):
        raise NotImplementedError("The function add is not implemented yet!")

    def subtract(self):
        raise NotImplementedError("The function subtract is not implemented yet!")

    def multiply(self):
        raise NotImplementedError("The function multiply is not implemented yet!")

    def divide(self):
        raise NotImplementedError("The function divide is not implemented yet!")

    def tare(self):
        raise NotImplementedError("The function tare is not implemented yet!")