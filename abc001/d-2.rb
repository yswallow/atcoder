n = gets.to_i
ary = []

#入力
n.times do
	item = gets.chomp.split("-")
	t_begin = item[0][0..1].to_i*12 + item[0][2..3].to_i/5
	t_end = (item[1][0..1]).to_i*12 + ((item[1][2..3].to_i-1)/5+1)
	ary << [t_begin, t_end]
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

ary.each { |ts| puts "%02d%02d-%02d%02d" % ts.map { |t| [t/12,(t%12) * 5] }.flatten } #表示
# from http://abc001.contest.atcoder.jp/submissions/109362 thx!
