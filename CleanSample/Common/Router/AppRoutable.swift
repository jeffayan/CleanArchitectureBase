//
//  AppRoutable.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import UIKit

// Handling the

protocol AppRoutable : Router {

    func dismiss()
}

extension AppRoutable {
    
    func present<T: UIViewController>(controller presentViewController : T.Type, animated: Bool = true, modalPresentationStyle: UIModalPresentationStyle? = nil, modalTransitionStyle: UIModalTransitionStyle? = nil, configure: ((T) -> Void)? = nil, completion: ((T) -> Void)? = nil) {
        presentController(presentViewController, animated: animated, modalPresentationStyle: modalPresentationStyle, modalTransitionStyle: modalTransitionStyle, configure: configure, completion: completion)
    }

    func show<T: UIViewController>(controller presentViewController : T.Type, configure: ((T) -> Void)? = nil) {
        showController(presentViewController, configure: configure)
    }
    
    func dismiss() {
        guard let navController = viewController?.navigationController else {
            viewController?.dismiss(animated: true)
            return
        }
        
        guard navController.viewControllers.count > 1 else {
            return navController.dismiss(animated: true)
        }
        
        navController.popViewController(animated: true)
    }
}
