
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

#--------------------------------------------------
personas_hash = {}

personas.count.times do |i|
  personas_hash[personas[i]] = edades[i]
end

personas_hash
#--------------------------------------------------

def prom (a)
  p = 0.0
  a.each do |people, age|
    p += age
  end
  puts "El promedio de edad es: " + (p/a.count).to_s
end

prom personas_hash
