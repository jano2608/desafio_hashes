inventario= {"Notebooks":4, "PC Escritorio":6, "Routers":10, "Impresoras":6}
def menu
  puts "Bienvenido, ingresa una opción por su número \n
  1) Agregar un item y su stock\n
  2) Eliminar un item y su stock\n
  3) Actualizar un item\n
  4) Ver stock\n
  5) Ver item con mayor stock\n
  6) Verificar item\n
  7) Salir\n"
end
def list (n)
  n.each_with_index do |(item, stock), index|
    puts "#{index + 1}) #{item} - stock #{stock}"
  end
end
def mensum
  puts "Ingresa cualquier tecla para avanzar al menú: "
    m = gets.chomp
    puts "Volviendo al menú"; puts
    menu
end



menu
puts
puts "Ingresa una opción"
  a = gets.chomp.to_i
while a > 7 || a < 1
  puts "Ingresa una opcion valida"
  a = gets.chomp.to_i
end
while a != 7
  case
  when a == 1
    puts "Ingresa un item (formato: item, stock) "
    item = (gets.chomp.to_s)
    while item.include?(",") != true || item.size < 3
      puts "Ingresa un item en (formato: item, stock) "
      item = (gets.chomp.to_s)
    end
    item = item.split(",")
    puts "En proceso" ; puts
    inventario[item[0].strip] = item[1].strip
    puts "Agregado con éxito\n" ; puts
    list inventario; puts
    mensum
  when a == 2
    puts "Escoge un item a eliminar ingresando su número"
    list inventario
    delet = gets.chomp.to_i - 1
    while inventario.count < delet
      puts "Numero no encontrado, ingresa otro item: "
      delet = gets.chomp.to_i
    end
    puts "Buscando item"; puts
    itemo = 0
    inventario.each_with_index do |(item, price), index|
      if index == delet
          puts "Item encontrado" ;puts
          itemo = item
      end
    end
    inventario.delete(itemo)
    puts "Item Borrado"; puts
    list inventario
    mensum
  when a == 3
    puts "Seleccione la opcion a modificar con su numero de lista"
    list inventario
    md = gets.chomp.to_i - 1
    puts "Buscando elemento\n"
    inventario = inventario.to_a
    puts "Ingrese nombre que desea asignar, si no desea modificar, dejar en blanco"
    itemo = gets.chomp.to_s.strip
    puts "Ingrese cantidad de stock que desea asignar, si no desea modificar, dejar en blanco"
    stockm = gets.chomp.strip.to_i
    if itemo == ""
        inventario[md][0] = inventario[md][0]
        puts "Nombre de item no modificado"; puts
    else
        inventario[md][0] = itemo
        puts "Nombre de item modificado a #{itemo}"; puts
    end
    if stockm == ""
        inventario[md][1] = inventario[md][1]
        puts "Stock de item no modificado"; puts
    else
        inventario[md][1] = stockm
        puts "Stock de item modificado a #{stockm}"; puts
    end
    inventario = inventario.to_h
    list inventario; puts
    mensum
  when a == 4
    puts "Mostrando Stock e Items"; puts
    list inventario ;puts
    mensum
  when a == 5
    puts "Buscando item con mayor stock"; puts
    p, e = 0 , 0
    inventario.each do |item, stock|
    if stock > e
      p = item.to_s
      e = stock
    end
    end
    puts "El item con mayor stock es #{p} con #{e}";puts
    mensum
  when a == 6
    puts "Ingrese el item a verificar"
    iv = gets.chomp.to_s.downcase.strip
    inventario = inventario.to_a
    inventario.count.times do |i|
      z = 0
      # Comparación de strings con valor iv ingresado
      if (inventario[i][0].size == iv.size && ((          (inventario[i][0]).to_s.downcase).split(""))[0]   == (iv.split(""))[0]) or iv == (inventario[i][0]  ).to_s.downcase
        puts ;puts "El item si existe en el sistema con el siguiente nombre #{inventario[i][0]}"; puts
        z += 1
      elsif (inventario.count - (i + 1)) == 0 && z > 1
        puts; puts "El item no existe en el sistema"; puts
      end
    end
    inventario = inventario.to_h
    mensum
  end
  puts
  puts "Ingresa una opción"
  a = gets.chomp.to_i
end
puts
puts "Hasta luego"
