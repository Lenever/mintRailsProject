//
//  ListCommitsPresenter.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import Foundation

protocol ListPresenterLogic {
    func displayDataSuccess(prompt: [AllCommitsDataModel])
    func displayDataError(prompt: String)
}

class ListCommitsPresenter: ListPresenterLogic {
    var ListView: ListDisplayLogic?
    
    func displayDataSuccess(prompt: [AllCommitsDataModel]) {
        ListView?.displaySuccess(allCommits: prompt)
    }
    
    func displayDataError(prompt: String) {
        ListView?.displayError(error: prompt)
    }
}
