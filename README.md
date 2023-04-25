# stock-picker
Implementing a method #stock_picker that takes in an array of stock prices, 
one for each hypothetical day. 
It should return a pair of days representing the best day to buy and the best day to sell. 
Days start at 0.

You need to buy before you can sell

Go through each stock price except the last one and check against the next prices to find the highest earning.
When the max earnings have been found, adjust values inside buy_sell_pair to contain respective indices.
