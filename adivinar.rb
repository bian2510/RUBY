$rand = rand(1..10)
GANADOR = $rand
def adivinar
	puts "Adivina el numero del 1 al 10"
	@numero = gets.chomp.to_i
	while @numero != GANADOR
		puts "Error intenta de nuevo, ingresa un nuevo numero"
		@numero = gets.chomp.to_i
	end
	puts "Correcto! el numero es #{GANADOR}"
end
adivinar
