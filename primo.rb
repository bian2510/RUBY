def es_primo(numero)
	(2..(numero-1)).each do |i|
		if numero % i == 0
		return false
		end
	end
	true
end
puts "Ingrese un numero:"
numero = gets.chomp.to_i
if es_primo(numero)
	puts "Es un numero primo"
else
	puts "No es primo"
end
