//
//  ViewController.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 ifpb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var produto: Produto!
    
    
    @IBOutlet weak var tfQuantidade: UILabel!
    @IBOutlet weak var stQuantidade: UIStepper!
    
   //LABELS
    
    
    @IBOutlet weak var lbTotal: UILabel!
    @IBOutlet weak var lbValor: UILabel!
    @IBOutlet weak var lbNome: UILabel!
    
   
    @IBAction func btnAdicionar(_ sender: Any) {
        let p = ProdutoPedido(produto: self.produto, quantidade: Int(self.stQuantidade.value))
        
        let appdel = UIApplication.shared.delegate as! AppDelegate
       
        appdel.pedido?.add(produtopedido: p)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    @IBAction func quantidade(_ sender: Any) {
       //self.tfQuantidade.text = String(self.stQuantidade.value)
       // self.lbTotal.text = String(Double(self.produto.valor * self.stQuantidade.value))
        let valor = self.produto.valor
        let qtde = Int(self.stQuantidade.value)
       
        self.tfQuantidade.text = String(Int(self.stQuantidade.value))
        self.lbTotal.text = String(Double(qtde) * valor!)
        print(tfQuantidade)
    
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
        super.viewDidAppear(true)
        self.tfQuantidade.text = String(self.stQuantidade.value)
        self.lbNome.text = self.produto.nome
        self.lbValor.text = String(self.produto.valor)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

