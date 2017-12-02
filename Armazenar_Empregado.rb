# CLASSE EMPREGADO
class Empregado
 attr_accessor :codigo, :nome, :setor, :salarioBruto, :inss

 def Empregado()
 end

 def calcularInss
  if (@salarioBruto <= 1659.38)
    @inss = @salarioBruto * 0.08
  elsif ((@salarioBruto < 1659.39) && (@salarioBruto <= 2765.66))
    @inss = @salarioBruto * 0.09
  elsif ((@salarioBruto < 2765.67) && (@salarioBruto <= 5531.31))
    @inss = @salarioBruto * 0.11
  else
    @inss = 4663.75 * 0.11
  end
 end

 def toString
  "----- EMPREGADO -----
  CODIGO : #{codigo} 
  NOME   : #{nome}
  SETOR  : #{setor}
  SALARIO: #{salarioBruto}
  INSS   : #{inss}
  -------</>------------"
 end
end
# -----------------------------------------------------------------#
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

