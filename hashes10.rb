
st = [{Name: "Samuel", Age: 28, Local: "Quilicura", Gender: "Masculino"},{Name: "Daniela", Age: 25, Local: "Santiago", Gender: "Femenino"},{Name: "Ignacio", Age: 19, Local: "Quilicura", Gender: "Masculino"},{Name: "David", Age: 20, Local: "Renca", Gender: "Masculino"}]

def datain (name, age, local, gender)
    if gender == 1
      gender = "MASCULINO"
    elsif gender == 2
      gender = "FEMENINO"
    end
    h = {Name: name.capitalize, Age: age, Local: local.capitalize, Gender: gender.capitalize}
    return h
end
def menu
  puts "Bienvenido al menú\n"
  puts
  puts "1) Ingresar datos de alumno"
  puts "2) Editar datos de alumno"
  puts "3) Eliminar datos de alumno"
  puts "4) Mostrar cantidad de alumnos"
  puts "5) Mostrar comunas"
  puts "6) Alumnos entre 20 y 25 años"
  puts "7) Suma de las edades de los alumnos"
  puts "8) Mostrar promedio de edades"
  puts "9) Mostrar por genero"
  puts "10) Salir"
  puts
  puts "Ingresa una opción"
end
def menusum
  puts "Presiona enter para volver al menú"
  a = gets
  menu
end
def stlist (ah)
  ah.each_with_index do |data,i|
    puts "#{i + 1}) #{(data.to_a)[0][1]} - Edad #{(data.to_a)[1][1]} - Comuna #{(data.to_a)[2][1]} - Género #{(data.to_a)[3][1]}"
  end
end

#------------------------------------------
menu
opt = gets.chomp.to_i
while opt > 10 || opt < 1
  puts "Ingrese una opción válida"
  opt = gets.chomp.to_i
end
while opt != 10
  case
  when opt == 1
    n ,a ,l ,g = 0 ,0 ,0 ,0
    puts "Ingresa el nombre"; n = gets.chomp.to_s
    while n.size < 2
      puts "Ingresa un nombre válido"; a = gets.chomp.to_s
    end
    puts "Ingresa la edad"; a = gets.chomp.to_i
    while a < 6
      puts "Ingresa una edad válida"; a = gets.chomp.to_i
    end
    puts "Ingresa la comuna"; l = gets.chomp.to_s
    puts "Ingresa el género, 1 para masculino, 2 para femenino"; g = gets.chomp.to_i
    while g > 2 || g < 1
      puts "Ingresa un género válido"
      g = gets.chomp.to_i
    end
    h = datain n, a, l, g
    st.push(h)
    puts "Datos ingresados al final\n"
    stlist st
  when opt == 2
    puts
    puts "Lista de alumnos"
    puts
    stlist st
    puts
    puts "Ingrese el número del alumno a modificar"
    n = gets.chomp.to_i
    puts
    array = (st[n-1].to_a)
    puts "Datos a modificar"
    puts array[0][1] + " - Edad " + array[1][1].to_s + " - Comuna " + array[2][1] + " - Género " + array[3][1]
    puts
    puts "Si no desea modificar algún dato, solo presionar enter"
    #Name
    print "Nombre a asignar: "
    na = gets.chomp.to_s.capitalize
    if na == ""
      na = array[0][1]
    else
      while na.size < 3
        print "Ingresa un nombre válido: "
        na = gets.chomp.to_s.capitalize
      end
    end
    #Age
    print "Edad a asignar: "; ag = gets.chomp
    if ag.to_s == ""
      ag = array[1][1]
    else
      while ag.to_i < 6
      puts "Ingresa una edad válida"; ag = gets.chomp.to_i
      end
    end
    ag = ag.to_i
    #Local
    print "Comuna a asignar: "; lo = gets.chomp.to_s
    if lo == ""
      lo = array[2][1]
    end
    #Gender
    print "Género a asignar(1 para masculino, 2 para femenino): "; ge = gets.chomp
    if ge.to_s == ""
      ge = array[3][1]
    else
    while ge.to_i > 2 || ge.to_i < 1
      puts "Ingresa un género válido"
      ge = gets.chomp.to_i
        end
    end
    if ge.to_i == 1
      ge = "Masculino"
    elsif ge.to_i == 2
      ge = "Femenino"
    end
    #Assign
    puts "Valores asignados"
    array[0][1] = na.capitalize
    array[1][1] = ag
    array[2][1] = lo.capitalize
    array[3][1] = ge.capitalize
    st[n-1] = array.to_h
    stlist st

  when opt == 3
    puts
    puts "Lista de alumnos"
    puts
    stlist st
    puts
    puts "Ingrese el número del alumno a eliminar"
    d = gets.chomp.to_i
    while d > st.count || d < 1
      puts "Ingrese un número válido"
      d = gets.chomp.to_i
    end
    puts "¿Está seguro que desea eliminar los datos? Ingrese si o no"
    r = gets.chomp.to_s.downcase
    while r != "si" && r != "no"
      puts "Ingrese una opción válida"
      r = gets.chomp.to_s.downcase
    end
    if r == "si"
      puts "Datos eliminados:"
      st.delete_at(d-1)
    elsif r == "no"
      puts "Eliminación cancelada"
    end
    stlist st
    puts
  when opt == 4
    puts
    puts "La cantidad de alumnos es: "+ (st.size.to_s)
  when opt == 5
    puts
    puts "Comunas de los alumnos"
    st.size.times do |i|
      puts (st[i].to_a)[0][1] + " - " + (st[i].to_a)[2][1]
    end
  when opt == 6
    puts
    puts "Personas entre 20 y 25 años"
    st.size.times do |i|
      tw = (st[i].to_a)
      if tw[1][1] >= 20 && tw[1][1] <= 25
        puts tw[0][1] + " - Edad: " + tw[1][1].to_s
    end
    end
  when opt == 7
    print "Suma de las edades: "
    sum = 0
    st.size.times do |i|
      sum += (st[i].to_a)[1][1]
    end
    puts sum
  when opt == 8
    print "Promedio de las edades: "
    sum = 0.0
    st.size.times do |i|
      sum += (st[i].to_a)[1][1]
    end
    puts sum/st.size
    puts
  when opt == 9
    puts
    puts "Lista de alumnos de género Femenino"
      st.size.times do |i|
        array = (st[i].to_a)
        if array[3][1] == "Femenino"
          puts "- " + array[0][1]
        end
      end
      puts
      puts "Lista de alumnos de género Masculino"
      st.size.times do |i|
        array = (st[i].to_a)
        if array[3][1] == "Masculino"
          puts "- " + array[0][1]
        end
      end
  end
  menusum
  opt = gets.chomp.to_i
end
puts
puts "Hasta pronto"

  
