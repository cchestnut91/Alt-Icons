//
//  ViewController.swift
//  Alt Icons
//
//  Created by Calvin Chestnut on 1/25/17.
//  Copyright © 2017 Calvin Chestnut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func useRedIcon(_ sender: Any) {
        changeIcon(name: nil)
    }
    
    @IBAction func useGreenIcon(_ sender: Any) {
        changeIcon(name: "Green")
    }
    
    func changeIcon(name: String?) {
        if UIApplication.shared.supportsAlternateIcons {
            UIApplication.shared.setAlternateIconName(name, completionHandler: { (Error) in
                print(Error?.localizedDescription ?? "No Error")
            })
        }
    }


}

