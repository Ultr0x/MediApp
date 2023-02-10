//
//  PresenterManager.swift
//  MediApp
//
//  Created by Jan Świdziński on 29/05/2022.
//

import UIKit

class PresenterManager {
    static let shared  = PresenterManager()
    
    private init(){}
    enum VC{
        case mainTabBarController
        case onboarding
        
    }
    func show(vc: VC){
        var viewController: UIViewController
        switch vc {
        case .mainTabBarController:
            viewController = UIStoryboard(name: "Main",bundle: nil).instantiateViewController(withIdentifier: "MainTabBarController")
        case .onboarding:
            viewController = UIStoryboard(name: "Main",bundle: nil).instantiateViewController(withIdentifier: "OnboardingViewController")
        }
        
       
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
                let window = sceneDelegate.window {
                window.rootViewController = viewController
            
                UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: nil, completion: nil)
            }
    }
}
