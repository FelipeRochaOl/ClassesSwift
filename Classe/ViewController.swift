//
//  ViewController.swift
//  Classe
//
//  Created by Felipe Rocha Oliveira on 27/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sortVeicle: UIButton!
    @IBOutlet weak var sortCar: UIButton!
    @IBOutlet weak var sortMotocicle: UIButton!
    
    @IBOutlet weak var motorLabel: UILabel!
    @IBOutlet weak var anoLabel: UILabel!
    @IBOutlet weak var combustivelLabel: UILabel!
    @IBOutlet weak var pneuLabel: UILabel!
    @IBOutlet weak var marcaLabel: UILabel!
    @IBOutlet weak var corLabel: UILabel!
    @IBOutlet weak var tamanhoLabel: UILabel!
    @IBOutlet weak var modeloLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet var titulo: UILabel!
    
    var veicles: [Veiculo] = []
    var cars: [Carro] = []
    var motocicles: [Moto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sortCar.layer.cornerRadius = 10;
        sortVeicle.layer.cornerRadius = 10;
        sortMotocicle.layer.cornerRadius = 10;
        
        let carro: Carro = Carro(motor: 2.0, ano: 2021, combustivel: ["Gasolina"], pneu: "Michelan", marca: "GM", cor: "blue", tamanho: "Hatch", modelo: "Corsa", qtdPortas: 4, cambio: "Automático")
        let carro1: Carro = Carro(motor: 1.8, ano: 2021, combustivel: ["Gasolina"], pneu: "Michelan", marca: "GM", cor: "green", tamanho: "Hatch", modelo: "Celta", qtdPortas: 4, cambio: "Automático")
        let carro2: Carro = Carro(motor: 2.8, ano: 2021, combustivel: ["Gasolina", "Alcool"], pneu: "Michelan", marca: "VW", cor: "cyan", tamanho: "Hatch", modelo: "Golf", qtdPortas: 4, cambio: "Automático")
        
        let moto: Moto = Moto(motor: 2.0, ano: 2021, combustivel: ["Gasolina"], pneu: "Michelan", marca: "Suzuki", cor: "red", tamanho: "Chopper", modelo: "Suzuki A", cilindradas: 1500, guidao: "normal", pedal: "normal")
        let moto1: Moto = Moto(motor: 2.0, ano: 2021, combustivel: ["Gasolina"], pneu: "Michelan", marca: "Suzuki", cor: "purple", tamanho: "Chopper", modelo: "Suzuki B", cilindradas: 1500, guidao: "normal", pedal: "normal")
        let moto2: Moto = Moto(motor: 2.0, ano: 2021, combustivel: ["Gasolina"], pneu: "Michelan", marca: "Suzuki", cor: "white", tamanho: "Chopper", modelo: "Suzuki C", cilindradas: 1500, guidao: "normal", pedal: "normal")
        
        self.motocicles.append(contentsOf: [moto, moto1, moto2])
        self.cars.append(contentsOf: [carro, carro1, carro2])
        self.veicles.append(contentsOf: self.motocicles)
        self.veicles.append(contentsOf: self.cars)
        
    }
    
    @IBAction func handleSortVeicle(_ sender: Any) {
        self.sorteio(type: "")
    }

    @IBAction func handleSortMotocicle(_ sender: Any) {
        self.sorteio(type: "motocicle")
    }

    @IBAction func handleSortCar(_ sender: Any) {
        self.sorteio(type: "cars")
    }
    
    func sorteio(type: String) {
        switch type {
        case "cars":
            if let car = self.cars.randomElement() {
                self.writeInLabel(car)
            }
            break
        case "motocicle":
            if let motocicle = self.motocicles.randomElement() {
                self.writeInLabel(motocicle)
            }
            break
        default:
            if let veicle = self.veicles.randomElement() {
                self.writeInLabel(veicle)
            }
        }
    }
    
    func writeInLabel(_ auto: Veiculo) {
        guard let combustivel = auto.combustivel else {
            return
        }
        self.motorLabel.text = String(format:"%.2f",auto.motor ?? "")
        self.anoLabel.text = String(format:"%", auto.ano ?? "")
        self.combustivelLabel.text = combustivel.joined(separator: ",")
        self.pneuLabel.text = auto.pneu
        self.marcaLabel.text = auto.marca
        self.corLabel.text = auto.cor
        self.tamanhoLabel.text = auto.tamanho
        self.modeloLabel.text = auto.modelo
        
        if (auto is Carro) {
            let carro:Carro = auto as! Carro
            self.label1.text = carro.cambio
            self.label2.text = String(carro.qtdPortas ?? 0)
            self.label3.text = "Carro"
        }
        
        if (auto is Moto) {
            let moto:Moto = auto as! Moto
            self.label1.text = moto.guidao
            self.label2.text = moto.pedal
            self.label3.text = "Moto"
        }
        
        self.changeBackground(auto.cor ?? "white")
    }
    
    func changeBackground(_ value: String) {
        self.view.backgroundColor = self.getUIColor(value)
    }
    
    func getUIColor(_ strColor: String) -> UIColor {
        var color: UIColor;
        switch strColor {
        case "blue":
            color = .blue
            self.titulo.tintColor = .black
        break
        case "purple":
            color = .purple
            self.titulo.tintColor = .white
        break
        case "cyan":
            color = .cyan
            self.titulo.tintColor = .white
        break
        case "green":
            color = .green
            self.titulo.tintColor = .white
        break
        case "red":
            color = .red
            self.titulo.tintColor = .white
        break
        default:
            color = .white
            self.titulo.tintColor = .black
        }
        
        return color
    }
}

