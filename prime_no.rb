puts "Enter number:"

n = gets.chomp.to_i

flag = true
if (n < 2)
    flag = false
else
    (2...n).each do |ele|
        if(n % ele) == 0
            flag = false
        end
    end
end

if flag == true
    puts "No. is prime"
else
    puts "No. is not prime"
end