puts 'abc'.class

puts %Q!おはようございます。!
puts %Q{おはようございます。}
puts %!おはようございます。!

puts "line1,line2"

puts "line1,

line2"

name = "かいかい"

a = <<-TEXT
はじめまして
青山です
#{name}です
       TEXT

puts a

name1 = "aoyama"
name2 = "kaikai"

b = <<-TEXT.upcase
    #{name1},
    #{name2},
    "tarou"
  TEXT

puts b
