require_relative '../roman_numerals_code_kata'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 3 to III' do
      expect(convert_to_roman(3)).to eq "III"
    end

    it 'converts 9 to IX' do
      expect(convert_to_roman(9)).to eq "IX"
    end

    it 'converts 1066 to MLXVI' do
      expect(convert_to_roman(1066)).to eq "MLXVI"
    end

    it 'converts 1989 to MCMLXXXIX' do
      expect(convert_to_roman(1989)).to eq "MCMLXXXIX"
    end
  end
end

describe 'converting a Roman numeral to an Arabic number' do
  describe 'old Roman numerals' do
    it 'converts I to 1' do
      expect(convert_to_arabic("I")).to eq 1
    end

    it 'converts III to 3' do
      expect(convert_to_arabic("III")).to eq 3
    end

    it 'converts MLXVI to 1066' do
      expect(convert_to_arabic("MLXVI")).to eq 1066
    end

    it 'converts MCMLXXXIX to 1989' do
      expect(convert_to_arabic("MCMLXXXIX")).to eq 1989
    end
  end
end