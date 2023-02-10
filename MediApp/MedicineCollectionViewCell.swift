//
//  MedicineCollectionViewCell.swift
//  MediApp
//
//  Created by Jan Świdziński on 30/05/2022.
//

import UIKit

class MedicineCollectionViewCell: UICollectionViewCell {
    var isProductAdded = false
    var count = 0
    var x = 0
    @IBOutlet weak var medicineImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    var priceProduct = Double()
    func setup(with medicine: Medicine){
        medicineImageView.image = medicine.imageName
        nameLabel.text = medicine.name
        priceProduct = medicine.price
        priceLabel.text = String( medicine.price)+"$"

        
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        isProductAdded.toggle()
     
        cart.append(Medicine(name: nameLabel.text!, price: priceProduct,imageName: medicineImageView.image!));
        count = count+1
        prices.append(priceProduct)
        print(count)
        print(cart)
        //HomeViewController.itemCount.text = String( cart2.count)

    }
    
}
