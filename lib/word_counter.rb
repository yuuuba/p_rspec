# 英単語列がスペース区切りで与えられる
# 英単語列に含まれる英単語の出現かいすうを出現した順番に出力する

class WordCounter
  attr_reader :words

  def initialize(words)
    @words = words
  end

  # eachで回していく時に自分のidx値より前で比較対象が同じだったら処理スキップ
  # 1,インスタンス受け取る
  # 2,eachで回す(要素をインスタンスと比較して同じものをcountする、
  # 新しい配列に入れる、自分のidx値より前に同じ要素があれば処理せずskip)
  # 3,２をputsで出力
  def count_words


    tally_words = words.tally # メソッド
    keys = words.uniq
    keys.map do |key|
      "#{key} #{tally_words.fetch(key)}"
    end

    result = []
    words.uniq.map do |word|
      # words.eql?(word)
      # 検索メソッド
      # words_count = words.find { _1.eql?(word) }.size
      words_count = words.find_all { word.eql?(_1) }.size

      # pp "word and count: word = #{word}, count = #{words_count}"

      next if result.find { _1.include?(word) }

      result << "#{word} #{words_count}"
    end

    result
  end

end

words = gets.chomp.split
word_counter = WordCounter.new(words)
puts word_counter.count_words
