ip = gets.chomp.to_i

if ip > 0 && ip <= 127
    puts "Class A"
elsif ip > 128 && ip <= 191
    puts "Class B"
elsif ip > 191 && ip <= 223
    puts "Class C"
elsif ip > 223 && ip <= 239
    puts "Class C"
elsif ip > 239 && ip <= 255
    puts "Class C"
end

=begin
ip = 128.0.0.0

if ip > 0.0.0.0 && ip <= 127.255.255.255
    puts "Class A"
elsif ip > 128.0.0.0 && ip <= 191.255.255.255
    puts "Class B"
elsif ip > 192.0.0.0 && ip <= 255.255.255.254
    puts "Class C,D & E"
end
=end

=begin
Class A, from 0.0.0.0 to 127.255.255.255

Class B, from 128.0.0.0 to 191.255.255.255

Class C, D and E, from 192.0.0.0 to 255.255.255.254
=end
