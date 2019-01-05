//
//  UIView+Utils.swift
//  CnpjDataEntryMask
//
//  Created by Marcelo on 05/01/19.
//  Copyright © 2019 Marcelo. All rights reserved.
//

import UIKit


extension UIView {
    
    
    
    // MARK: - Alert Controller
    func alert(msg: String, sender: UIViewController) {
        let alertController = UIAlertController(title: msg, message: nil, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
        }
        alertController.addAction(okAction)
        sender.present(alertController, animated: true) {
        }
    }
    
}
