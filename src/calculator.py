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
        self._result = self._a + self._b

    def subtract(self):
        self._result = self._a - self._b

    def multiply(self):
        self._result = self._a * self._b

    def divide(self):
        self._result = self._a / self._b

    def tare(self):
        self._result = 0