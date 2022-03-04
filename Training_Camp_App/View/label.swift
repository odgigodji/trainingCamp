//
//  view.swift
//  Training_Camp_App
//
//  Created by Nikita Evdokimov on 03.03.2022.
//

import Foundation
import UIKit

var label = UILabel()

extension UILabel {
    
    func setupLabel(on view: UIView) {
        view.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: - Label
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func doFrontOnLabel() {
        self.text = "result is \(resultOfCalculations)"
        self.backgroundColor = .systemGray4
        self.textColor = .black
        self.font = UIFont(name: "Avenir Medium", size: 30.0)
    }
}
