# #等差数列を作成する。
# def tosa(num, diff, length)   #num = 初項 diff = 公差 length = 数列の長さ
#   Array.new(length) {|n| num + diff * n}
# end

# p tosa(0,5,5)
# p tosa(2,8,4)

# #等比数列

# def touhi(num, ratio, length)       #num = 初項 ratio = 公比 length = 数列の長さ
#   Array.new(length) {|n| num * ratio**n}
# end

# p touhi(3,12,11)

# #フィボナッチ数列

# answer = 1, 1, 2, 3, 5, 8, 13, 21 , 34, 55, 89, 144, 233, 377, 610

#手順1  一項目と二項目は例外となるので、それをまず処理する。

# if n == 1 || n == 2
#   1
# end

# n = x の時の答えは、  n = x-1 , n = x - 2 の時の項の値の合計
def fivo(length)
  array = []
  length.times do |n|
    if n == 0 || n == 1
      array << 1
    else
      num = array[n - 2].to_i + array[n - 1].to_i
      array << num
    end
  end
  p array
end

fivo(10)

#トリボナッチ数列の問
# 問１
# 1,3,7,11,21,39...
# 50番個目にある数字は何ですか？

# n = 0 の時、 num = 1
# n = 1 の時、 num = 3
# n = 2 の時、 num = 7
def toribo(n)
  array = [1,3,7]
  n.times do
    if n > 2
      num = array[n-3].to_i + array[n-2].to_i + array[n-1].to_i
      array << num
      p num
    end
  end
  p array
end

toribo(51)
