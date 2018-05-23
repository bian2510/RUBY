require "nokogiri"
require "open-uri"

#Para obtener una lista de titulos y url de los gif
	url = 'http://www.reactiongifs.com/'
5.times do |i|
	puts "Página #{i+1}"
	document = Nokogiri::HTML(open(url))
	div_main = document.css('div#main')

	div_main.css('div.post').each do |post|
		puts post.css('h2').text
		puts post.css('div.entry img').attr('src')
	end
	  url = document.css('div.nav-entries div.nav-next a').attr('href')
end

=begin
#Para descargar git con scrapping, se descargan en la misma carpeta del archivo
#a menos que se cree y se especifique una nueva capeta en File.open(nombre_carpeta/#{title}, 'w') do |new file|)
	url = 'http://www.reactiongifs.com/'
5.times do |i|
	puts "Página #{i+1}"
	document = Nokogiri::HTML(open(url))
	div_main = document.css('div#main')

	div_main.css('div.post').each do |post|
		title = post.css('h2').text
		gif_url = post.css('div.entry img').attr('src')
		File.open(title, 'w') do |new file|
			puts "Desccargando git #{title}"
			open(gif_url, 'r') do |gif|
				new_file.write(gif.ready)
			end
		end
	end
	  url = document.css('div.nav-entries div.nav-next a').attr('href')
end
=end