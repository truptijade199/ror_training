
module CountryModule
    def is_eligible_for_loan()
       if(@population > 100000 && @gdp < 5)
        puts "Country #{@name} will get a loan."
       else
        puts "Country #{@name} is not eligible for loan."
       end
    end

    def will_get_chance_in_UNS_council()
        if(@is_developed)
            puts "Country #{@name} will get a chance in UNS council."
        else
            puts "Country #{@name} will not get a chance in UNS council."
        end
        
    end

    def is_country_win_a_war()
        if(@army_strength > 10000)
            puts "Country #{@name} can win a war."
        else
            puts "Country #{@name} cannot win a war."
        end
    end
end



class Country
    include CountryModule

    attr_reader :name, :population, :gdp, :states, :army_strength, :is_developed

    def initialize(name, population,gdp,states, army_strength, is_developed)
        @name = name
        @population = population
        @gdp = gdp
        @states = states
        @army_strength = army_strength
        @is_developed = is_developed
    end

end 

puts "how many countries?"
number_of_countries = gets.chomp.to_i
countries = []
number_of_countries.times do 
    puts "What is the name"
    name = gets.chomp
    puts "What is the population"
    population = gets.chomp.to_i
    puts "What is the GDP"
    gdp = gets.chomp.to_f
    puts "What is the number of states"
    states = gets.chomp.to_i
    puts "what is the army strength"
    army_strength = gets.chomp.to_i
    puts "is it developed?(Y/N)"
    developed = gets.chomp.upcase == "Y" ? true : false 
    c = Country.new(name,population,gdp,states,army_strength,developed)
    countries << c
end

#binding.irb

countries.each do |c|
    c.is_eligible_for_loan
    c.will_get_chance_in_UNS_council
    c.is_country_win_a_war
end
