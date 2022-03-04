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
    
    func setConstrains(on view: UIView, constantOnXcenter: CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constantOnXcenter).isActive = true
    }
    
    func setupButton(on view: UIView, constantOnXcenter: CGFloat) {
        view.addSubview(self)
        self.setConstrains(on: view, constantOnXcenter: constantOnXcenter)
        self.addActionOnButton()
    }
    
    func doFrontOnButton() {
        self.backgroundColor = .orange
    }
}


extension UIButton {
    
    func addActionOnButton() {
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        print("addACtionOnButton")
    }
    
    @objc private func buttonAction(_ sender:UIButton!) {
        colorAnimation()
        resultOfCalculations.plusOne()
        label.text = "result is \(resultOfCalculations)"
    }
    
    
    func colorAnimation() {
        UIView.animate(withDuration: 0.05) {
            button.backgroundColor = .systemGray
            button.backgroundColor = .orange
        }
    }
}

