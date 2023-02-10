//
//  SettingsViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 27/05/2022.
//

import UIKit

class SettingsViewController: UIViewController{
    @IBOutlet weak var profilePicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
        profilePicture.layer.borderWidth = 1
        profilePicture.layer.masksToBounds = false
        profilePicture.layer.borderColor = UIColor.black.cgColor
        profilePicture.layer.cornerRadius = profilePicture.frame.height/2
        profilePicture.clipsToBounds = true
    }
    private func setupNavigationBar(){
        self.title = "Settings"
    }
    private func setupViews(){
    
    }
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem){
        PresenterManager.shared.show(vc: .onboarding)

    }
}
