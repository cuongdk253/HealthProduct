//
//  PageCtrll.swift
//  HealthProduct_Example
//
//  Created by Cuong DK on 23/12/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

public class PageCtrlll: UIViewController {

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
    
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("Test", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.backgroundColor = .white
        self.view.backgroundColor = .orange
        self.view.addSubview(button)
        
        
    }
    
    @objc
        public func buttonAction() {
            let ac = ViewPageController()
            self.navigationController?.pushViewController(ac, animated: true)
            
        }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
