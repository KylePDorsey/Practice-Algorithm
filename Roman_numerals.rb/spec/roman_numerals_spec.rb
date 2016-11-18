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
        
    it 'converts 1234 to MCCXXXIIII' do
      expect(convert_to_roman(1234)).to eq "MCCXXXIIII"
    end
  end

  describe 'modern Roman numerals' do
    it 'converts 4 to IV' do
      expect(convert_to_roman(4, {modern: true})).to eq "IV"
    end

    it 'converts 9 to IX' do
      expect(convert_to_roman(9, {modern: true})).to eq "IX"
    end

    it 'converts 14 to XIV' do
      expect(convert_to_roman(14, {modern: true})).to eq "XIV"
    end

    it 'converts 44 to XLIV' do
      expect(convert_to_roman(44, {modern: true})).to eq "XLIV"
    end

    it 'converts 99 to XCIX' do
      expect(convert_to_roman(99, {modern: true})).to eq "XCIX"
    end

    it 'converts 400 to CD' do
      expect(convert_to_roman(400, {modern: true})).to eq "CD"
    end

    it 'converts 944 to CMXLIV' do
      expect(convert_to_roman(944, {modern: true})).to eq "CMXLIV"
    end

    it 'converts 1234 to MCCXXXIV' do
      expect(convert_to_roman(1234, {modern: true})).to eq "MCCXXXIV"
    end

    it 'converts 549 to DXLIX' do
      expect(convert_to_roman(549, {modern: true})).to eq "DXLIX"
    end
  end
end