//
//  Veiculo.swift
//  Classe
//
//  Created by Felipe Rocha Oliveira on 01/06/21.
//

import Foundation

class Veiculo {
    var motor: Float?
    var ano: Int?
    var combustivel: [String]?
    var pneu: String?
    var marca: String?
    var cor: String?
    var tamanho: String?
    var modelo: String?
    
    init(motor: Float?, ano: Int?, combustivel: [String]?, pneu: String?, marca: String?, cor: String?, tamanho: String?, modelo: String?) {
        
        self.motor = motor
        self.ano = ano
        self.combustivel = combustivel
        self.pneu = pneu
        self.marca = marca
        self.cor = cor
        self.tamanho = tamanho
        self.modelo = modelo
    }
    
    func ligar() {
        print("ligado")
    }
}
