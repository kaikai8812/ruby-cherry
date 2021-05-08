# money = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}

# # p money['japan']
# money['italy'] = 'euro'  #後からハッシュを追加することも可能
# # p money

# # money.each do |key,value|
# #   p "#{key}:#{value}"
# # end

# money.each do |key_value|  #ブロック引数を一つにすると、その引数に配列として値が渡される。[0] => key, [1] => value
#   p "キーは#{key_value[0]},中身は#{key_value[1]}"
# end


# #ハッシュのキーにシンボルを用いる場合

# name = {aoyama: 'kai', tanaka: 'yasushi', nakata: 'yasutaka'}

# name.each do |key_value|
#   p "私は#{key_value[0]},#{key_value[1]}です。"
# end

#メソッドのキーワード引数と、ハッシュ

def buy_burger(menu,drink: true,potato:)  #デフォルト値は、省略することも可能。
  p "買うのは、#{menu}"

  if drink
    p "ドリンクも買います。"
  end

  if potato
    p "ポテトも買います。"
  end

end

buy_burger("チーズバーガー", drink: false, potato: true)
