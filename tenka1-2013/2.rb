n = gets.to_i

questions = []
n.times do |i|
	questions[i] = []
	gets.split("\s").each do |var|
		questions[i] << var.to_i
	end
end
lv_a_size = 0
questions.each do |q|
	sum = q.inject(:+)
	lv_a_size += 1 if sum < 20
end

puts lv_a_size

