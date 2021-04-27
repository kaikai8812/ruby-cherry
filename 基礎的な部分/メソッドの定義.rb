# def add(a,b)
#   a + b
# end

# puts add(2,4)

# def add2(a,b)
#   return a + b
# end

# puts add2(2,5)

#メソッドの引数、デフォルトを設定する

# def time_display(time = Time.now, country = yours)
#   puts "時間: #{time}, 場所: #{country}"
# end

# def yours
#   "日本"
# end

# time_display

# !で終わるメソッド

# a = "abcde"

# puts a.upcase #この場合は、aの中身自体は変わらない。
# puts a

# puts a.upcase! # !をつけると、aの中身までもが変わってしまう。
# puts a

require 'date'
puts Date.today
