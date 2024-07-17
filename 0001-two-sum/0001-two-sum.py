class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hashmap = {} # Initialize hashmap
        for i in range(len(nums)): # start the loop go through index
            j = target - nums[i] # assign j is the complete number
            if j in hashmap: 
                return [i,hashmap[j]]
            hashmap[nums[i]] = i