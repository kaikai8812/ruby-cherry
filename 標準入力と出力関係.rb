# puts "猫の名前は？"
# name = gets.chomp  #chompは、末尾の改行文字を取り除くメソッド
# puts name + "です！"

# ---------------------------------------------
# input = "1926 1930 1959 1938"

# #一つ目
# years = input.split(" ")
# p years

# showa = []

# years.each do |year|
#   showa << year.to_i - 1925
# end

# puts showa

#二つ目

# years = input.split(" ").map{|year|year.to_i - 1925}
# p years
# puts years.join("感覚")

# ---------------------------------------------

# array = [1,1,1,1,2,2,2,2,3,3,3,3]
# p array.uniq    #配列の中の重複しているものを省略
# p array.select{|n| n.odd?}   #配列の中から、奇数のものだけを抽出して表示
# p array.select{|n| n.even?}   #配列の中から、偶数のものだけを抽出して表示

# ---------------------------------------------
# 英語と数学と国語の点数が、"30,50,20"のように入力され、
# 複数人の場合は"30,30,50 40,80,20"のように、半角スペースが入リます。

# 三教科の最高得点を
# 50
# 80
# のように人数分出力してください。
# ただし、何名のテストの点が入力されるかは不明です。


# class People
#   attr_accessor :english, :math, :japanese

#   def initialize(scores)
#     scores = scores.split(",").map{|score| score.to_i}
#     scores.max
#     # self.english = scores[0]
#     # self.math = scores[1]
#     # self.japanese = scores[2]
#   end

#   # def max_score
#   #   scores = []
#   #   scores << self.english
#   #   scores << self.math
#   #   scores << self.japanese
#   #   scores.max
#   # end

# end

input = "80,50,20 86,54,23 67,33,44"

# input = input.split(" ")
# # puts input.map{|scores| scores.max}
# p input

# p input.split(" ")
# p input.split(" ").map{|scores| scores.split(" ")}


# # max_scores = input.map{|scores| People.new(scores)}
# # puts max_scores

# p input

# array1 = input.split(" ")

# p array1

# array2 = array1.map{|scores| scores.split(",")}

# p array2

# integer_array = array2.map{|scores| scores.map{|score| score.to_i}}

# puts integer_array.map{|scores| scores.max}

puts input.split(" ").map{|scores| scores.split(",")}.map{|scores| scores.map{|score| score.to_i}}.map{|scores| scores.max}

