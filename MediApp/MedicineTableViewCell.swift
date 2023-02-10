//
//  MedicineTableViewCell.swift
//  MediApp
//
//  Created by Jan Świdziński on 01/06/2022.
//

import UIKit

class MedicineTableViewCell: UITableViewCell {
    @IBOutlet weak var medicineView: UIView!
    @IBOutlet weak var medicineImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    var priceProduct = Double()
    func setup(with medicine: Medicine){
        medicineImageView.image = medicine.imageName
        nameLabel.text = medicine.name
        priceProduct = medicine.price
        priceLabel.text = String( medicine.price)+"$"
        
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buttonTapped(_ sender: Any) {
        cart.remove(at: 1)
        prices.remove(at: 1)
        
        //medicineView.reloadData()
        
        //HomeViewController.itemCount.text = String( cart2.count)

    }

}
