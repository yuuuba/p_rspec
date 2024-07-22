require_relative '../lib/fizz_buzz_module'

describe FizzBuzzModule do
  let!(:klass) do
    class MyClass
      attr_reader :number
      using FizzBuzzModule

      def initialize(n)
        @number = n
      end

      def fizz?
        number.fizz?
      end

      def buzz?
        number.buzz?
      end

      def fizz_buzz?
        number.fizz_buzz?
      end

      # 値を返す処理を組み込んだ際に、String と Integer が混ざることになる → String に統一したい
      # 1 2 Fizz 4 Buzz 6... 14 FizzBuzz
      def not_fizz_buzz
        number.to_s
      end
    end

    MyClass
  end

  context '3 で割り切れる場合' do
    it 'true を返す' do
      expect(klass.new(3).fizz?).to be true
    end
  end

  context '5 で割り切れる場合' do
    it 'true を返す' do
      expect(klass.new(5).buzz?).to be true
    end
  end

  context '3 と 5 で割り切れる場合 (15)' do
    it 'true を返す' do
      expect(klass.new(15).fizz_buzz?).to be true
    end
  end
  context 'いずれでもない場合' do
    it '与えられた数値を返す' do
      expect(klass.new(1).not_fizz_buzz).to eq "1"
    end
  end
end
