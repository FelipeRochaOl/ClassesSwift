//
//  Carro.swift
//  Classe
//
//  Created by Felipe Rocha Oliveira on 01/06/21.
//

import Foundation

class Carro: Veiculo {
    var qtdPortas: Int?
    var cambio: String?
    
    init(motor: Float, ano: Int, combustivel: [String], pneu: String, marca: String, cor: String, tamanho: String, modelo: String, qtdPortas: Int?, cambio: String?) {

        super.init(motor: motor, ano: ano, combustivel: combustivel, pneu: pneu, marca: marca, cor: cor, tamanho: tamanho, modelo: modelo)
        
        self.qtdPortas = qtdPortas
        self.cambio = cambio
    }
}
