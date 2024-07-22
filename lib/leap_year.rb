class LeapYear
  attr_reader :is_leap, :year

  def initialize(year, is_leap = false)
    @year = year
    @is_leap = is_leap
  end

  def leap_year
    run_leap_year
    leap_year_judgement
  end

  private

  def run_leap_year
    @is_leap =
      if year.modulo(400).zero?
        true
      elsif year.modulo(100).zero?
        false
      elsif year.modulo(4).zero?
        true
      end

    # if is_leaf.eql?(true)
    #   "#{year}年は閏年です"
    # else
    #   "#{year}年は閏年ではありません"
    # end
  end

  def leap_year_judgement
    if is_leap.eql?(true)
      "#{year} は閏年です"
    else
      "#{year} は閏年ではありません"
    end
  end
end

leap_year = LeapYear.new(2000)
# leap_year.run_leap_year
# puts leap_year.leap_year_judgement
puts leap_year.leap_year
