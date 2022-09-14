a = ("a".."z").to_a

puts "Using built-in method reverse : "
a.reverse.each do |ele| puts ele end


puts "Without using built-in method reverse : "

array_reversed = []

a.each do |x|
array_reversed.unshift x
end

puts array_reversed

