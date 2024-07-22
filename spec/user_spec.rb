require_relative '../lib/user'

RSpec.describe User do
  describe '#greet' do
    context '12歳以下の場合' do
      let(:user) { User.new(name: 'たろう', age: 12) }

      it 'ひらがなで値が返る' do
        #4、実装を想定してテストコード書くってこと？
        # user = User.new(name: 'たろう', age: 12)
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end

    context '13歳以上の場合' do
      let(:name) { 'たろう' }
      # let(:user) { User.new(name: 'たろう', age: 13) }
      let(:user) { User.new(name: name, age: 13) }

      it '漢字で値が返る' do
        expect(user.greet).to eq '僕はたろうです。'

        expect(user.greet).to eq "僕は#{name}です。"
      end
    end

    # describe '#greet' do
    #   it '12歳以下の場合、ひらがなで答えること' do
    #     expect(user.greet).to eq 'ぼくはたろうだよ。'
    #   end
    # end
  end
end
