class GoL
  def self.run
    new(10).go(20).each do |line|
      puts line
    end
  end

  def initialize(size)
    @size = size
  end

  MAP = {
      '000' => '0',
      '001' => '1',
      '010' => '1',
      '011' => '1',
      '100' => '1',
      '101' => '1',
      '110' => '1',
      '111' => '0',
  }

	def go(n)
    results = ['1'.rjust(@size, '0')]
    for i in 0...(n-1)
      chars = results.last.split('')
      next_cell = ''
      for j in 0...(chars.size)
        next_cell << MAP["#{j==0?'0':chars[j-1]}#{chars[j]}#{chars.fetch(j+1,'0')}"]
      end
      results << next_cell
    end
    results
  end
end

if __FILE__ == $0
  GoL.run
end