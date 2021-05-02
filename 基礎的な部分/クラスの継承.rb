# class User
# end

# p User.superclass #定義したクラスは、Objectクラス(標準で規定されているクラス)が定義されている。
# p User.methods.sort

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s(n)
    "name: #{name}, price: #{price},引数は#{n}"
  end

  def intro
    p "#{self.name}は、#{self.price}円です"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name,price,running_time)
    super(name,price)
    @running_time = running_time
  end

  def to_s(n)   #継承したメソッドに引数が存在する場合は、継承先のメソッドでも定義しておかないとうまく行かない。
    "#{super}, 上映時間#{running_time} "
  end
end

product = Product.new("アイアンマン", 2000)
p product.to_s("天才")

dvd = DVD.new("キャプテン", 3000, 20)
p dvd.to_s(1)
