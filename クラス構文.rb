class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end


user = User.new("aoyama")

# user.name = "tarou"
puts user.name
