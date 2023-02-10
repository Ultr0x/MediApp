//
//  OnboardingCollectionViewCell.swift
//  MediApp
//
//  Created by Jan Świdziński on 28/05/2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell{
    @IBOutlet weak var slideImageView: UIImageView!
    func configure(image:UIImage){
        slideImageView.image = image
    }
}
