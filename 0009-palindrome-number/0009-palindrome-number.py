class Solution:
    def isPalindrome(self, x: int) -> bool:
        # eliminate cases that can not palindrome
        if x < 0 or (x > 0 and x % 10 == 0):
            return False
        # process and compare x and reverse x
        x_original = x # just a name
        x_reverse = 0 # start x_reverse from 0
        while x_original > 0:
            num = x_original % 10 
            x_reverse = x_reverse * 10 + num
            x_original = (x_original - num) / 10
        return x == x_reverse
            
            
            
            

       
        
        