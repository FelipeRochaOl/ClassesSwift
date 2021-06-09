//
//  Moto.swift
//  Classe
//
//  Created by Felipe Rocha Oliveira on 01/06/21.
//

import Foundation

class Moto: Veiculo {
    var cilindradas: Int?
    var guidao: String?
    var pedal: String?
    
    init(motor: Float, ano: Int, combustivel: [String], pneu: String, marca: String, cor: String, tamanho: String, modelo: String, cilindradas:Int?, guidao: String?, pedal: String?) {
        
        super.init(motor: motor, ano: ano, combustivel: combustivel, pneu: pneu, marca: marca, cor: cor, tamanho: tamanho, modelo: modelo)
        
        self.cilindradas = cilindradas
        self.guidao = guidao
        self.pedal = pedal
    }
}
