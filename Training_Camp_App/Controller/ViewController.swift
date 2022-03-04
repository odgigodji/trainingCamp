//
//  ViewController.swift
//  Training_Camp_App
//
//  Created by Nikita Evdokimov on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        print("Start that shit")
        super.viewDidLoad()
        self.setupFrontOnView()

    }
}

extension UIViewController {
    func setupFrontOnView() {
        label.setupLabel(on: view)
        label.doFrontOnLabel()
        
        button.setupButton(on: view)
        button.doFrontOnButton()
    }
}



//        self.topAnchor.constraint(equalTo: on.topAnchor).isActive = true
//        self.leadingAnchor.constraint(equalTo: on.leadingAnchor).isActive = true
//        self.bottomAnchor.constraint(equalTo: on.topAnchor, constant: 50).isActive = true
//        self.trailingAnchor.constraint(equalTo: on.trailingAnchor).isActive = true
//        self.topAnchor.constraint(equalTo: centerYAnchor)

//        self.centerYAnchor.constraint(equalTo: on.centerXAnchor).isActive = true
