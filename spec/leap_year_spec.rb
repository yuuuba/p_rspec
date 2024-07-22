require_relative '../lib/leap_year'

RSpec.describe LeapYear do
  describe '#run_leap_year' do
  #yearが４で割れる数がうるう年、だが４でわれても100で割り切れるかつ400で割り切れない数は閏年ではない
  let(:leap_year) { LeapYear.new(2000).leap_year}


  context '処理が' do
    # context '4で割れる数が' do
    context '4で割ったとき' do
      # it '４で割って余りが０を返す' do
      it '０を返す' do
        expect(leap_year).to eq '2000年は閏年です"'
      end
    end

    context '4と１００で割ったとき' do
      it '０を返す' do
        expect(leap_year).to eq '0'
      end
    end

    context '4と１００で割ってしかし400で割り切れない場合は' do
      it '０以外を返す' do
        expect(leap_year).not_to eq '0'
      end
    end


  end

  # it '４で割れる' do

    # end

    # it '4で割れて、１００で割れる' do

    # end

    # it '4で割れて、１００で割れて400で割り切れない' do

    # end
  end
end
