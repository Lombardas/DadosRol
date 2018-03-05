//
//  Dado.swift
//  Dados de Rol
//
//  Created by Tasio on 3/3/18.
//  Copyright © 2018 Anastasio Almansa. All rights reserved.
//

import Foundation

class Dado: NSObject {
    
    let caras: Int
    var valor: Int
    
    init(caras: Int)
    {
        self.caras = caras
        self.valor = 0
        
    }
    
    public func Rolling()
    {
        switch caras {
        case 20:
            self.valor = Int(arc4random()%20)
            //print("DADO:" )
            //print(self.valor)
            break
        case 12:
            self.valor = Int(arc4random()%12)
            //print("DADO:" )
            //print(self.valor)
            break
        case 10:
            self.valor = Int(arc4random()%10)
            //print("DADO:" )
            //print(self.valor)
            break
        case 8:
            self.valor = Int(arc4random()%8)
            //print("DADO:" )
            //print(self.valor)
            break
        case 6:
            self.valor = Int(arc4random()%6)
            //print("DADO:" )
            //print(self.valor)
            break
        case 4:
            self.valor = Int(arc4random()%4)
            //print("DADO:" )
            //print(self.valor)
            break
        default:
            break
        }
        
    }
}
