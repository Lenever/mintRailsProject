//
//  AllCommitsDataModel.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import Foundation

struct  AllCommitsDataModel: Codable {
    let commit: Commit
}

struct Commit: Codable {
    let author, committer: CommitAuthor
    let message: String
}

struct CommitAuthor: Codable {
    let name, email: String
    let date: String
}
