class Heroi 
    attr_accessor :vida,:inteligencia, :forca, :nome, :stamina
    def initialize(vida, inteligencia, forca, stamina)
        print "Qual é o nome do player 1? "
        @nome = gets.chomp
        @vida = vida
        @inteligencia = inteligencia
        @forca = forca
        @stamina = stamina
    end

    def dialogoinicial(ataca, defende)
        puts "========================================="
        puts "Olá, #{self.nome_heroi}! Você acabou de chegar,
        mas já possui surpreendentes #{self.vida} de vida, com 
        #{self.forca} de força. Isso é incrível! "
    end


end

class Vilao 
    attr_accessor :vida,:inteligencia, :forca, :nome, :stamina
    def initialize(vida, inteligencia, forca, stamina)
        print "Qual é o nome do player 2?"
        @nome = gets.chomp
        @vida = vida
        @inteligencia = inteligencia
        @forca = forca
        @stamina = stamina
    end
end

# class Itens
#     attr_accessor :nome, :vida

#     def initialize(nome, vida)
#         @nome = 50
#         @vida = 40
#     end
# end

class Batalha
    attr_accessor :ataqueleve,:ataquepesado, :ataquecritico, :qual_ataque, :qual_acao, :placar 

    def initialize()
        @ataqueleve = 10
        @ataquepesado = 30
        @ataquecritico = 120

    end

    def atualizastatus(ataca, defende)
        puts "A estamina de ambas as partes foram renovadas."
        puts "================================================"
        puts "STATUS:"
        puts "#{ataca.nome} HP: #{ataca.vida}"
        puts "#{ataca.nome} ESTAMINA: #{ataca.stamina}"
        puts "================================================"
        puts "#{defende.nome} HP: #{defende.vida}"
        puts "#{defende.nome} ESTAMINA: #{defende.stamina}"
    end

    def finalizapartida(ataca, defende)
        if ataca.vida<=0 || defende.vida<=0
            puts "===================================="
            puts "A PARTIDA ACABOU. PARABÉNS, #{ataca.nome} !"
            return true
        else
            return false
        end
    end

    def contastatus 

    end

    def tomaveneno(ataca)
        puts "#{ataca.nome} tomou a poção misteriosa, e por isso a sua vida diminuiu para #{ataca.vida=ataca.vida-300},
        e sua força aumentou para #{ataca.forca=ataca.forca+50}. O dano dos seus golpes aumentou!"
        ataca.forca=ataca.forca+50
    end

    def tomapocao(ataca)
        puts "#{ataca.nome} tomou poção, e por isso a sua vida aumentou para #{ataca.vida=ataca.vida+50}"
        ataca.vida=ataca.vida+50
    end

    def atacar(ataca, defende)
        puts "========================================================="

        puts "VEZ DE #{ataca.nome} 
        -- Qual é será a arma usada? --
        e --- Espada
        m --- Machado
        f --- Faca 
        Aperte a tecla correspondente à arma desejada."
        
        puts "========================================================="
        @qual_ataque = gets.chomp

        if qual_ataque == 'e' && ataca.stamina>=4

            defende.vida = defende.vida - ataqueleve-ataca.forca
            puts "Você fez um ataque com espada, causando #{ataqueleve} de dano!
            a vida do adversário agora é #{defende.vida=defende.vida-ataqueleve-ataca.forca}."
            puts "#{ataca.nome} gastou 4 de estamina. Sua estamina atual é #{ataca.stamina=ataca.stamina-4}"

        elsif qual_ataque == 'm' && ataca.stamina>=7
            defende.vida = defende.vida - ataquepesado-ataca.forca
            puts "Você fez um ataca com machado, causando #{ataquepesado} de dano!
            a vida do adversário agora é #{defende.vida-ataquepesado}."
            puts "#{ataca.nome} gastou 7 de estamina. Sua estamina atual é #{ataca.stamina=ataca.stamina-7}"

        elsif qual_ataque == 'f' && ataca.stamina>=12
            
            defende.vida = defende.vida - ataquecritico-ataca.forca
            puts "Você fez um ataque com faca, causando #{ataquecritico} de dano!
            a vida do adversário agora é #{defende.vida-ataquecritico}."
            puts "#{ataca.nome} gastou 12 de estamina. Sua estamina atual é #{ataca.stamina=ataca.stamina-12}"
        else 
            puts "Você está sem estamina, ou nenhum comando foi dado. Agora é a vez de #{defende.nome}!"

        end 
         
        # defende.vida = defende.vida - ataca.forca

        # puts "=================================================="
        # puts " o #{defende.nome} tem #{defende.vida} agora" while defende.vida > 0
        
    end
    def nova_acao(ataca, defende)
        puts "========================================================="
        puts "VEZ DE #{ataca.nome} -- O que você vai fazer? 
        p -- Tomar Poção de cura;
        d -- Tomar Poção misteriosa
        a -- Atacar #{defende.nome}"
        
        
        puts "========================================================="
        
    
        qual_acao = gets.chomp

        if qual_acao == 'd'
            tomaveneno(ataca)
    
    
        elsif qual_acao == 'p'
            tomapocao(ataca)
        
        elsif qual_acao == "a"
            atacar(ataca, defende)
    
    
        else
            puts "Nenhuma ação foi tomada. O turno passou para #{defende.nome}, que não sofreu dano"
        
        end
    end
    
   
    
end
meu_heroi = Heroi.new(100, 100, 10, 40)
vilao = Vilao.new(100, 100, 10, 40)

# pocao = Itens.new('pocao', 50)
# veneno = Itens.new('veneno', -40)

guerra = Batalha.new()


while meu_heroi.vida > 0 && vilao.vida > 0


    guerra.atualizastatus(meu_heroi, vilao)
    
    guerra.nova_acao(meu_heroi, vilao) 
    guerra.nova_acao(vilao, meu_heroi)
    
    meu_heroi.stamina=meu_heroi.stamina+4
    vilao.stamina=vilao.stamina+4
    

    
    
end



guerra.finalizapartida(meu_heroi, vilao)






# guerra.atacar(meu_heroi, vilao)

# if(a.include?)'dado'))
# estado.delete_at(2)

