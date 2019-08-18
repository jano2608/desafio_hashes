
meses= ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas= [2000, 3000, 1000, 5000, 4000]
#-----------------------------------------------
h = {}
ventas.count.times do |i|
  h[meses[i]] = ventas[i]
end
#-----------------------------------------------
h = h.invert
a = 0
p = 0
h.each do |price, month|
if price > a
  a = price
  p = month
end
end

puts "El mes con mayor cantidad de ventas es #{p} con #{a}"
