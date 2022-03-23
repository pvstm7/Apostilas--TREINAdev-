puts "Bem-vindo ao cookbook, sua rede social de receitas"
 
receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opção = gets.to_i()


while(opção != 3) do 
    if(opção == 1) 
    puts "Digite o nome da receita"
    nome = gets.chomp()
    puts "Digite o tipo da receita"
    tipo = gets.chomp()

    receitas << { nome: nome, tipo: tipo}
    puts
    puts "receita #{nome} cadastrada com sucesso"
    puts
    elsif (opção == 2)
    puts "========== receitas cadastradas =========="
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita [:tipo]}"
        end
    puts
    else
       puts "opção inválida" 
    end
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opção: "
    opção = gets.to_i()


end

puts "Obrigado por usar o cookbook, até logo"