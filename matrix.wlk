object neo {
  var property  energia = 100
  var property vitalidad= energia / 10
  method esElElegido()= true
  method saltar() {energia = energia/2}
}
object morfeo {
    var property vitalidad= 8
    var estaCansado= false
  method esElElegido()= false
  method saltar() {vitalidad -=1 ; estaCansado = !estaCansado}
}

object trinity {
  method esElElegido()= false
  method vitalidad() = 0
  method saltar() {}
}

object nave {
  const pasajeros = []
  method pasajeros() = pasajeros

  method agregarPasajero(unPasajero) {pasajeros.add(unPasajero)}

  method cantidadPasajeros() = pasajeros.size() //1
  
  method pasajeroMayorVitalidad() = pasajeros.max({p => p.vitalidad()}) //2
 
  method estaElElegido() = pasajeros.any({ p => p.esElElegido() }) //4
  
  method estaEquilibrada() = //3
  pasajeros.all({ p1 =>
    pasajeros.all({ p2 =>
      p1.vitalidad() <= p2.vitalidad() * 2
    })
  })

 //method estaEquilibrada() =
  //pasajeros.maxBy({ p => p.vitalidad() }).vitalidad() <=
  //pasajeros.minBy({ p => p.vitalidad() }).vitalidad() * 2
 
  method choque() {pasajeros.forEach({p => p.saltar() });pasajeros.clear()}

  method acelerar() {pasajeros.filter({ p => !p.esElElegido() }).forEach({ p => p.saltar() })}

 // method acelerar() {
 // pasajeros.forEach({ p =>
 //   if (!p.esElElegido()) {
 //     p.saltar()
 //   }
 // })
//}
}