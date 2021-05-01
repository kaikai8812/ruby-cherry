#配列は、Arrayクラスのオブジェクト
p [].class

#異なるデータ型も入れることが可能
array = [1, 2, 3, "佐藤", "青山",]

#添字で、要素を指定して値を帰ることも可能
array[1] = "加藤"
puts array

# << を使うことで、配列の最後に値を挿入することも可能
array << "last"
puts array

# 配列内の特定の要素を削除したい時は、delete_at()メソッドを用いる。
array.delete_at(1)  #配列の２番目の要素を削除
puts array

#配列を用いて、多重代入をすることもできる
a, b, c = [1, 2, 3]
puts a
puts b
puts c

# divmodメソッドと多重代入を活用して、割り算の商と余りを効率よく受け取る
puts "なんこあります？"
total = gets.to_i
puts "何人います？"
human = gets.to_i

ans, remain = total.divmod(human)
puts "一人あたり#{ans}個、あげれるけど、#{remain}個余るなあ。"
