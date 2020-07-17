# Unit Tests for calculator.subtract()

from src.calculator import Calculator
import pytest

def test_using_a_string_as_input():
    with pytest.raises(TypeError):
        Calculator("text" , 4)