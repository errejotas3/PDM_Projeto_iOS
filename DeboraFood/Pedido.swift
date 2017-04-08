//
//  Pedido.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 ifpb. All rights reserved.
import Foundation

class Pedido:NSObject{
    var lista: Array<ProdutoPedido>!
    var data: Date!
    
    override init() {
        self.lista = Array<ProdutoPedido>()
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
