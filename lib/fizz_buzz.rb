require_relative '../lib/fizz_buzz_module'

class FizzBuzz
  # TODO: FizzBuzzModule を使いたい
  using FizzBuzzModule
  # FizzBuzz を実行する
  def run_fizz_buzz
    1.upto(100).map do |n|
      if n.fizz_buzz?
        'FizzBuzz'
      elsif n.buzz?
        'Buzz'
      elsif n.fizz?
        'Fizz'
      else
        n.to_s
      end
    end
  end

  # private
end
# def fizz_buzz(num)
#   if num.modulo(15) == 0
#     'fizzbuzz'
#   end
# end

# nums = 1..30
# nums.each do |num|
#   puts fizz_buzz(num)
# end

# class FizzBuzz
#   attr_reader :nums

#   def initialize(nums)
#     @nums = nums
#   end

#   def fizz
#     # 3

#   end

#   def buzz
#     # 5
#   end

#   def fizz_buzz
#     # 15
#   end
# end

# case1 = FizzBuzz.new(30)
