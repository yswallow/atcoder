deg,d = gets.chomp.split("\s").map { |str| str.to_i }

#dps = d/60
huryoku = if d <= 12
		0
	elsif d <= 90
		1
	elsif d <= 198
		2
	elsif d <= 324
		3
	elsif d <= 474
		4
	elsif d <= 642
		5
	elsif d <= 828
		6
	elsif d <= 1026
		7
	elsif d <= 1242
		8
	elsif d <= 1464
		9
	elsif d <= 1704
		10
	elsif d <= 1956
		11
	else
		12
	end
houi = 'C' if d == 0
	
