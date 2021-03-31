# FizzBuzzプログラムの作成

# ・3で割り切れる数値を引数に渡すと、“Fizz”を返す。
# ・5で割り切れる数値を引数に渡すと、“Buzz”を返す。
# ・15で割り切れる数値を引数に渡すと、“FizzBuzz”を返す。
# ・それ以外の数値はその数値を文字列に変えて返す。

def fizz_buzz(n)
  if n % 15 == 0
    "fizzbuzz"
  elsif n % 5 == 0
    "buzz"
  elsif n % 3 == 0
    "fizz"
  else
    n.to_s
  end
end

puts fizz_buzz(16)
puts fizz_buzz(15)
puts fizz_buzz(10)
