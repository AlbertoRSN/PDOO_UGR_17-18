#encoding: UTF-8


require_relative 'bicicleta.rb'
require_relative 'ciclista.rb'
require_relative 'club.rb'
  
module El_Club
  unClub = Club.new("los intrépidos", "trevenque 2, bajo B")
  miBici = Bicicleta.new
  unCiclista = Ciclista.new("Pepe",30,miBici,unClub)
  otraBici = Bicicleta.new(5, "negra")
  otroCiclista = Ciclista.new("Ana", 40, otraBici,unClub)
  unClub.nuevoSocio(unCiclista)
  unClub.nuevoSocio(otroCiclista)
  unClub.misSocios()
  
  
end