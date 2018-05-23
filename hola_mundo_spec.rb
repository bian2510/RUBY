require_relative './hola_mundo.rb'

RSpec.describe 'hola mundo' do
	it 'llamar metodo' do
	expect(hola_mundo).to eq 'Hola mundo!'
	end
end