//
//  ViewController.swift
//  Training_Camp_App
//
//  Created by Nikita Evdokimov on 02.03.2022.
//

import UIKit

var currentController = 0

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        self.setupFrontOnView()
    }
}

