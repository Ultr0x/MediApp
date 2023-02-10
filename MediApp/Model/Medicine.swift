//
//  Medicine.swift
//  MediApp
//
//  Created by Jan Świdziński on 30/05/2022.
//

import UIKit

struct Medicine {
    let name: String
    let price: Double
    let imageName: UIImage

}

let medicines: [Medicine] = [
    Medicine(name:"paracetamol",price: 4.99, imageName:#imageLiteral(resourceName: "paracetamol.jpg") ),
    Medicine(name:"chlorphenamine",price: 3.99, imageName: #imageLiteral(resourceName: "chlorphenamine.jpeg")),
    Medicine(name:"oxymetazoline",price: 7.99, imageName: #imageLiteral(resourceName: "oxymetazoline.jpeg")),
    Medicine(name:"paracetamol",price: 4.99, imageName:#imageLiteral(resourceName: "paracetamol.jpg") ),
    Medicine(name:"chlorphenamine",price: 3.99, imageName: #imageLiteral(resourceName: "chlorphenamine.jpeg")),
    Medicine(name:"oxymetazoline",price: 7.99, imageName: #imageLiteral(resourceName: "oxymetazoline.jpeg")),
    Medicine(name:"paracetamol",price: 4.99, imageName:#imageLiteral(resourceName: "paracetamol.jpg") ),
    Medicine(name:"chlorphenamine",price: 3.99, imageName: #imageLiteral(resourceName: "chlorphenamine.jpeg")),
    Medicine(name:"oxymetazoline",price: 7.99, imageName: #imageLiteral(resourceName: "oxymetazoline.jpeg")),
    Medicine(name:"paracetamol",price: 4.99, imageName:#imageLiteral(resourceName: "paracetamol.jpg") ),
    Medicine(name:"chlorphenamine",price: 3.99, imageName: #imageLiteral(resourceName: "chlorphenamine.jpeg")),
    Medicine(name:"oxymetazoline",price: 7.99, imageName: #imageLiteral(resourceName: "oxymetazoline.jpeg")),
    Medicine(name:"codeine",price: 4.99, imageName:#imageLiteral(resourceName: "codeine.jpeg") )
    
]
var cart: [Medicine] = [
    //Medicine(name:"codeine",price: "4.50 $", imageName:#imageLiteral(resourceName: "codeine.jpeg") )
]
var prices: [Double] = [
]


