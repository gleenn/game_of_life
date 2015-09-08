class GoL
  def initialize(size)
    @size = size
  end

	def go(n)
    current = '1'.rjust(@size, '0')
    results = [current]
    (n-1).times do
      current = next_iteration(current)
      results << current
    end
    results
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

  def next_iteration(str)
    cells = str.split(//) + ['0']
    cells.zip(['0']+cells,['0', '0']+cells).map{|a,b,c| MAP["#{b}#{c}#{a}"]}.tap{|a|a.shift}.join
  end
end


