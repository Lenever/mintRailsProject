//
//  StringConstants.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import Foundation

enum ListViewControllerConstants {
    static let tableTitle = "Recent commits on Rails project"
    static let forCellReuseIdentifier = "cellId"
    static let alertIcon = "⚠️"
    static let alertTitle = "Ok"
}

enum ListViewCellConstants {
    static let fatalError = "init(coder:) has not been implemented"
}

enum DataLoaderConstants {
    static let url = "https://api.github.com/repos/rails/rails/commits"
}
