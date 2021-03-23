country = 'us'
answer =
if country == 'japan'
  'こんにちわ'
elsif country == 'us'
  'hello'
  elsif country == 'italy'
    'ciao'
  else
    'nice'
end

p answer

#if文は戻り値を返すので、例えばanswerという変数に、次のように戻り値を代入する使い方もできる！
-----------------------------------------------------------------------------------------------------
point = 5
day = 1
point *= 10 if day == 1

p point

#上記のように、ifを修飾子として扱うこともできる！
#これを使えば、もっとコードを簡潔にかけるかもしれない
