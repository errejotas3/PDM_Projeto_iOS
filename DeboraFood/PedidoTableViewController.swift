//
//  PedidoTableViewController.swift
//  DeboraFood
//
//  Created by admin on 08/04/17.
//  Copyright © 2017 ifpb. All rights reserved.
//

import UIKit

class PedidoTableViewController: UITableViewController {
    var pedido: Pedido!
    
    @IBAction func finalizar(_ sender: Any) {
        let appdel = UIApplication.shared.delegate as! AppDelegate
        appdel.addInArquivo(ped: self.pedido)
    
        
        appdel.pedido = Pedido()
        self.pedido = Pedido()
        
    }
   
   
    @IBOutlet weak var lbTotal: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appdel = UIApplication.shared.delegate as! AppDelegate
        self.pedido = appdel.pedido
        
        self.lbTotal.text = String(pedido.getTotal())
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.pedido.lista.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pedidos", for: indexPath)
        
        // Configure the cell...
        
        print(self.pedido.lista.count)
        let produtos = self.pedido.lista[indexPath.row]
        
        cell.textLabel?.text = produtos.description
        
        return cell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
