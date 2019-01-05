//
//  ViewController.swift
//  CnpjDataEntryMask
//
//  Created by Marcelo on 05/01/19.
//  Copyright © 2019 Marcelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    // MARK: - Outlets
    @IBOutlet weak var cnpj: UITextField!
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        cnpj.delegate = self
    }
    
    // MARK: - UI Actions
    @IBAction func goAction(_ sender: Any) {
        if (cnpj.text?.isValidCnpj())! {
            view.alert(msg: "👍 CNPJ OK !", sender: self)
        }else{
            view.alert(msg: "❌ CNPJ não válido!", sender: self)
        }
    }
    
    // MARK: - Text Field Delegate
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var updatedText = textField.text!
        if (range.location == 2 || range.location == 6 || range.location == 10 || range.location == 15) && range.length == 0 {
            if range.location == 2 || range.location == 6 {
                updatedText.append(".")
            }else if range.location == 10 {
                updatedText.append("/")
            }else if range.location == 15 {
                updatedText.append("-")
            }
            
        }
        updateTextField(updatedText)
        if range.location < 18 {
            return true
        }else{
            return false
        }
        
    }
    
    private func updateTextField(_ input: String) {
        cnpj.text = input
    }
    
}
