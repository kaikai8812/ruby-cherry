# country = 'us'
# answer =
# if country == 'japan'
#   'こんにちわ'
# elsif country == 'us'
#   'hello'
#   elsif country == 'italy'
#     'ciao'
#   else
#     'nice'
# end

# p answer

#if文は戻り値を返すので、例えばanswerという変数に、次のように戻り値を代入する使い方もできる！
-----------------------------------------------------------------------------------------------------
# point = 5
# day = 1
# point *= 10 if day == 1

# p point

#上記のように、ifを修飾子として扱うこともできる！
#これを使えば、もっとコードを簡潔にかけるかもしれない

-------------------------------------------------------------
#条件演算子を使うことによって、少し醜くなるが、if else の式を一行で書くことが可能になる。
numbers = [1,2,3,4,5]
sum = 0
numbers.each do |n|
  sum_value = n.odd? ? n * 10:n * 3  #nが奇数だったら、nは１０倍、そうでなかったらnは３倍にしてsum_valueに代入
  sum += sum_value
end

puts sum
