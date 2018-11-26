//
//  FileStore.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

struct FilesStore : FilesStorable {
    func fetch(completion: ((Result<[ListFileModel], DataError>) -> Void)) {
        completion(.success([ListFileModel()]))
    }
}

