//
//  ListFilesConstants.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

enum ListFiles {
    struct Constants {
       static let shared = Constants()
       let click = "cleanSample.listFiles.click"
    }
    
    enum StoryboardIdentifier : String {
        case listPage = "ListFilesViewController"
        case detailListPage = "ListFilesDetailViewController"
    }
}
