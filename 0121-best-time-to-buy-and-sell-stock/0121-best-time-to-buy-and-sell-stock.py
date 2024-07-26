class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        buy = 0
        sell = 1
        profit = 0
        while sell < len(prices):
            if prices[buy] < prices[sell]:
                profit_now = prices[sell] - prices[buy]
                profit = max(profit_now, profit)
            else:
                buy = sell
            sell += 1
        return profit
                
                