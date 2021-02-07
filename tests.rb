require_relative 'snail'
require 'byebug'

describe 'snail' do
  let(:array){[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]}

  it 'runs all along the first line til the end of the square' do
    expect(snail(array).take(4)).to eq([1, 2, 3, 4])
  end

  it 'continues going down the last column til the last row' do
    expect(snail(array).take(7)).to eq([1, 2, 3, 4, 8, 12, 16])
  end

  it 'goes all along the last row to the left' do
    expect(snail(array).take(10)).to eq([1, 2, 3, 4, 8, 12, 16, 15, 14, 13])
  end

  it 'continues upwards to the top' do
    expect(snail(array).take(12)).to eq([1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5])
  end

  it 'turns right in the upper row' do
    expect(snail(array).take(14)).to eq([1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7])
  end

  it 'finishes with the last remaining row' do
    expect(snail(array).take(16)).to eq([1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10])
  end
end