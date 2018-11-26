//
//  FilesProtocol.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

protocol FilesStorable {
    func fetch(completion : (Result<[ListFileModel],DataError>)->Void)
}

protocol FilesWorkerType {
    func fetchFiles(completion : (Result<[ListFileModel],DataError>)->Void)
}
