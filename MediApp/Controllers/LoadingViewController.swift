//
//  LoadingViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 27/05/2022.
//

import UIKit

class LoadingViewController:
    UIViewController{
    
    
    private let isUserLoggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            self.showInitialView()
        }
    }
     
    private func setupViews(){
        view.backgroundColor = .white
    }
    private func showInitialView(){
        // if logged in then show the main bar
        // if not logged in then show onboarding controller
        if isUserLoggedIn {
           
            PresenterManager.shared.show(vc: .mainTabBarController)
            
        } else {
            performSegue(withIdentifier: "showOnboarding", sender: nil)
        }
    }
}
