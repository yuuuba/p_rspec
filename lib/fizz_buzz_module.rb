# FizzBuzz かどうかだけを判定したい
module FizzBuzzModule
  refine Integer do
    def fizz?
      modulo(3).zero?
    end

    def buzz?
      modulo(5).zero?
    end

    def fizz_buzz?
      fizz? && buzz?
    end
  end
end
