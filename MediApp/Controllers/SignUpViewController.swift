//
//  SignUpViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 30/05/2022.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    private let isSuccessfullSignup = true
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmationTextField:UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    weak var delegate: OnboardingDelegate?
    private let isSuccessfullLogin = true
    override func  viewDidLoad(){
        super.viewDidLoad()
        datePicker.datePickerMode = .date
        signUpButton.layer.cornerRadius = 20
        emailTextField.layer.cornerRadius = 20
        passwordTextField.layer.cornerRadius = 20
        passwordConfirmationTextField.layer.cornerRadius = 20
        
    }
    @IBAction func signUpButtonTapped(_ sender: Any) {
        if isSuccessfullSignup{
            delegate?.showMainTabBarController()
        }else{
        }
    }
    }
