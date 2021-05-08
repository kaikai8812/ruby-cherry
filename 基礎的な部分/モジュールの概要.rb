# #モジュールの文法
# module Greeter
#   def hello
#     "hello"
#   end
# end

# greeter = Greeter.new
# p greeter.hello

module Loggable

  private #モジュール内のメソッドをprivateにすることで、ミックスイン先のメソッドもprivateにすることができる。
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product

extend Loggable  #extendを使用することにより、モジュール内のメソッドを特異メソッド（クラスメソッド）として使用できるようになる。

  def title
    log 'title is called.'
    'A great movie'
  end

  def self.create_products(names)
    log "create_products is called #{names}"
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end

end

class User

  include Loggable  #include モジュール名で、モジュールをミックスインする。

  def name
    log 'name is called'
    'Alice'
  end

  private
  def log(text)
    puts "[LOG] #{text}"
  end
end

product = Product.new
product.title
Product.create_products("aa")

# user = User.new
# user.name

