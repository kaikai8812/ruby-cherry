class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.create(names)
    names.map do |name|   #受け取った配列を、Userクラスという設計図をもとに書き換えているから、mapが正しい。
      User.new(name)
    end
  end
end

users = ["kai", "tarou", "take"]

users = User.create(users)

users.each do |user|
  puts user.name
end
