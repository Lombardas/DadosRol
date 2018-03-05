//
//  TableViewController.swift
//  Dados de Rol
//
//  Created by Tasio on 2/3/18.
//  Copyright © 2018 Anastasio Almansa. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

   
    var dados : [Dado] = []
    var saco : [Int:Int] = [20:0,12:0,10:0,8:0,6:0,4:0]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        dados.removeAll()
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        /* let alert = UIAlertController(title: "Mostrando", message: "Mostrando segunda vista!", preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "OK", style: .default ))
         self.present(alert, animated: true) */
        
        for (tipoDado,cantidad) in saco {
        
            for  i in 0 ..< cantidad {
                
                print("I: ")
                print(i)
                print("cantidad:")
                print(cantidad)
                if(cantidad > 0)
                {
                    let dado : Dado = Dado(caras: tipoDado)
                    dado.Rolling()
        
                    dados.append(dado)
                    print("dado:")
                    print(dado.caras)
                    print(dado.valor)
                }
            }//end for
        }
        
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
        return dados.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Dado", for: indexPath)
        let dadoActual = dados[indexPath.row]
        cell.textLabel?.text = "Dado de " + String(dadoActual.caras) + "--  Valor: " + String(dadoActual.valor)
        
        
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
