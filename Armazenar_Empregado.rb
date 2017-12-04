require_relative 'parametrosinssmod.rb'

# CLASSE EMPREGADO
class Empregado
 include ParametrosInss

 attr_accessor :codigo, :nome, :setor, :salarioBruto, :inss

 def Empregado()
 end

 def calcularInss
  if (@salarioBruto <= ParametrosInss::FAIXA[0])
    @inss = @salarioBruto * 0.08
  elsif ((@salarioBruto < ParametrosInss::LIMITEFAIXA[0]) && (@salarioBruto <= ParametrosInss::FAIXA[1]))
    @inss = @salarioBruto * 0.09
  elsif ((@salarioBruto < ParametrosInss::LIMITEFAIXA[1]) && (@salarioBruto <= ParametrosInss::FAIXA[2]))
    @inss = @salarioBruto * 0.11
  else
    @inss = ParametrosInss::TETO * 0.11
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

