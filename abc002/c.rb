ary = gets.chomp.split.map(&:to_i)
xs = []
ys = []
ary.each_with_index do |num,i|
	if i % 2 == 0
		xs << num
	else
		ys << num
	end
end

x_max = xs.max
x_min = xs.min
y_min = ys.min
y_max = ys.max
cambas = ( x_max - x_min ) * ( y_max - y_min )

def diff(i,j)
	return i>j ? i-j : j-i
end

s = []
points = [[x_min,y_min],[x_max,y_min],[x_min,y_max],[x_max,y_max]]
3.times do |i|
	s << diff(xs[i-1],xs[i]) * diff(ys[i-1],ys[i])
	points.delete([xs[i],ys[i]])
end
#p s

sum = s.inject(&:+) / 2.0
3.times do |i|
	unless ( [x_min,x_max].include?(xs[i]) && [y_min,y_max].include?(ys[i]) )
		a = diff(points[0][0],xs[i]) * diff(points[0][1],ys[i])
		b = diff(points[1][0],xs[i]) * diff(points[1][1],ys[i])
		sum += a>b ? b : a
	end
end

#puts sum
puts cambas - sum
