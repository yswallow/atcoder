all,n_gyo,m_q = gets.chomp.split("\s").map(&:to_i)
#p all,n_gyo,m_q
lines = []
queries = []
n_gyo.times { |i| lines << gets.to_i }
m_q.times { |i| queries << gets.chomp.split("\s").map(&:to_i) }

queries.each do |q|
	x,y = q
	sum = 0
	ranges = []
	lines.each do |match|
		before = match - 1
		after = all - match
		min = match - ( before > x ? x : before )
		max = match + ( after > y ? y : after )
#		print "#{min},#{max}\n"
		ranges << (min..max)
	end
	ary = []
	ranges.each { |range| 
		ary = (ary | range.to_a)
	}
	puts ary.size
end
	
