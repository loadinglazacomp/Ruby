
class Heroi 
    attr_accessor :vida,:inteligencia, :forca 
    def initialize(vida, inteligencia, forca)
        @vida = vida
        @inteligencia = inteligencia
        @forca = forca
    end

    def dialogoinicial()
        puts "========================================="
        puts "Olá, #{meu_heroi}! Você acabou de chegar, mas já possui surpreendentes #{self.vida} de vida, com 
        #{self.forca} de força. Isso é incrível! "
    end
    def falaoi(falar)
        puts "#{self.nome} disse #{falar}"
    end

end


print "Qual é o nome do seu herói? "
nome_heroi = gets.chomp

meu_heroi = Heroi.new(nome_heroi, 100, 80, 500)

dialogoinicial()



