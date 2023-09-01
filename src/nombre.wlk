import wollok.game.*
import puma.*
import colisionables.*

object nombre {
	
	method iniciar() {
		self.configurarPantalla()
		self.configurarTeclas()
		self.agregarVisuales()
		self.configurarColisiones()
		game.start()
	}
	
	
	method configurarPantalla(){
		game.width(5)
		game.height(5)
		game.cellSize(80)	
		game.ground("casilla.png")
		game.title("Buscando comida")
	}
	
	method configurarTeclas(){
		keyboard.up().onPressDo({ puma.arriba()})
		keyboard.down().onPressDo({ puma.abajo()})
		keyboard.left().onPressDo({ puma.izquierda()})
		keyboard.right().onPressDo({ puma.derecha()})		
	}
	
	method agregarVisuales(){
		game.addVisual(puma)
		game.addVisual(churrasco)
		game.addVisual(obstaculo)
	}
	
	method configurarColisiones(){
		game.onCollideDo(puma, {chocado => chocado.chocarseConPuma()})
	}
	
	method ganar(){
		game.say(puma, "¡Gane!")
		game.removeVisual(churrasco)
	}	

}

