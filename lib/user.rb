# HINT: age, name は User クラスのインスタンスがべつに公開してもいい情報なので
# 内部でも attr_reader メソッドを活用していく

# MEMO: rspec, guard, fuubar の初期化方法
# bundle e rspec --init # -> .rspec が生成される
# .rspec : --format Fuubar # 追記
# bundle e guard init rspec # 初期化
# bundle e guard # 起動

class User
  attr_reader :age, :name
  attr_writer :huga

  # def initialize(name:, age:)
  def initialize(name:, age:)
    @name = name
    @age = age
    # @password = password
  end
  def greet
    if age <= 12
      "ぼくは#{name}だよ。"
    elsif age >= 13
      "僕は#{name}です。"
    end
    # else
    #   "僕は#{name}です。"
    # end
    # "僕は#{name}です。"
  end
end
