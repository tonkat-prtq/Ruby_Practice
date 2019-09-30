# ticket_type = [1000, 500, 100] # 割引券の値引き額は固定なので予め作成しておく
# have_ticket = [] # 券の枚数を入れるため、空の配列を作成

# ticket_type.each do |type| 
#   puts "#{type}円の割引券を何枚お持ちですか"
#   have_ticket << count = gets.to_i
# end

# p have_ticket # しっかり配列に要素（割引券の枚数）が追加出来ているかどうかを確認

# def reseter
#   n = 0 # その種別の割引券が何枚使えるか数えるのに使う
#   t = 0 # have_ticketの添字として使う
#   ticket_counter = 0 # 合計で何枚のチケットを使ったのか数えるのに使う
# end

def value_recalc(sum)
  ticket_type = [1000, 500, 100] # 割引券の値引き額は固定なので予め作成しておく
  have_ticket = [] # 券の枚数を入れるため、空の配列を作成
  n = 0 # その種別の割引券が何枚使えるか数えるのに使う
  t = 0 # have_ticketの添字として使う
  ticket_counter = 0 # 合計で何枚のチケットを使ったのか数えるのに使う
  
  if sum >= 5000
  ticket_type.each do |type| 
    puts "#{type}円の割引券を何枚お持ちですか"
    have_ticket << gets.to_i
    while sum >= type && have_ticket[t] > 0 do
      sum -= type
      have_ticket[t] -= 1
      n += 1
    end
      puts "#{type}円割引券を#{n}枚使い、只今の合計金額は#{sum}円です"
      ticket_counter += n
      t += 1
    end
  end
end

value_recalc(6000)