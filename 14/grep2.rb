all,n_gyo,m_q = gets.chomp.split("\s").map(&:to_i)
#p all,n_gyo,m_q
lines = []
queries = []
n_gyo.times { |i| lines << gets.to_i }
m_q.times { |i| queries << gets.chomp.split("\s").map(&:to_i) }

queries.each do |q|
	x,y = q
	sum = 0
	ranges = [[0,-1]]
	lines.each do |match|
		before = match - 1
		after = all - match
		min = match - ( before > x ? x : before )
		max = match + ( after > y ? y : after )
#		print "#{min},#{max}\n"
		
		if ranges[-1][1] >= min
			ranges[-1][1] = max
		else
			ranges << [min,max]
		end
	end
	ranges.each { |min,max| sum += max - min + 1 }
	puts sum
end
	
