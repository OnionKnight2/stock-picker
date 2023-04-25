=begin
    Implementing a method #stock_picker that takes in an array of stock prices, 
    one for each hypothetical day. 
    It should return a pair of days representing the best day to buy and the best day to sell. 
    Days start at 0.

    You need to buy before you can sell

    Go through each stock price except the last one and check against the next prices to find the highest earning.
    When the max earnings have been found, adjust values inside buy_sell_pair to contain respective indices.

=end

def stock_picker(stock_prices)
    buy_sell_pair = []
    max_earning = 0
    stock_prices.each_with_index do |price, index|
        unless index == stock_prices.length - 1
            for i in index..stock_prices.length-2
                if stock_prices[i + 1] - stock_prices[index] > max_earning
                    max_earning = stock_prices[i + 1] - stock_prices[index]
                    buy_sell_pair[0] = index
                    buy_sell_pair[1] = i+1
                end
            end
        end
    end

    buy_sell_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])