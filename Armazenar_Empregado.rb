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
  elsif ((@salarioBruto > ParametrosInss::LIMITEFAIXA[0]) && (@salarioBruto <= ParametrosInss::FAIXA[1]))
    @inss = @salarioBruto * 0.09
  elsif ((@salarioBruto > ParametrosInss::LIMITEFAIXA[1]) && (@salarioBruto <= ParametrosInss::FAIXA[2]))
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
