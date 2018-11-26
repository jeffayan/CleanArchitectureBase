//
//  ListFilesModel.swift
//  CleanSample
//
//  Created by jayan-7815 on 22/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

// Entire List model Request, Response, ViewModel
enum ListFilesModel {
    
    struct FetchRequest {
        
    }
    struct Response {
        var data : [ListFileModel]
    }
    struct ViewModel {
        let data : [ListRawModel]
    }
    
    struct ListRawModel {
        var name : String?
        var documentId : String?
        var path : String?
    }
}
