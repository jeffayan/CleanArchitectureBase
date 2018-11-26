//
//  ListFilesDetailViewController.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import UIKit

class ListFilesDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addingView()
    }
    
    
    private func addingView() {
        let viewTop = UIView()
        viewTop.backgroundColor = .red
        view.addSubview(viewTop)
        viewTop.translatesAutoresizingMaskIntoConstraints = false
        let topMargin = NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: viewTop, attribute: .top, multiplier: 1, constant: 0)
        let bottomMargin = NSLayoutConstraint(item: view, attribute: .centerY, relatedBy: .equal, toItem: viewTop, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingMargin = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: viewTop, attribute: .leading, multiplier: 1, constant: 0)
        let trailingMargin = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: viewTop, attribute: .trailing, multiplier: 1, constant: 0)
        self.view.addConstraints([topMargin,bottomMargin,leadingMargin,trailingMargin])
        
        let viewBottom = UIView()
        viewBottom.backgroundColor = .blue
        view.addSubview(viewBottom)
        viewBottom.translatesAutoresizingMaskIntoConstraints = false
        let topMargin1 = NSLayoutConstraint(item: view, attribute: .centerY, relatedBy: .equal, toItem: viewBottom, attribute: .top, multiplier: 1, constant: 0)
        let bottomMargin1 = NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: viewBottom, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingMargin1 = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: viewBottom, attribute: .leading, multiplier: 1, constant: 0)
        let trailingMargin1 = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: viewBottom, attribute: .trailing, multiplier: 1, constant: 0)
        self.view.addConstraints([topMargin1,bottomMargin1,leadingMargin1,trailingMargin1])
        
    }

}

