//
//  ViewController.swift
//  HealthProduct
//
//  Created by cuongdk253 on 12/23/2020.
//  Copyright (c) 2020 cuongdk253. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var customerTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
        textField.center = self.view.center
        textField.placeholder = "Hehe"
        textField.tintColor = .brown
        textField.layer.shadowColor = UIColor.black.cgColor
        return textField
    }()
    
    let button = UIButton(
        frame: CGRect(
            x: 100,
            y: 100,
            width: 200,
            height: 60
        )
    )
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.addSubview(self.customerTextField)
        view.backgroundColor = .orange
        
        button.setTitle("Test",
                                for: .normal)
                button.setTitleColor(.systemBlue,
                                     for: .normal)
                
                button.addTarget(self,
                                 action: #selector(buttonAction),
                                 for: .touchUpInside)
                
                self.view.addSubview(button)
        
    }
    
    @objc
        func buttonAction() {
            self.view.addSubview(customerTextField)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

