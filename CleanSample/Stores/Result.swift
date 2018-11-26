//
//  Result.swift
//  CleanSample
//
//  Created by jayan-7815 on 23/11/18.
//  Copyright © 2018 jayan-7815. All rights reserved.
//

import Foundation

// Result value for all Requests from Interactor
enum Result<Value, error : Error>{
    
    case success(Value)
    case failure(error)
    
    var isSuccess : Bool {
        switch self {
        case .success:
            return true
        case .failure:
            return false
        }
    }
    
//    var isFailure : Bool {
//        return !isSuccess
//    }
   
    var result :(value : Value?, error : error?) {
        switch self {
        case .success(let value):
            return (value,nil)
        case .failure(let error):
            return (nil,error)
        }
    }
}

