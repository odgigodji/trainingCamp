//
//  mainView.swift
//  Training_Camp_App
//
//  Created by Nikita Evdokimov on 04.03.2022.
//

import Foundation
import UIKit

extension UIViewController {
    func setupFrontOnView() {
        //MARK: - set Label
        label.setupLabel(on: view)
        label.doFrontOnLabel()
        
        //MARK: - set button
        button.setupButton(on: view, constantOnXcenter: 0)
        button.doFrontOnButton()

    }
}
