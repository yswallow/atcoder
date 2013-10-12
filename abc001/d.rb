n = gets.to_i
ary = []

#入力
n.times do
	item = gets.chomp.split("-")
	begin_str = "%s%02d" % [item[0][0..1],(item[0][2..3].to_i/5*5)]
	
	end_str_m = "%02d" % (((item[1][2..3].to_i-1)/5+1)*5)
	end_h = (item[1][0..1]).to_i
	if end_str_m == "60"
		end_h += 1
		end_str_m = "00"
	end
	end_str_h = "%02d" % end_h
	ary << [begin_str.to_i, (end_str_h + end_str_m).to_i]
end

ary.uniq!	#重複削除
ary.sort_by! { |item| item[0] }	#開始時刻が早い順にソート

#実務
ary.size.times do |i|
	next if i==0
	if ary[i-1][1] >= ary[i][1]
		#直前の時間帯に今回の時間帯が完全に含まれる
		ary[i] = ary[i-1]
		ary[i-1] = nil
	elsif ary[i-1][1] >= ary[i][0]
		#直前の時間帯と今回の時間帯が一部かぶる
		ary[i][0] = ary[i-1][0]
		ary[i-1] = nil
	end	
end
ary.compact!

ary.each { |item| puts "%04d-%04d" % item } #表示
