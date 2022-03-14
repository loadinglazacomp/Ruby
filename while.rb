rodando = true

@vida = 300
@dano = 20

def seu_turno
    print 'Escreve fio: '
    resposta = gets.chomp

    if resposta == 'sai'
        rodando = false
    end

    if resposta == 'oi'
        puts 'Qual o seu nome?'
        nome = gets.chomp
        puts "oi, #{nome}"
    end

    if resposta == 'ataca'
        puts "vida atual: #{@vida}"
        puts "dano: #{@dano}"

        @vida -= @dano

        if vida <= 0
            puts 'vc morreu, tonto'
            rodando = false
        end

        puts "vida pos ataque: #{vida}"
    end
end

def turno_dele
    print 'turno dele'
end

while(rodando)
    seu_turno
    turno_dele
end