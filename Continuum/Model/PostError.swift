//
//  PostError.swift
//  Continuum
//
//  Created by Garrett Lyons on 4/1/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import Foundation

enum PostErro: LocalizedError {
    case ckError(Error)
    case noRecord
    case noPost
    
    var localizedDescription: String {
        switch self {
        case .ckError(let error):
            return "There was an error returned from CloudKit. Error: \(error)"
        case .noRecord:
            return "No record was found in CloudKit"
        case .noPost:
            return "No post was found"
        }
    }
}
