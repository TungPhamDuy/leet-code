class Solution:
    def isPalindrome(self, x: int) -> bool:
        # Handle negative numbers and trailing zeros (palindromes are non-negative)
        if x < 0 or (x % 10 == 0 and x != 0):
            return False

        reversed_x = 0

        # Reverse half of the digits (efficient for large numbers)
        while x > reversed_x:
            digit = x % 10
            reversed_x = reversed_x * 10 + digit
            x //= 10

        # Check if the original and reversed are equal
        return x == reversed_x or x == reversed_x // 10