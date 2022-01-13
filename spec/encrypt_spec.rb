require_relative '../encrypt'

describe '#encrypt' do
  it 'should return an empty string when given an empty string' do
    expect(encrypt('')).to eq('')
  end

  it 'should return B when given E' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return return a encrypted sentence for quick brown fox v1' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return return a encrypted sentence for quick brown fox v2' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!"
    expect(actual).to eq(expected)
  end
end
