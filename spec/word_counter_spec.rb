# require_relative '../lib/rankC/word_counter'

RSpec.describe WordCounter do
  describe '#count_words' do

  # before do
  #   allow_any_instance_of(WordCounter).to receive(:gets).and_return(*input.lines)
  # end


  # let(:input) do
  #   <<~INPUT.lines.map(&:strip).join("\n")
  #   INPUT
  # end
  let(:words) { %w[red green blue blue green blue] }
  let(:count_words) { WordCounter.new(words).count_words}
  let(:expected) do
    # <<~OUTPUT.lines.map(&:strip).join("\n")
    #   red 1
    #   green 2
    #   blue 3
    # OUTPUT

    ['red 1', 'green 2', 'blue 3']
  end

  context 'count_wordsの返り値が' do
    it '[文字列 数字,文字列 数字..]の形で返す' do
      # expect(count_words).to eq '[red 1, green 2, blue 3]'
      expect(count_words).to eq expected
    end
  end
  end
end
