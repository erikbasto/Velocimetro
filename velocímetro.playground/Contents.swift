//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades: Int {

    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        
        self = velocidadInicial
    }
}



class Auto{

    var velocidad: Velocidades
    
    init(){
        
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    

    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        var velocidadTexto: String = ""
        var velocidadActual: Int
        
        switch velocidad {
        case .Apagado:
            velocidadActual = velocidad.rawValue
            velocidadTexto = "Apagado"
            
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidadActual = velocidad.rawValue
            velocidadTexto = "Velocidad Baja"
            
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidadActual = velocidad.rawValue
            velocidadTexto = "Velocidad Media"
            
            velocidad = Velocidades.VelocidadAlta
        default:
            velocidadActual = velocidad.rawValue
            velocidadTexto = "Velocidad Alta"
            
            velocidad = Velocidades.VelocidadMedia
        }
        let resp = (velocidadActual , velocidadTexto)
        return resp
    }
}

var auto = Auto()

for index in 1...20 {
    var vel = auto.cambioDeVelocidad()
    print(vel.actual,",",vel.velocidadEnCadena)
    
}
