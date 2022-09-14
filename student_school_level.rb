puts "Enter student grade :"

grade = gets.chomp.to_i

if (grade > 0 && grade <= 5)
    puts "Elementary."
elsif (grade > 5 && grade <= 8)
    puts "Middle school."
elsif (grade > 8 && grade <= 12)
    puts "High school."
elsif (grade > 12)
    puts "College."
end