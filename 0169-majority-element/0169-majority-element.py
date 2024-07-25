class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        candidate, count = None, 0
        for num in nums:
            if count == 0:
                candidate = num
            count += 1 if num == candidate else -1

        count = sum(num == candidate for num in nums)
        return candidate if count > len(nums) // 2 else None
        