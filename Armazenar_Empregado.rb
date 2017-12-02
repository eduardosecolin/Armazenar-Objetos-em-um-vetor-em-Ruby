# CLASSE EMPREGADO
class Empregado
 attr_accessor :codigo, :nome, :setor, :salarioBruto, :inss

 def Empregado()
 end

 def calcularInss
  if (@salarioBruto <= ParametrosInss.FAIXA[0])
    @inss = @salarioBruto * 0.08
  elsif ((@salarioBruto < ParametrosInss.FAIXALIMITE[0]) && (@salarioBruto <= ParametrosInss.FAIXA[1]))
    @inss = @salarioBruto * 0.09
  elsif ((@salarioBruto < ParametrosInss.FAIXALIMITE[1]) && (@salarioBruto <= ParametrosInss.FAIXA[2]))
    @inss = @salarioBruto * 0.11
  else
    @inss = ParametrosInss.TETO * 0.11
  end
 end
end
# CLASSE PARAMETROS INSS
class ParametrosInss
 @FAIXA = [1659.38, 2765.66, 5531.31]
 @FAIXALIMITE = [1659.39, 2765.67, 5531.32]
 @TETO = 4663.75
end
# CLASSE GERENCIAR EMPREGADOS
class GerenciarEmpregados
 @listaEmpregado = []

 def adicionarEmpregado(e = Empregado)
  @listaEmpregado.push(e)
 end
 def removerEmpregado(e = Empregado)
  @listaEmpregado.delete(e)
 end
end
# -----------------------------------------------------------------#
emp = Empregado.new()
puts "CODIGO : "
emp.codigo = gets.chomp.to_i
puts "NOME   : "
emp.nome = gets.chomp
puts "SETOR  : "
emp.setor = gets.chomp
puts "SALARIO: "
emp.salarioBruto = gets.chomp.to_f



=begin
ge = GerenciarEmpregados.new
ge.adicionarEmpregado(emp)
ge.listaEmpregado.each do |item|
    puts item
end
=end
