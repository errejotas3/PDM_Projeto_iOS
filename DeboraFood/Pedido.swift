//
//  Pedido.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 ifpb. All rights reserved.
import Foundation

extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy H:mm"
        return dateFormatter.string(from: self)
    }
}
class Pedido: NSObject, NSCoding{
    var lista: Array<ProdutoPedido>!
    var data: Date!
    
    override init() {
        self.lista = Array<ProdutoPedido>()
        self.data = Date()
    }
    
    override var description: String{
        return String(describing: self.data.toString()) + " - " + String(self.lista.count) + " produto"
    }
    
    required init? (coder aDecoder: NSCoder){
        self.lista = aDecoder.decodeObject(forKey: "lista") as! Array<ProdutoPedido>
        self.data = aDecoder.decodeObject(forKey: "data") as! Date
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.lista, forKey: "lista")
        aCoder.encode(self.data, forKey: "data")
        
    }
    
    
    func add(produtopedido: ProdutoPedido){
        self.lista.append(produtopedido)
    }
    
    func quantidade() -> Int {
        return self.lista.count
    }
    
    func del(pos: Int){
        self.lista.remove(at: pos)
    }
    
    func getTotal() -> Double{
        var total = Double()
        for p in self.lista{
            total += p.getTotal()
    }
        return total
    }
    
}
