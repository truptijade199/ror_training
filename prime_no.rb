puts "Enter number:"

n = gets.chomp.to_i

if (n < 2)
    puts "No. is not prime"
else
    (2..n-1).each do |ele|
        if(n % ele) == 0
            puts "No. is not prime"
        else
            puts "No. is prime"
        end
    end
    
end
