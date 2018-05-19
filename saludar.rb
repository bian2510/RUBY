def saludar (params)
	puts "hola #{params[:nombre]}"
	puts "hola #{params[:apellido]}"
end
saludar ({"nombre": "Bian", "apellido": "Hernandez"})