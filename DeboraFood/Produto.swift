//
//  Produto.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 ifpb. All rights reserved.
//

import Foundation

class Produto:NSObject{

    var nome: String!
    var valor: Double!
    
    override var description: String{
        return self.nome + " - RS" + String(self.valor)
    }
    
    override init(){
    }
    init(nome: String, valor: Double){
    self.nome = nome
    self.valor = valor
    }
    
    
        
}
