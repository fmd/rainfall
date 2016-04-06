require_relative 'rainfall'

RSpec.describe 'Rainfall' do
  it 'should calculate volumes correctly' do
    expect(rainfall([2, 1, 2])).to eq(1)
    expect(rainfall([1, 2])).to eq(0)
    expect(rainfall([5, 1])).to eq(0)
    expect(rainfall([2, 5, 1, 2, 3, 4, 7, 7, 6])).to eq(10)
    expect(rainfall([2, 5, 1, 3, 1, 2, 1, 7, 7, 6])).to eq(17)
    expect(rainfall([2, 7, 2, 7, 4, 7, 1, 7, 3, 7])).to eq(18)
    expect(rainfall([6, 7, 7, 4, 3, 2, 1, 5, 2])).to eq(10)
    expect(rainfall([2, 5, 1, 2, 3, 4, 7, 7, 6,
                     2, 7, 1, 2, 3, 4, 5, 5, 4])).to eq(26)
  end
end
