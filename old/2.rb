def num(char)
	case char
	when "a"
1
when "b"
2
when "c"
3
when "d"
4
when "e"
5
when "f"
6
when "g"
7
when "h"
8
when "i"
9
when "j"
10
when "k"
11
when "l"
12
when "m"
13
when "n"
14
when "o"
15
when "p"
16
when "q"
17
when "r"
18
when "s"
19
when "t"
20
when "u"
21
when "v"
22
when "w"
23
when "x"
24
when "y"
25
when "z"
26
else
end
end

def n_s(num)
	if num >= 26
		{ char: "z" , num: num-26}
	end
	
	case num
	when 1
	{ char: "a", num: 0 }
when 2
	{ char: "b", num: 0 }
when 3
	{ char: "c", num: 0 }
when 4
	{ char: "d", num: 0 }
when 5
	{ char: "e", num: 0 }
when 6
	{ char: "f", num: 0 }
when 7
	{ char: "g", num: 0 }
when 8
	{ char: "h", num: 0 }
when 9
	{ char: "i", num: 0 }
when 10
	{ char: "j", num: 0 }
when 11
	{ char: "k", num: 0 }
when 12
	{ char: "l", num: 0 }
when 13
	{ char: "m", num: 0 }
when 14
	{ char: "n", num: 0 }
when 15
	{ char: "o", num: 0 }
when 16
	{ char: "p", num: 0 }
when 17
	{ char: "q", num: 0 }
when 18
	{ char: "r", num: 0 }
when 19
	{ char: "s", num: 0 }
when 20
	{ char: "t", num: 0 }
when 21
	{ char: "u", num: 0 }
when 22
	{ char: "v", num: 0 }
when 23
	{ char: "w", num: 0 }
when 24
	{ char: "x", num: 0 }
when 25
	{ char: "y", num: 0 }
when 26
	{ char: "z", num: 0 }
else
	{ char: "z" , num: num-26}
end
end
# def numの終わり

str = gets.chomp

old_str = str.chomp
#if str == "k"
#	puts "bbbbba"
#else
sum = 0
while char = str.slice!(-1)
	sum += num(char)
end
new_str = ""
while sum > 0
	hash = n_s(sum)
	sum = hash[:num]
	new_str << hash[:char]
end
#p old_str
#p new_str
if new_str == old_str
	puts "NO"
else
	puts new_str
end
end
