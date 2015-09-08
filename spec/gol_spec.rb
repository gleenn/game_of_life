$:.unshift "#{File.dirname(__FILE__)}/../src"
require 'gol.rb'

describe GoL do
  subject { GoL.new(5) }

	it 'works' do
		expect(subject.go(0)).to eq(['00001'])
		expect(subject.go(5)).to eq(['00001', '00011', '00111', '01101', '11111'])
  end

  describe '#next' do
    it 'returns the next iteration' do
      expect(subject.next_iteration('00001')).to eq('00011')
    end
  end
end
