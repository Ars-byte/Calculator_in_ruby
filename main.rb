print "Introduce un número: "
num1_string = gets.chomp

print "Introduce otro número: "
num2_string = gets.chomp

options = <<-OPTIONS
Elige una operación:
1. Sumar
2. Restar
3. Multiplicar
4. Dividir
OPTIONS
print options
operation = gets.chomp

if operation == "1"
  result = num1_string.to_f + num2_string.to_f
  puts "El resultado de la suma es: #{result}"
elsif operation == "2"
  result = num1_string.to_f - num2_string.to_f
  puts "El resultado de la resta es: #{result}"
elsif operation == "3"
  result = num1_string.to_f * num2_string.to_f
  puts "El resultado de la multiplicación es: #{result}"
elsif operation == "4"
  if num2_string.to_f == 0
    puts "Error: No se puede dividir entre cero."
  else
    result = num1_string.to_f / num2_string.to_f
    puts "El resultado de la división es: #{result}"
  end
else
  puts "Operación no válida."
end

while true
  print "n¿Quieres realizar otra operación? (s/n): "
  answer = gets.chomp.downcase
  if answer == "s"
    load __FILE__
    break
  elsif answer == "n"
    puts "¡Hasta luego!"
    break
  else
    puts "Por favor, responde con 's' o 'n'."
  end
end
