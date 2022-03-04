//
//  button.swift
//  Training_Camp_App
//
//  Created by Nikita Evdokimov on 04.03.2022.
//

import Foundation
import UIKit

var button = UIButton()

extension UIButton {
    
    func setConstrains(on view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func setupButton(on view: UIView) {
        view.addSubview(self)
        setConstrains(on: view)
        addActionOnButton()
    }
    
    func addActionOnButton() {
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        print("addACtionOnButton")
    }
    
    func doFrontOnButton() {
        self.backgroundColor = .orange
        
    }
    
    @objc private func buttonAction(_ sender:UIButton!) {
        label.text = "result is \(resultOfCalculations)"
        resultOfCalculations += 1
    }
}


