require_relative '../lib/user2'

Rspec.describe User do
  describe '#greet' do
    context '12歳以下の場合' do
      it 'ひらがなで答えること' do
        user = User.new(name: '太郎', age:12)
        expect(user.greet).to eq '僕は太郎だよ。'
      end
    end
  end
  describe '#greet' do
    let(:user) {User.new(name: 'taeo', age: age)}
    subject {user.greet}
    context '12歳以下の場合' do
      let(:age) {12}
      it {is_expected.to eq '僕は太郎だよ'}
    end
    context '13歳以上の場合' do
      let(:age) {13}
      it { is_expected.to eq '僕は太郎です'}
    end
  end


end
