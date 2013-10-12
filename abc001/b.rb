m = gets.to_i
km = m / 1000
if m < 100
	vv = 0
elsif m <= 5000
	vv = m/100
elsif m <= 30000
	vv = km + 50
elsif m <= 70000
	vv = (km-30)/5+80
else
	vv = 89
end

puts "%02d" % vv
