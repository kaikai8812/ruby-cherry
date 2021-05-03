class User

  def nice2
    "nice,#{self.alice}"
  end

  def name #デフォルトの公開レベルは、public(クラス外でも呼び出せるメソッド)
    "tarou"
  end

  private #privateの下に記述されたprovateメソッドは、そのクラス内だけで使用ができる。

  def alice
    "alice"
  end

end

class Product
  # private
  def message
    "hello!!"
  end
end

class DVD < Product
  class << self #この構文で、指定した範囲のメソッドをクラスメソッド化することができる。
    def sample
      "こんにちわ、!!"  #スーパークラスで定義したprivateメソッドは、サブクラスで使用することができる。
    end
  end
end

# dvd = DVD.new
# p DVD.sample

class Customer
  attr_reader :name

  def initialize(name,weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected  #protectedメソッドは、同クラス、またはサブクラスないで、レシーバ付きで使用する際にのみ利用できる。保存するデータを条件等に使用したいが、外部に直接公開をしたくない場合などに便利。
  def weight
    @weight
  end
end

kai = Customer.new("kai", 40)
momoka = Customer.new("momoka", 30)
p kai.name
# p kai.weight
p momoka.heavier_than?(kai)
