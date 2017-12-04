require_relative 'Armazenar_Empregado.rb'

vetor = []
indice = 0
opc = 0
puts "Quantos empregados quer armazenar"
num = gets.chomp.to_i

while (opc != num)
vetor[indice] = Empregado.new
puts "CODIGO : "
vetor[indice].codigo = gets.chomp.to_i
puts "NOME   : "
vetor[indice].nome = gets.chomp
puts "SETOR  : "
vetor[indice].setor = gets.chomp
puts "SALARIO: "
vetor[indice].salarioBruto = gets.chomp.to_f
vetor[indice].calcularInss

indice = indice + 1
opc = opc + 1
end

vetor.each do |item|
  puts item.toString
  puts "\n"
end