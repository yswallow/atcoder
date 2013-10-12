n = gets.to_i
new_ary_i = []

#入力
n.times do |i|
	item = gets.chomp.split("-")
	begin_str = "%s%02d" % [item[0][0..1],(item[0][2..3].to_i/5*5)]
	
	l_m = item[1][2..3].to_i
	l_str_m = "%02d" % (((l_m-1)/5+1)*5)
	l_h = (item[1][0..1]).to_i
	if l_str_m == "60"
		l_h += 1
		l_str_m = "00"
	end
	l_str_h = "%02d" % l_h
	new_ary_i << [begin_str.to_i, (l_str_h + l_str_m).to_i]
end


new_ary_i.uniq!	#重複削除
new_ary_i.sort_by! { |item| item[0] }	#開始時刻が早い順にソート

#実務
new_ary_i.size.times do |i|
	next if i==0
	if new_ary_i[i-1][1] >= new_ary_i[i][1]
		#直前の時間帯に今回の時間帯が完全に含まれる
		new_ary_i[i] = new_ary_i[i-1]
		new_ary_i[i-1] = nil
	elsif new_ary_i[i-1][1] >= new_ary_i[i][0]
		#直前の時間帯と今回の時間帯が一部かぶる
		new_ary_i[i][0] = new_ary_i[i-1][0]
		new_ary_i[i-1] = nil
	end	
end

new_ary_i.compact!

new_ary_i.each do |item|
	puts "%04d-%04d" % item
end
