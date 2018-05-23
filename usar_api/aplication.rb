require 'erb'
require 'httparty'

class Aplication
	def self.call(env)
		
		if env['PATH_INFO'] == '/'
			url = 'https://jsonplaceholder.typicode.com/posts'

			response = HTTParty.get(url)

			@posts = JSON.parse(response.body)

			body = ERB.new(File.read('index.html.erb'))

			[200,{}, [body.result(binding)]]
		else
			[404,{}, ['No existe esta página']]
		end

	end
end