n = gets.to_i
ary = []
larges = []
ms = []
smalls = []
n.times { ary << gets.chomp.split(" ") }

ary.each do |item|
	larges << item[0]
	ms << item[1].to_i
	smalls << item[2]
end

most_larges = larges - smalls
most_smalls = smalls - larges

search_from_larges = []
most_larges.each_with_index do |item,t|
	search_from_larges[t] = []
	larges.each_with_index do |str,i|
		search_from_larges[t] << smalls[i] if str == item
	end
end

