require('rspec')
require('coin')

describe('Fixnum#returns smallest amount of change') do
  it('returns the most efficient amount of quarters') do
    expect((50).coin()).to(eq([2,0,0,0]))
  end

  it('returns the most efficient amount of quarters and dimes') do
    expect((60).coin()).to(eq([2,1,0,0]))
  end

  it('returns the most efficient amount of quarters and dimes') do
    expect((65).coin()).to(eq([2,1,1,0]))
  end

  it('returns the most efficient amount of quarters and dimes') do
    expect((66).coin()).to(eq([2,1,1,1]))
  end
end
