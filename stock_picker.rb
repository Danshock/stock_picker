def stock_picker(ary)
  best_profit = 0
  buy_day = 0
  sell_day = 0

  ary[0..-2].each do |purchase|
    next_day = ary.index(purchase) + 1
      ary[next_day..ary.size].each do |sell|
        profit = sell - purchase

        if profit > best_profit
             best_profit = profit
               profit = 0
                 sell_day = ary.index(sell)
                   buy_day = ary.index(purchase)
                 end
               end
             end

puts "Make a purchase on #{buy_day} and sell on #{sell_day} for a profit of £#{best_profit}"

end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
