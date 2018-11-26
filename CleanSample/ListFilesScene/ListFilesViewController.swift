//
//  ListFilesViewController.swift
//  CleanSample
//
//  Created by jayan-7815 on 22/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import UIKit

class ListFilesViewController: UIViewController {
    
    // For Architecture
    private lazy var interactor : ListFilesBussinessLogic = ListFilesInteractor(presenter: ListFilesPresenter(viewController: self),worker: FilesWorker(store: FilesStore()))
    private lazy var router : ListFilesRoutable = ListFilesRouter(viewController: self)
    
    private lazy var buttonClick : UIButton = {
        let button = UIButton()
        button.setTitleColor(.red, for: .normal)
        button.setTitle(ListFiles.Constants.shared.click, for: .normal)
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(lessThanOrEqualTo: self.view.centerXAnchor, constant: 0).isActive = true
        button.centerYAnchor.constraint(lessThanOrEqualTo: self.view.centerYAnchor, constant: 0).isActive = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialLoads()
    }
}

// MARK:- Methods

extension ListFilesViewController  {
    
    private func initialLoads() {
        self.buttonClick.addTarget(self, action: #selector(self.buttonClickAction), for: .touchUpInside)
    }
    
    @IBAction private func buttonClickAction() {
       // interactor.fetchFiles(with: ListFilesModel.FetchRequest())
        router.showDetail(for: "dddd")
    }
    
}

// MARK:- Displayable

extension ListFilesViewController : Displayable {
    
    func displayFiles(with viewModel: ListFilesModel.ViewModel) {
       print(viewModel.data.count)
    }
    
    
}


