//
//  Routable.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import UIKit
import SafariServices

public protocol Router {
    var viewController: UIViewController? { get set }
    
    func presentController<T: UIViewController>(_ presentViewController : T.Type, animated: Bool, modalPresentationStyle: UIModalPresentationStyle?, modalTransitionStyle: UIModalTransitionStyle?, configure: ((T) -> Void)?, completion: ((T) -> Void)?)
    func showController<T: UIViewController>(_ presentViewController : T.Type, configure: ((T) -> Void)?)
}

public extension Router {
    
    /**
     Presents the intial view controller of the specified storyboard modally.
     
     - parameter storyboard: Storyboard name.
     - parameter identifier: View controller name.
     - parameter configure: Configure the view controller before it is loaded.
     - parameter completion: Completion the view controller after it is loaded.
     */
    func presentController<T: UIViewController>(_ presentViewController : T.Type, animated: Bool, modalPresentationStyle: UIModalPresentationStyle?, modalTransitionStyle: UIModalTransitionStyle?, configure: ((T) -> Void)?, completion: ((T) -> Void)?) {
        guard let viewController = viewController else { return }
        RoutingLogic.present(controller: presentViewController, delegate: viewController, animated: animated, modalPresentationStyle: modalPresentationStyle, modalTransitionStyle: modalTransitionStyle, configure: configure, completion: completion)
    }
    
    /**
     Present the intial view controller of the specified storyboard in the primary context.
     Set the initial view controller in the target storyboard or specify the identifier.
     
     - parameter storyboard: Storyboard name.
     - parameter identifier: View controller name.
     - parameter configure: Configure the view controller before it is loaded.
     */
    func showController<T: UIViewController>(_ presentViewController : T.Type, configure: ((T) -> Void)?) {
        guard let viewController = viewController else { return }
        RoutingLogic.show(controller: presentViewController, delegate: viewController, configure: configure)
    }
    
//    /**
//     Present the intial view controller of the specified storyboard in the secondary (or detail) context.
//     Set the initial view controller in the target storyboard or specify the identifier.
//
//     - parameter storyboard: Storyboard name.
//     - parameter identifier: View controller name.
//     - parameter configure: Configure the view controller before it is loaded.
//     */
//    func showDetailViewController<T: UIViewController>(configure: @escaping ((T) -> Void)) {
//        guard let viewController = viewController else { return }
//        RoutingLogic.showDetailViewController(delegate: viewController, configure: configure)
//    }
 
}

public extension Router {
    
    /**
     Open Safari view controller overlay.
     
     - parameter url: URL to display in the browser.
     - parameter modalPresentationStyle: The presentation style of the model view controller.
     */
    func present(safari url: String, modalPresentationStyle: UIModalPresentationStyle = .overFullScreen, animated: Bool = true, completion: (() -> Void)? = nil) {
        guard let viewController = viewController else { return }
        
        let safariController = SFSafariViewController(url: URL(string: url)!)
        safariController.modalPresentationStyle = modalPresentationStyle
        
        viewController.present(safariController, animated: animated, completion: completion)
    }
}

// MARK: - Private functions

fileprivate enum RoutingLogic {
    
    static func present<T: UIViewController>(controller presentViewController : T.Type, delegate: UIViewController, animated: Bool = true, modalPresentationStyle: UIModalPresentationStyle? = nil, modalTransitionStyle: UIModalTransitionStyle? = nil, configure: ((T) -> Void)?, completion: ((T) -> Void)? = nil) {
        
        let controller = T()
        
        if let modalPresentationStyle = modalPresentationStyle {
            controller.modalPresentationStyle = modalPresentationStyle
        }
        
        if let modalTransitionStyle = modalTransitionStyle {
            controller.modalTransitionStyle = modalTransitionStyle
        }
        
        configure?(controller)
        
        delegate.present(controller, animated: animated) {
            completion?(controller)
        }
    }
    
    static func show<T: UIViewController>(controller presentViewController : T.Type, delegate: UIViewController, configure: ((T) -> Void)?) {
        
        let controller = T()
        configure?(controller)
        delegate.show(controller, sender: delegate)
    }
}



