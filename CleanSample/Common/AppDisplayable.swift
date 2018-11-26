//
//  AppDisplayable.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import UIKit

// Responsible for displaying the error alerts
protocol AppDisplayable {
    func display(error : AppModel.Error)
}

extension AppDisplayable where Self : UIViewController {
    func display(error : AppModel.Error) {
        let alert = UIAlertController(
            title: error.title,
            message: error.message,
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: Common.Constants.shared.okString, style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
