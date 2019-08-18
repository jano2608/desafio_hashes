nombres= ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

name = nombres.select do |i|
          i.size > 5
        end

puts name
puts
#---------------------------------------------
nombres= ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

minus = nombres.map do |i|
        i.downcase
        end

puts minus
puts
#---------------------------------------------
nombres= ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

pname = nombres.select do |i|
        (i.split(""))[0] == "P"
        end

puts pname
puts
#---------------------------------------------
nombres= ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

charc = nombres.map do |i|
        i.size
        end

puts charc
puts
#---------------------------------------------
nombres= ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

nvoc = nombres.map do |i|
        i.gsub(/[aeiou]/,"")
        end

puts nvoc
