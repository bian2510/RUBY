class Patos
	attr_accessor :nombre
	def initialize()
		def nadan
			puts "Los patos estan nadando"
		end
		def quack
			puts "Los patos estan haciendo quack"
		end
	end
end

class Tipos < Patos
	def initialize()
		def nombres (nombre)
			@nombre = nombre
			puts "Es un pato #{@nombre}"
		end		
	end
end

class Volar < Tipos
	def initialize()
		def vuelo
			puts "Y los dos pueden volar"			
		end
		
	end
end

pato = Patos.new
tipos = Tipos.new
volar = Volar.new

volar.nadan
volar.quack
volar.nombres("mallard")
volar.nombres("blanco")
volar.vuelo