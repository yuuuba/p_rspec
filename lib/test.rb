class Test
  attr_reader :hoge, :huga

  def initialize(hoge:,huga:)
    @hoge = hoge
    @huga = huga
  end

  def greet
    'テストですよ'
  end
end
