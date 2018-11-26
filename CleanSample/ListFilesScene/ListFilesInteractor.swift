//
//  File.swift
//  CleanSample
//
//  Created by jayan-7815 on 22/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

struct ListFilesInteractor : ListFilesBussinessLogic {
    private let listFilesPresenter : ListFilesPresentable
    private let listFilesWorker : FilesWorkerType
    
    init(presenter : ListFilesPresentable, worker : FilesWorkerType) {
        self.listFilesWorker = worker
        self.listFilesPresenter = presenter
    }
}

extension ListFilesInteractor {
    func fetchFiles(with request: ListFilesModel.FetchRequest) {
        listFilesWorker.fetchFiles { resultObject in
            guard resultObject.isSuccess, let responseData = resultObject.result.value else {
                self.listFilesPresenter.presentFiles(with: resultObject.result.error ?? .nonExistent)
                return
            }
            self.listFilesPresenter.presentFiles(with: ListFilesModel.Response(data : responseData))
        }
    }
}


