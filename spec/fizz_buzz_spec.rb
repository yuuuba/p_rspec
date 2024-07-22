require_relative '../lib/fizz_buzz'

RSpec.describe FizzBuzz do
  describe '#run_fizz_buzz' do

  # let (:nums) { 1..30 }
  # HINT: 単体テストなので、ひとつの値を検査した方がいい
    let(:run_fizz_buzz) { FizzBuzz.new.run_fizz_buzz }
    context '処理結果の' do
      context '3 番目の値が' do
        it 'Fizzを返す' do
          expect(run_fizz_buzz.at(2)).to eq 'Fizz'
        end
      end
      context '5 番目の値が' do
        it 'Buzzを返す' do
          expect(run_fizz_buzz.at(4)).to eq 'Buzz'
        end
      end
      context '15 番目の値が' do
        it 'FizzBuzzを返す' do
          expect(run_fizz_buzz.at(14)).to eq 'FizzBuzz'
        end
      end
      context '1 番目の値が' do
        it '1を返す' do
          expect(run_fizz_buzz.at(0)).to eq '1'
        end
      end
      context '16 番目の値が' do
        it '16を返す' do
          expect(run_fizz_buzz.at(15)).to eq '16'
        end
      end
    end
  # let (:test1) { nums.each { |num| fizz_buzz(num) }}
    # context '15で割ったとき余りが0の際、fizzbuzzと返すこと' do
      #ここでコメント書きながら組み立てている？
      # expect(fizz_buzz(test1) == 0).to eq 'fizzbuzz'
    # end
    # xcontext '5で割った時の余りが0の際、buzzと返すこと' do
    # end
    # xcontext '3で割った時の余りが0の際、fizzと返すこと' do
    # end
    # xcontext '15、5、3以外で割った時余りが0以外の際、割った数字を返すこと' do
    # end
  end
end
