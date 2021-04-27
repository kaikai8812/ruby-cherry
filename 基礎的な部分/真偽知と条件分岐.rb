
#  number1 # && で繋いだ場合は、全ての値を評価するので、最終的な式である3が、変数に代入される。
# number2 # 全ての式を評価する前に、１個目のfalseで、この式は偽になることがわかったので、変数には falseが代入される。
 number1 = 1 && 2 && 3
 number2 = false && 2 && 3
 puts number2

# ------------------------------------------------------------

 # || で繋いだ場合は、最初にkaiが真であることが確定したので、変数にはkaiが代入される！
 user =  false || "kai" || "yuki" || "masa"
 puts user

# ------------------------------------------------------------

#この仕組みを利用すると、
# 条件式 && 実行するメソッド　みたいな感じで、書ける。

def method(user)
   user
end

user = "masa"
n = true

puts n && method(user)

#nがtrueだと、メソッドを実行することができる！

# or を使うと、Aが真か？そうでなかったらBをするという処理に使うことができる。

 def greeting(country)
  country or return 'countryを入力'

  if country == "japan"
    "こんにちわ"
  else
     "ようこそ"
  end
 end

p greeting(nil)
p greeting("japan")
p greeting("korea")
