def numeros_fibonacci
	@fibonacci = [1,2]
	while @fibonacci.length < 40
		@fibonacci << @fibonacci[-1] + @fibonacci[-2]
	end
end

def numero_impar
	@impar = []
		@fibonacci.each do |i|
			if i % 2 == 1
			@impar << i
			end
		end
end
	
def suma
	@a = 0
	@impar.each do |i|
		@a += i
	end
	puts @a
end

numeros_fibonacci
numero_impar
suma