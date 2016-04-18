//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}
class Auto {
    var velocidad: Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        switch velocidad {
            
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidad.rawValue,  "\(velocidad)")
    }
    
}

var auto = Auto()
print (auto.velocidad.rawValue,  (auto.velocidad))
for index in 1...20{
    var temp = auto.cambioDeVelocidad()
    print (temp.0, temp.1)
}


