#ユーザを作成する

#  ハッシュを使用した場合は、こうユーザーを定義する----------
# users = []

# users << { first_name: 'Alice', last_name: 'Ruby', age: 20}
# users << { first_name: 'Bob', last_name: 'Python', age: 30}

# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end

# users.each do |user|
#   p "氏名: #{full_name(user)}、年齢:#{user[:age]}"
# end

#-------------------------------------------------------------

# クラスを使用した場合は、このように書く

class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def class_full_name
    "#{first_name} #{last_name}"
  end

end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

def full_name(user)
  "#{user.first_name} #{user.last_name}"
end

users.each do |user|
  puts "氏名: #{user.class_full_name}、年齢:#{user.age}"
  puts user.class
end

users[0].first_name = "小鳥"
puts users[0].first_name
