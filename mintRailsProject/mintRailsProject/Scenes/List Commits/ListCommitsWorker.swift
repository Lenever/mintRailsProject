//
//  ListCommitsWorker.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import Foundation

protocol ListCommitWorkerProtocol {
    func getData (success: @escaping ([AllCommitsDataModel]) -> (), failure: @escaping (String) -> ())
}

class ListCommitsWorker: ListCommitWorkerProtocol {
    var dataLoader: DataLoaderProtocol?
    
    func getData (success: @escaping ([AllCommitsDataModel]) -> (), failure: @escaping (String) -> ()) {
        dataLoader?.getData(success: { (allCommits) in
            success(allCommits)
        }, failure: { (errorMessage) in
            failure(errorMessage)
        })
    }
}
