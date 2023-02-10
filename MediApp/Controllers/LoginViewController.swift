//
//  LoginViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 28/05/2022.
//

import UIKit

class LoginViewController: UIViewController {
    enum PageType {
        case logIn
        case signUp
    }
    weak var delegate: OnboardingDelegate?
    private let isSuccessfullLogin = true
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmationTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var LogInButton: UIButton!
    
    private var errorMessage:String?{
        didSet{
            showErrorMessage(text: errorMessage)
        }
    }
    
    var currentPageType: PageType = .logIn{
        // eveyrtime it changes teveythig inside is cauught - property observer
        didSet{
            setupViewsFor(pageType: currentPageType)
            print(currentPageType)
            
        }
    }
    
    override func  viewDidLoad(){
        super.viewDidLoad()
        signUpButton.layer.cornerRadius = 20
        LogInButton.layer.cornerRadius = 20
        emailTextField.layer.cornerRadius = 20
        passwordTextField.layer.cornerRadius = 20
        passwordConfirmationTextField.layer.cornerRadius = 20
        setupViewsFor(pageType: .logIn)

    }
    
    private func setupViewsFor(pageType: PageType){
        errorMessage = nil
        passwordConfirmationTextField.isHidden = pageType == .logIn
        signUpButton.isHidden = pageType == .logIn
        forgetPasswordButton.isHidden = pageType == .signUp
        LogInButton.isHidden = pageType == .signUp
    }
    
    private func showErrorMessage(text: String?){
        errorLabel.isHidden = text == nil
        errorLabel.text = text
    }
    
    @IBAction func forgetPasswordButtonTapped(_ sender: Any) {
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        if isSuccessfullLogin{
            delegate?.showMainTabBarController()
        }else{
            errorMessage = "Your password is invalid"
        }
    }
    @IBAction func segmentedControlChange(_ sender: UISegmentedControl){
        currentPageType = sender.selectedSegmentIndex == 0 ? .logIn : .signUp
    }
    
}
