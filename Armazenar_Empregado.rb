# CLASSE EMPREGADO
class Empregado
 attr_reader :codigo, :nome, :setor, :salarioBruto, :inss

 def Empregado(codigo, nome, setor, salario)
  @codigo = codigo
  @nome = nome
  @setor = setor
  @salarioBruto = salario
  @inss = 0.0
 end

 def calcularInss
 end
end
# CLASSE PARAMETROS INSS
class ParametrosInss
 self.attr_reader :FAIXA = [1659.38, 2765.66, 5531.31]
 self.attr_reader :FAIXALIMITE = [1659.39, 2765.67, 5531.32]
 self.attr_reader :TETO = 4663.75
end