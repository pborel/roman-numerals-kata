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

# p roman(5)
# p roman(3)
# p roman(4)
# p roman(10)
# p roman(9)
# p roman(2005)
# p roman(45)
# p roman(1)
# p roman(1066)
# p roman(1989)


# Works for some cases. . . until numbers are chained and must be subtracted
# def arabic(letters)
#   answer = 0
#   new_letters = letters.split("")
#   new_letters.each do |letter|
#     answer += NUMERALS.key(letter)
#   end
#   return answer
# end

# p arabic("I")
# p arabic("III")
# p arabic("V")
# p arabic("X")
# p arabic("IX") # Fix this
# p arabic("IV") # Fix this