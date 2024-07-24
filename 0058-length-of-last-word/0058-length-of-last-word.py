class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        s_strip = s.strip()
        s_lst = s_strip.split(' ')
        return len(s_lst[-1])