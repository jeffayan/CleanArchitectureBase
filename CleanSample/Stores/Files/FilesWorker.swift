
//
//  File.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

class FilesWorker : FilesWorkerType {
    var store: FilesStorable
    
    init(store : FilesStorable) {
        self.store = store
    }
}

// Methods to be handled by Fileworker 
extension FilesWorker {
    
    func fetchFiles(completion: ((Result<[ListFileModel], DataError>) -> Void)) {
        store.fetch(completion: completion)
    }
    
}
