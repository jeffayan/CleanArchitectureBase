//
//  ListFilesPresenter.swift
//  CleanSample
//
//  Created by jayan-7815 on 22/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

struct ListFilesPresenter : ListFilesPresentable {
    private let viewController : Displayable
    init(viewController : Displayable) {
        self.viewController = viewController
    }
}

extension ListFilesPresenter {
    
    func presentFiles(with response: ListFilesModel.Response) {
        let viewModel = response.data.map { (data) -> ListFilesModel.ListRawModel in
            var object = ListFilesModel.ListRawModel()
            object.documentId = data.fileId
            object.name = data.name
            return object
        }
        viewController.displayFiles(with: ListFilesModel.ViewModel(data: viewModel))
    }
    
    func presentFiles(with error: DataError?) {
        var errorObject = AppModel.Error()
        errorObject.message = error?.localizedDescription
        viewController.display(error: errorObject)
    }
    
}
