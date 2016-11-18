require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it 'converts 1000 to M' do
      expect(convert_to_roman(1000)).to eq "M"
    end
        
    it 'converts 500 to D' do
      expect(convert_to_roman(500)).to eq "D"
    end
        
    it 'converts 1234 to MCCVVVVVVIIII' do
      expect(convert_to_roman(1234)).to eq "MCCVVVVVVIIII"
    end
  end

  describe 'modern Roman numerals' do
    # add tests for modern roman numerals here

  end
end