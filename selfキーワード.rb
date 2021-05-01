# class User
#   attr_accessor :name

#   def initialize
#     @name = name
#   end

#   def hello
#     "Hello, i am #{name}"
#   end

#   def hi
#     "hi! i am #{self.name}"
#   end

#   def my_name
#     "my name is #{@name}"
#   end

# end

# class Foo
# #  puts "クラス構文の直下のself: #{self}"

#  def self.bar
#   puts "クラスメソッド内のself: #{self}"
#   self.baz
#  end

#  def baz
#   puts "インスタンスメソッド内のself: #{self}"
#   self.bar
#  end

# end
# Foo.new
# Foo.bar
# foo = Foo.new
# foo.baz


#インスタンスメソッドから、クラスメソッドを呼び出す

class Product
  attr_reader :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  def self.format_price(price)  #クラスメソッドを定義
    "#{price}円"
  end

  def to_s
    formatted_price = Product.format_price(price)  #インスタンスメソッド内で、クラスメソッドを呼び出す
    # formatted_price = self.class.format_price(price)   #self.class.メソッドという形でも再現できる。 self.class = 今のクラス名と同義
    "name: #{name}, price: #{price}円"
  end
end

product = Product.new("ハウス", 1000)
p product.to_s
