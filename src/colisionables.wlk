import nombre.*
import puma.*
import wollok.game.*

object obstaculo {
	var property position = game.at(4,2)
	
	method image() = 'piedra.png'
	
	method chocarseConPuma(){
		puma.rebotar()
	}
	
}

object churrasco {
	
	var property position = game.at(4,3)
	method image() = "churrasco.png"
	
	method chocarseConPuma(){
		nombre.ganar()
	}
}


