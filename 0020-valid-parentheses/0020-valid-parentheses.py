class Solution:
    def isValid(self, s: str) -> bool:
        check = []
        for i in s:
            if i == "(":
                check.append(")")
            elif i == "[":
                check.append("]")
            elif i == "{":
                check.append("}")
            elif not check or check.pop() != i:
                return False
        return not check
        