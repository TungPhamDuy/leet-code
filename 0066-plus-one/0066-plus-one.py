class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        convert_str = list(str(int(''.join(list(map(str, digits))))+1))
        convert_int = [int(i) for i in convert_str]
        return convert_int
        