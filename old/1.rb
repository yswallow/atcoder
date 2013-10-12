str = gets.chomp
n = gets.to_i
t = Array.new
i = 0
rt = []
n.times do |i|
	t[i] = gets.chomp
	t[i].gsub!("*","[a-z]")
	t[i] = "^" + t[i] + "$"
	rt[i] = Regexp.new(t[i])
end
new_str = ""
str.split(/\s/).each do |word|
	rt.each do |regex|
		if regex =~ word
			word = "*" * word.length
		end
	end
	new_str << word + " "
end

new_str.chop!
puts new_str
