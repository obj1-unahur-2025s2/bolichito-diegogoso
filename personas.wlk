/*Tener en cuenta a estas personas:
- _Rosa_: le gustan las cosas que pesan 2 kilos (o sea 2000 gramos)
 o menos.
- _Estefanía_: le gustan las cosas de colores fuertes.
- _Luisa_: le gustan las cosas que sean de un material que brilla.
- _Juan_: le gustan las cosas que, o bien son de un color que no es fuerte,
 o bien pesan entre 1200 y 1800 gramos.

Como **colores** contemplar (al menos) rojo, verde, celeste y pardo. 
De estos, los dos primeros son fuertes, los otros no.

Como **materiales** tenemos: el cobre y el vidrio que brillan;
 el lino, la madera y el cuero que no.*/
import objetos.*
object rosa{
    method leGustan(objeto){
        return objeto.peso()<=2000
    }
}
object estefania{
    method leGusta(objeto){
        return objeto.color().esFuerte()
    }
}
object luisa{
    method leGusta(objeto){
        return objeto.material().esBrillante()
    } 
}
object juan {
  method leGusta(unaCosa) {
    return not unaCosa.color().esFuerte() or (unaCosa.peso() >= 1200 and unaCosa.peso() <= 1800)
  }
}

