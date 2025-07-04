# spec/caesar_cipher_spec.rb

require_relative '../caesar'

RSpec.describe '#caesar_cipher' do
  it 'shifts lowercase and uppercase letters by the given amount' do
    expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
  end

  it 'wraps around the alphabet correctly' do
    expect(caesar_cipher('xyz XYZ', 3)).to eq('abc ABC')
  end

  it 'handles a shift of 0 (no change)' do
    expect(caesar_cipher('Hello, World!', 0)).to eq('Hello, World!')
  end

  it 'preserves non-letter characters' do
    expect(caesar_cipher('1234!@#$', 10)).to eq('1234!@#$')
  end

  it 'works with negative shifts' do
    expect(caesar_cipher('Bmfy f xywnsl!', -5)).to eq('What a string!')
  end
end
