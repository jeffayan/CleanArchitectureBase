//
//  ViewController.swift
//  CleanSample
//
//  Created by jayan-7815 on 22/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet private weak var buttonClick : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonClick.addTarget(self, action: #selector(self.buttonClickAction), for: .touchUpInside)
    }
    
    @IBAction private func buttonClickAction() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "viewVC")
        self.show(vc!, sender: self)
    }
    
}

