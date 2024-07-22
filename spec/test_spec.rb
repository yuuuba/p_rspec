require_relative '../lib/test'

RSpec.describe Test do
  describe '#foo' do
    context 'テスト' do
      let(:test) { Test.new(hoge: 'hige', huga: 12) }
      it 'tesutesu' do
        expect(test.greet).to eq 'テストですよ'
      end
    end
  end
end
