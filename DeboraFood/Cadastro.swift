//
//  Cadastro.swift
//  DeboraFood
//
//  Created by admin on 10/04/17.
//  Copyright © 2017 ifpb. All rights reserved.
//

import Foundation
class Cadastro: NSObject, NSCoding {
    var pedidos: Array<Pedido>!
    
    override init(){
        self.pedidos = Array<Pedido>()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.pedidos = aDecoder.decodeObject(forKey: "ped") as! Array<Pedido>
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.pedidos, forKey: "ped")
    }
}
