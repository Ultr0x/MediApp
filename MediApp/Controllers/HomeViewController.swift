//
//  HomeViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 29/05/2022.
//


import UIKit
class HomeViewController: UIViewController, UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var itemCount: UILabel!
    var added = false
    override func viewDidLoad(){
        super.viewDidLoad()
        itemCount.text = String( cart.count)
        setupNavigationBar()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
   
    @IBAction func cartButtonTapped(_ sender: Any) {
        if cart.count>0{
            added = true
        }
        if added == true{
           
            performSegue(withIdentifier: "withproduct", sender: nil)
            
        } else {
            performSegue(withIdentifier: "noproduct", sender: nil)
        }
        
    }
    
    private func setupNavigationBar(){
        self.title = "Home"
    }
}

extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return medicines.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MedicineCollectionViewCell", for: indexPath) as! MedicineCollectionViewCell
        cell.setup(with: medicines[indexPath.row])
        print(cell)
        if cell.x == 0 {
            //add these things with segmented control etc.
            //cell.isHidden = true
          } else {
              //cell.isHidden = false
          }
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 250)
    }
}

   
    

