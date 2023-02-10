//
//  CartViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 01/06/2022.
//

import UIKit
class CartViewController: UIViewController, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var checkoutButton: UIButton!
    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.dataSource = self
        totalLabel.text = "Your Total: " + String(format:"%.2f", prices.reduce(0,+)) + "$"
        checkoutButton.layer.cornerRadius = 20
        
    }
}
extension CartViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MedicineTableViewCell") as! MedicineTableViewCell
        cell.setup(with: cart[indexPath.row])
        return cell
    }
}
