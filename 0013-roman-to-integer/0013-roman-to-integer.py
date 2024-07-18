class Solution:
    roman_to_int = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    }

    def romanToInt(self, s: str) -> int:
        total = 0
        prev_value = 0
        for symbol in reversed(s):
            value = self.roman_to_int[symbol]
            if value < prev_value:
                total -= value
            else:
                total += value
            prev_value = value
        return total