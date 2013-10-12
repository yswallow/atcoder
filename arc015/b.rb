n = gets.to_i
ts = []
sum = Array.new(6,0)
n.times do |i|
	ts << gets.chomp.split(" ").map { |num| num.to_f }
end

ts.each do |t|
	max = t[0]
	if max >= 35
		sum[0] += 1
	elsif max >= 30
		sum[1] += 1
	elsif max >= 25
		sum[2] += 1
	elsif max < 0
		sum[5] += 1
		next
	end
	
	min = t[1]
	if min < 0
		sum[4] += 1
	elsif min >= 25
		sum[3] += 1
	end
end

puts sum.join(" ")
			
