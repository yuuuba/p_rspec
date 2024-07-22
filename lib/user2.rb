class User
  attr_reader :name, :age

  def initialize(name,age)
    @name = name
    @age = age
  end

  def greet
    '僕は太郎だよ。'
  end
end
