class Solution:
    def isPalindrome(self, x: int) -> bool:
        x_str = str(x)
        x_list = list(x_str)
        x_list.reverse()
        x_reverse = ''.join(x_list)
        return (x_reverse == str(x))

       
        
        