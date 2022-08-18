def stockpicker(input_array)
    profit_high = 0
    best_days = ""

    input_array.each_with_index do |price1, day1|
        input_array.each_with_index do |price2, day2|
            current_profit = price2 - price1
            if current_profit > profit_high && day2 > day1
                profit_high = current_profit
                best_days = [day1, day2]
            end
        end
    end
    p best_days
end
stockpicker([17,3,6,9,15,8,5,34,6,1,10,99])