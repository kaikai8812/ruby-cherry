require "time"
sample = "12:10"
puts Time.parse(sample)


require "time"
input_line = gets
 counts = input_line.chomp  #総数
 info = readlines.map{|info| info.chomp}.map{|info| info.split(" ")}

my_info = info.last
my_info_name = my_info[0]
my_info_time = my_info[1]
info.pop
 info.find{|name| name[0] == my_info_name}[1].to_i  #ここで、投稿者の時差を獲得
 my_time_diff = info.find{|name| name[0] == my_info_name}[1].to_i
my_official_time = Time.parse(my_info_time) - my_time_diff * 60 * 60 #時差を自分の時間に適用させる。

# info.pop #最後の要素を削除
info_time = info.map{|info| info = info[1].to_i}
# p info_time
answer = info_time.map{|time| my_official_time + time * 60 * 60 }
puts answer.map{|ans| ans.strftime("%H:%M")}
