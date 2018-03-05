//
//  ViewController.swift
//  Dados de Rol
//
//  Created by Tasio on 2/3/18.
//  Copyright © 2018 Anastasio Almansa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var labelD20: UILabel!
    @IBOutlet weak var labelD12: UILabel!
    @IBOutlet weak var labelD10: UILabel!
    @IBOutlet weak var labelD8: UILabel!
    @IBOutlet weak var labelD6: UILabel!
    @IBOutlet weak var labelD4: UILabel!
    
    var sonido = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "sonido", ofType: "mp3")! ))
    var saco : [Int:Int] = [20:0,12:0,10:0,8:0,6:0,4:0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        saco = [20:0,12:0,10:0,8:0,6:0,4:0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*override func canBecomeFirstResponder()-> Bool
    {
        
        
    }*/
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
       /* let alert = UIAlertController(title: "Movimiento", message: "Movimiento detectado!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default ))
        self.present(alert, animated: true)*/
        sonido?.play()
        self.performSegue(withIdentifier: "segueRolling", sender: self)
    }
    

    @IBAction func sumaDados(_ sender: UIStepper) {
        switch sender.tag {
        case 20:
            labelD20.text =  String(Int(sender.value))
            saco[20] = Int(sender.value)
            break
        case 12:
            labelD12.text = String(Int(sender.value))
            saco[12] = Int(sender.value)
            break
        case 10:
            labelD10.text = String(Int(sender.value))
            saco[10] = Int(sender.value)
            break
        case 8:
            labelD8.text = String(Int(sender.value))
            saco[8] = Int(sender.value)
            break
        case 6:
            labelD6.text = String(Int(sender.value))
            saco[6] = Int(sender.value)
            break
        case 4:
            labelD4.text = String(Int(sender.value))
            saco[4] = Int(sender.value)
            break
        default:
            break
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDestino = segue.destination as! TableViewController
        vistaDestino.saco = self.saco
    }
}

