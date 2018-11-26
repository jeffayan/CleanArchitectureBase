//
//  ListFilesRouter.swift
//  CleanSample
//
//  Created by jayan-7815 on 22/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import UIKit

struct ListFilesRouter : ListFilesRoutable {
  
    var viewController: UIViewController?
    init(viewController : UIViewController) {
        self.viewController = viewController
    }
}

extension ListFilesRouter {
    func showDetail(for documentId: String) {
        
        show(controller: ListFilesDetailViewController.self)
       
    }
}
