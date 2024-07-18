class Solution:
    def isPalindrome(self, x: int) -> bool:
        # Handle negative numbers and trailing zeros
        if x < 0 or (x % 10 == 0 and x != 0):
            return False
        
        reversed_x = 0
        while x > reversed_x:
            reversed_x = reversed_x * 10 + x % 10
            x //= 10
        
        # Check if the original half is equal to the reversed half or
        # if removing the last digit from reversed_x matches x for odd number of digits
        return x == reversed_x or x == reversed_x // 10