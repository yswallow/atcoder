def f
	i = gets.to_i
	words = []
	i.times { words << gets.chomp }
	new_words = []
#	p words
	new_words << words[0]
	(words.size - 1 ).times do |i|
#		puts i
		i+=1
		if new_words.include?( words[i] ) || ( words[i-1][-1] != words[i][0] )
			#(今の変数での)i+1番目の負け
			puts (i+1)%2==0 ? "WIN" : "LOSE"
			return true
		else
			new_words << words[i]
		end
	end
	return false
end

puts "DRAW" unless f
