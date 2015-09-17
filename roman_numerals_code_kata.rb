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

@answer = ""

def roman(num)
  NUMERALS.each do | value, letter |
    @answer << letter * (num / value)
    num = num % value
  end
  return @answer
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

def arabic(letters)
  NUMERALS.each do | value, letter |
    curren
    t_letter = letters.pop
    @answer << letter * (num / value)
    num = num % value
  end
  return @answer
end