//
//  ViewPageController.swift
//  HealthProduct_Example
//
//  Created by Cuong DK on 23/12/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

public class ViewPageController: UIViewController {

    lazy var customerTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
        textField.center = self.view.center
        textField.placeholder = "Haha"
        textField.tintColor = .brown
        textField.layer.shadowColor = UIColor.black.cgColor
        return textField
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .blue

        self.view.addSubview(customerTextField)
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
