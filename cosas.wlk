object knightRider {
    const peso= 500
    const nivelPeligro= 10
    method nivelPeligro() = nivelPeligro
    method peso() = peso
}

object bumblebee{
    const peso= 800
    var transformacion= auto
    method peso() = peso
    method nivelPeligro() = transformacion.peligrosidad()
    method transformar(tipo) {
        transformacion= tipo
    }
}

object auto{
    const peligrosidad= 15
    method peligrosidad() = peligrosidad
}

object robot{
    const peligrosidad= 30
    method peligrosidad() = peligrosidad
}

object paqueteLadrillos{
    var cantidadLadrillos = 0
    const peso = cantidadLadrillos * 2 
    method modificarLadrillos(cant) {cantidadLadrillos= cant}
    method peso()= peso
    method nivelPeligro() = 2
}

object arenaGranel {
    var peso= 0
    method modificarPeso(p) {peso= p}
    method nivelPeligro() = 1
    method peso()= peso
}

object bateriaAntiaerea{
    var hayMisiles= true
    method hayMisiles() = hayMisiles
    method sinMisiles() { hayMisiles = false}
    method peso() = if(hayMisiles) 300 else 200
    method nivelPeligro() = if(hayMisiles) 100  else 0
}

object contenedorPortuario {
    const cosas= []
    const peso= 100
    method añadirCosa(cosa) = cosas.add(cosa)
    method peso() = peso + self.pesoCosas()
    method pesoCosas() = cosas.sum({c=>c.peso()})
    method nivelPeligro(){
        if(cosas.isEmpty()) return 0 else cosas.max({c=>c.nivelPeligro()}.nivelPeligro())
    }
}

object residuosRadioactivos {
    var peso= 0
    method modificarPeso(p) {peso= p}
    method nivelPeligro() = 200
}

object embalajeSeguridad {
    var interior= null
    method modificarInterior(cosa) {interior= cosa}
    method nivelPeligro() = interior.nivelPeligro() / 2 
}
