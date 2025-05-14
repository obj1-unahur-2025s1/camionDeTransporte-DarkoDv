object camion {
    const carga= []
    const pesoCamion= 1000
    method pesoTotal()= self.pesoCarga() + pesoCamion
    method cargar(cosa) = carga.add(cosa)
    method pesoCarga() {
        return carga.sum({c=>c.peso()})
    }
    method pesosPares() {
        return carga.all({p=>p.peso() / 2 == 0})
    }
    method objetoDePeso(peso) {
        return carga.any({c=>c.peso() == peso})
    }

    method hayAlgunoPeligroso(peligro) {
        return carga.any({c=>c.peligro() >= peligro})
    }
    method controlPeligro(peligro) {
        return carga.find({c=>c.nivelPeligro() == peligro})
    }

    method superanNivel(peligro) {
        return carga.filter({c=>c.nivelPeligro() > peligro})
    }

    method superanNivelDe(cosa) {
        return carga.filter({c=>c.nivelPeligro() > cosa.nivelPeligro()})
    }

    method camionExcedido() {
        return self.pesoTotal() > 2500
    }

    method pesoEntre(valor1, valor2) = carga.any({c=>c.peso() > valor1 && c.peso() < valor2})


    method puedeViajar(nivel) =  not self.camionExcedido() and not self.hayAlgunoPeligroso(nivel)
    

}