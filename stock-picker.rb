def stock_picker(prices)
    buy = 0
    sell = 0
    greatestDiff = 0
    days = [0, 0]
    
    i = prices.length
    while i > 0 do 
        i -= 1
        sell = prices[i]
        j = i
        while j > 0 do 
            j -= 1
            buy = prices[j]
            if (sell - buy) > greatestDiff
                greatestDiff = sell - buy
                days = [j, i]
            end
        end
    end
    puts days.to_s
end

stock_picker([17,3,6,9,15,8,6,1,10])