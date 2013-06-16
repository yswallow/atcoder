size = gets.to_i
nums = Hash.new 0
gets.chomp.each_char { |c| nums[c] += 1 }
puts nums.values.inject(0) { |sum,i| sum + i % 2 }
