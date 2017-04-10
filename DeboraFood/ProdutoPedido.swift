//
//  ProdutoPedido.swift
//  DeboraFood
//
//  Created by admin on 08/04/17.
//  Copyright © 2017 ifpb. All rights reserved.
//

import Foundation
class ProdutoPedido: NSObject,NSCoding{
    
    var produto: Produto
    var quantidade: Int
    
    
    init(produto: Produto, quantidade: Int) {
        self.produto = produto
        self.quantidade = quantidade
    }
    override var description: String{
        return self.produto.nome + " - QNT:" + String(self.quantidade) + " - Total:" + String(Double(self.quantidade)*Double(self.produto.valor))
    }
    required init? (coder aDecoder: NSCoder){
        self.produto = aDecoder.decodeObject(forKey: "produto") as! Produto
        self.quantidade = aDecoder.decodeObject(forKey: "quantidade") as! Int
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.produto, forKey: "produto")
        aCoder.encode(self.quantidade, forKey: "quantidade")
        
    }

    
    func getTotal() -> Double{
        
        
        let total = self.produto.valor * Double(self.quantidade)
        return total
    }
    
}
