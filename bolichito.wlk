import objetos.*
import personas.*
/*Agregar al modelo un bolichito, que vende dos objetos: 
uno está en la vidriera, otro está en el mostrador.
Estos objetos van cambiando con el tiempo.

El bolichito debe poder responder si es brillante o no.
Eso depende de que los 2 objetos que tiene 
(uno en el mostrador y otro en la vidriera) sean ambos brillantes. 

Otra cosa que nos debe poder decir es si es monocromático,
lo cual será cierto si los 2 objetos que exhibe son del mismo color.

Y también nos interesa saber si el bolichito está equilibrado,
lo cual será verdadero si el objeto del mostrador pesa más que el de la
vidriera.

Debemos poder preguntarle al bolichito si tiene algún objeto exhibido
de un determinado color y además, si puede mejorar, lo cual será cierto
si está desequilibrado o es monocromático.

Por último, tenemos que poder preguntarle si puede ofrecerle algo
a una persona determinada que se pasa como argumento,
lo cual será verdadero cuando alguno de los objetos exhibidos
le gusta a esa persona. 
P.ej. si el bolichito tiene la remera en la vidriera y la pelota en
el mostrador,
entonces puede ofrecerle algo a Estefanía (la remera) y a Juan (la pelota) 
pero no a Luisa (porque no le gustan ni la remera ni la pelota).*/

object bolichito {
    var vidriera = remera.peso() + 400
    var mostrador = pelota.peso() + 10000
    
    method esBrillante() {
        return vidriera.material().esBrillante() and mostrador.material().esBrillante()
    }
    method esMonocromatico() {
        return vidriera.color() == mostrador.color()
    }
    method estaEquilibrado() {
        return mostrador.peso() > vidriera.peso()
    }
    method tieneObjetoDeColor(color) {
        return vidriera.color() == color or mostrador.color() == color
    }
    
    method puedeMejorar() {
    return not self.estaEquilibrado() or self.esMonocromatico() or vidriera.puedeMejorar() or mostrador.puedeMejorar()

}
    method equilibrarBolichito() {
    if (not self.estaEquilibrado()) {
        var pesoVidriera = vidriera.peso()
        var pesoMostrador = mostrador.peso()

        if (pesoVidriera > pesoMostrador) {
            mostrador.cambiarPeso(pesoVidriera)
        } else {
            vidriera.cambiarPeso(pesoMostrador)
        }
    }
}

    
    method tieneAlgoExhibidoDeColor(color) {
        return vidriera.color() == color or mostrador.color() == color
    }
    
    method puedeOfrecerleAlgoA(persona) {
        return persona.leGusta(vidriera) or persona.leGusta(mostrador)
    }
    method cambiarVidriera(nuevoObjeto) {
        /* si pasa el tiempo cambia la vidriera*/
        vidriera = nuevoObjeto
    }
    method cambiarMostrador(nuevoObjeto) {
        /* si pasa el tiempo cambia el mostrador*/
        mostrador = nuevoObjeto
   
    }
}
