class GoL
  def initialize(size)
    @size = size
  end

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
