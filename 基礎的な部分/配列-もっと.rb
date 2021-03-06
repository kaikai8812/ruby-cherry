
a = [1,2,3,4,5]

#一つ目の添字で、開始する位置、二つ目の添字で取得する長さを指定している。
p a[1,2]

#「values_at」で、添字を複数指定して表示できる。
p a.values_at(0,2,4)

# last,firstで、最後の要素と、最初の要素を取得できる。
#引数を渡すことで、表示する長さも指定できる。

p a.last(2)
p a.first(3)

#pushメソッドで、要素を追加する。

b = []
b.push("a","b")
p b

#concatメソッドで、配列を連結する。

b = ["a", "B", "C"]
a.concat(b)  #concatは破壊的なメソッドであるため、メソッドを使用したaの配列を組み替えてしまうので注意。
p a
p b

#配列の和集合、差集合、積集合
#「|,-,&」を使って、配列の集合をそれぞれ表現できる。
a = [1,2,3,4]
b = [3,4,5,6]

p a | b #要素を全て表示
p a - b #差の要素を表示
p a & b #どちらにも存在する要素を表示

#配列を、展開してpushする
#アスタリスク*は、配列を展開する効果がある。

# p a.push(b) #配列に配列を普通にpush
# p a.push(*b) #配列の前に*をつけると、展開して要素を挿入してくれる。

#可変長引数を用いて、配列を引数として渡す。

def greeting(*names)
  p "#{names.join('と')}、こんにちわ"
end

name = ["青山","太郎"]
greeting('田中', "鈴木")   #アスタリスクをつけないと、二つの引数を与えることができない。
greeting(name)            #もともと配列で定義してあるものであれば、「一つの配列」という一つの引数を渡すことになるので、アスタリスクがなくても動作する。

# %wを使うことで、配列を簡潔に表示する。

d = %w(apple pine momo aoyama\ kai )
p d
