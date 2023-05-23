def calcular_porcentaje(cantidad, total)
  (cantidad / total.to_f) * 100
end

def calcular_gastos_envio(total, gastos_envio)
  gastos_envio / total.to_f
end

def calcular_precio_con_gastos_envio(precio, porcentaje_gastos_envio)
  precio + (precio * porcentaje_gastos_envio)
end

# Obtener los datos del artículo
puts "Enter the total number of items sold:"
number_of_items = gets.chomp.to_i

(1..number_of_items).each do |item|
puts "Ingrese el tipo de artículo:"
tipo_articulo = gets.chomp
end

puts "Ingrese la cantidad de #{tipo_articulo}:"
cantidad_articulo = gets.chomp.to_i

puts "Ingrese el precio del #{tipo_articulo}:"
precio_articulo = gets.chomp.to_f

puts "Ingrese los gastos de envío:"
gastos_envio = gets.chomp.to_f

# Calcular el total
total = cantidad_articulo * precio_articulo

# Calcular el porcentaje que representa cada artículo del total
porcentaje = calcular_porcentaje(cantidad_articulo, total)

# Calcular los gastos de envío equitativos por artículo
porcentaje_gastos_envio = calcular_gastos_envio(total, gastos_envio)

# Calcular el precio de cada artículo con los gastos de envío
precio_con_gastos_envio = calcular_precio_con_gastos_envio(precio_articulo, porcentaje_gastos_envio)

puts "El total de #{tipo_articulo} es: #{total}"
puts "El porcentaje que representa cada artículo del total es: #{porcentaje}%"
puts "El precio de cada artículo con los gastos de envío es: #{precio_con_gastos_envio}"