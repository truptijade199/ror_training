=begin
/ start of regex
[0-9] any digits in between 0-9
{10} match 10 digits
/ end of regex
=end

puts "Enter mobile number :"

mobile = gets.chomp.to_i

if ("#{mobile}".match(/^\d{10}$/))
    puts "Valid mobile number."
else
    puts "Invalid mobile number."
end


=begin
/ start of regex
\A match start of string
[\w+\-.]+ at least one word character, plus, hyphen or dot
@ sign
\. dot
[a-z]+ at least one letter
\z match end of string
/ end of regex
i case insensitive
=end

puts "Enter email address :"

email = gets.chomp.to_s

if("#{email}".match(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]{2,5}+\z/i))
    puts "Valid email."
else
    puts "Invalid email."
end


=begin
^ start of string
[\w\s\-] match characters, blank spaces, hyphen and underscore.
* zero or more times
$ end of string
=end

puts "Enter name :"

name = gets.chomp.to_s

if("#{name}".match(/^[\w\s\-]*$/i))
    puts "Valid name."
else
    puts "Invalid name."
end


=begin
MF match exact M/F letter
=end
puts "Enter gender :"

gender = gets.chomp.to_s

if("#{gender}".match(/[MF]/))
    puts "Valid gender."
else
    puts "Invalid gender."
end



=begin
\d digits
[,.] match , and ().)decimal
?\d*/ zero or one time optinal
=end
puts "Enter amount :"

amount = gets.chomp.to_s

if("#{amount}".match(/\d+[,.]?\d*/))
    puts "Valid amount."
else
    puts "Invalid amount."
end


=begin
*: Zero or more times
+: One or more times
?: Zero or one times (optional)
{n}: Exactly n times
{n, }: n or more times
{,m}: m or less times
{n,m}: At least n and at most m times
=end