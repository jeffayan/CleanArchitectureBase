//
//  ListFilesProtocol.swift
//  CleanSample
//
//  Created by jayan-7815 on 22/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

// Responsible for pushing or presenting Viewcontoller
protocol ListFilesRoutable : AppRoutable {
    func showDetail(for documentId : String)
}

// Responsible for displaying ViewModel data and Error
protocol Displayable : class, AppDisplayable {
    func displayFiles(with viewModel : ListFilesModel.ViewModel)
}

// Responsible for handling the UI Actions from view
protocol ListFilesBussinessLogic {
    func fetchFiles(with request : ListFilesModel.FetchRequest)
}

// Responsible for making the viewModel from raw model
protocol ListFilesPresentable  {
    func presentFiles(with response : ListFilesModel.Response)
    func presentFiles(with error : DataError?)
}

