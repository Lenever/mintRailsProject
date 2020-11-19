//
//  ListCommitsInteractor.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import Foundation

protocol ListCommitsBusinessLogic {
    func getCommits()
}

class ListCommitsInteractor: ListCommitsBusinessLogic {
    var worker: ListCommitWorkerProtocol?
    var presenter: ListPresenterLogic?
    
    func getCommits() {
        worker?.getData(success: { (allCommits) in
            self.presenter?.displayDataSuccess(prompt: allCommits)
        }, failure: { (error) in
            self.presenter?.displayDataError(prompt: error)
        })
    }
}
