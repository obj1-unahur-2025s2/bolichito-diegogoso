/*Finalmente, considerar (al menos) estos objetos:
  - una _remera_ roja de lino, pesa 800 gramos.
  - una _pelota_ parda de cuero, pesa 1300 gramos.
  - una _biblioteca_ verde de madera, pesa 8000 gramos.
  - un _muñeco_ celeste de vidrio, de peso variable.
  - una _placa_ de cobre, de peso y color variables.*/

object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800
}
object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
}
object munieco {
  var peso = 10
  
  method color() = celeste
  method material() = vidrio
  method peso() = peso

  method cambiarPeso(pesoNuevo) {
    peso = pesoNuevo
  }
}
object placa {
  var peso = 10
  var color = verde

  method color() = color
  method material() = cobre
  method peso() = peso

  method cambiarColor(colorNuevo) {
    color = colorNuevo
  }
  method cambiarPeso(pesoNuevo) {
    Peso = pesoNuevo
  }
}
/*un _arito_ celeste de cobre, que pesa 180 gramos.
- un _banquito_ de madera que pesa 1700 gramos. 
  Al principio es naranja, pero puede cambiar de color. 
  El naranja es un color fuerte.
- una _cajita_ roja de cobre, que tiene un objeto adentro. 
  Este objeto puede ser cualquiera de los definidos previamente, y
  puede cambiar.
  El peso de la cajita es de 400 gramos más el peso de lo que tiene
  adentro.*/
  object arito {
    method color() = celeste
    method material() = cobre
    method peso() = 180
  }
object banquito {
  var color = naranja
  

  method color() = color
  method material() = madera
  method peso() = 1700

  method cambiarColor(colorNuevo) {
    color = colorNuevo
  }
}
object cajita {
  var objetoAdentro = remera

  method color() = rojo
  method material() = cobre
  method peso() = 400 + objetoAdentro.peso()

  method cambiarObjeto(objetoNuevo) {
    objetoAdentro = objetoNuevo
  }

  method verObjeto() = objetoAdentro

}
/* el peso del mostrador sera igual al peso de lo que contenga
    por ejemplo pelota, remera*/
object mostrador { 
    var objetoEnMostrador = pelota
    method peso() = objetoEnMostrador.peso() + 10000
}
object vidriera {
    var objetoEnVidriera = remera
    method peso() = objetoEnVidriera.peso() + 4000
    
}

    object rojo {
  method esFuerte(){
    return true
  }
}
object verde {
  method esFuerte(){
    return true
  }
}
object celeste {
  method esFuerte(){
    return false
  }
}
object pardo {
  method esFuerte(){
    return false
  }
}
object naranja{
    method esFuerte(){
        return true
    }
}

object cobre {
  method esBrillante(){
    return true
  }
}

object vidrio {
  method esBrillante(){
    return true
  }
}
object lino {
  method esBrillante(){
    return false
  }
}

object madera {
  method esBrillante(){
    return false
  }
}

object cuero {
  method esBrillante(){
    return false
  }
}
