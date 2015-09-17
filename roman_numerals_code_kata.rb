require_relative 'helpers'

NUMERALS = {
  1000 => "M",
   900 => "CM",
   500 => "D",
   400 => "CD",
   100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I",
}

def convert_to_roman(num)
  answer = ""
  NUMERALS.each do | value, letter |
    answer << letter * (num / value)
    num = num % value
  end
  return answer
end

# Works for some cases. . . until numbers are chained and must be subtracted
def convert_to_arabic(numerals)
  answer = 0
  numerals_array = numerals.split("")
  used_numerals = []

  numerals_array.each do |numeral|
    arabic_value = get_arabic_value(numeral)
    last_arabic_value = get_arabic_value(used_numerals.last)

    if(used_numerals.last.nil? || last_arabic_value >= arabic_value)
      answer += arabic_value
    else
      answer += (arabic_value - (last_arabic_value * 2))
    end

    used_numerals << numeral
  end

  return answer
end