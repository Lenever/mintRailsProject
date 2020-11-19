//
//  ListViewCell.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import UIKit
import SnapKit

class ListViewCell: UITableViewCell {
    
    var cellView = UIView()
    var authorNameLabel = UILabel()
    var authorEmailLabel = UILabel()
    var date = UILabel()
    var commitMessageView = UIView()
    var commitMessage = UILabel()
    
    var page: String? {
        didSet {
            if let page = page {
                authorNameLabel.text = page
                authorEmailLabel.text = page
                date.text = page
                commitMessage.text = page
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setupCellView()
        setupAuthorNameLabel()
        setupAuthorEmailLabel()
        setupDate()
        setupCommitMessage()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellView(){
        contentView.addSubview(cellView)
        cellView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        cellView.snp.makeConstraints { (make) in
            make.top.equalTo(contentView.snp.top).offset(20)
            make.bottom.equalTo(contentView.snp.bottom).offset(-10)
            make.width.equalTo(contentView).multipliedBy(0.95)
            make.centerX.equalTo(contentView)
        }
    }
    
    func setupAuthorNameLabel() {
        cellView.addSubview(authorNameLabel)
        authorNameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        authorNameLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        authorNameLabel.numberOfLines = 0
        authorNameLabel.textAlignment = .left //.center
        authorNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(cellView.snp.top).offset(10)
            make.height.equalTo(20)
            make.left.equalTo(cellView.snp.left).offset(10)
        }
    }
    
    func setupAuthorEmailLabel() {
        cellView.addSubview(authorEmailLabel)
        authorEmailLabel.font = UIFont.systemFont(ofSize: 15)
        authorEmailLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        authorEmailLabel.numberOfLines = 0
        authorEmailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(authorNameLabel.snp.bottom).offset(8)
            make.left.equalTo(cellView.snp.left).offset(10)
            make.height.equalTo(20)
        }
    }
    
    func setupDate() {
        cellView.addSubview(date)
        date.font = UIFont.systemFont(ofSize: 15)
        date.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        date.numberOfLines = 0
        date.snp.makeConstraints { (make) in
            make.top.equalTo(authorEmailLabel.snp.bottom).offset(5)
            make.left.equalTo(cellView.snp.left).offset(10)
            make.height.equalTo(20)
        }
    }
    
    func setupCommitMessageView() {
        cellView.addSubview(commitMessageView)
        commitMessageView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        commitMessageView.layer.cornerRadius = 5
        commitMessageView.snp.makeConstraints { (make) in
            make.top.equalTo(date.snp.bottom).offset(10)
            make.left.equalTo(cellView.snp.left).offset(10)
            make.right.equalTo(cellView.snp.right).offset(-10)
            make.bottom.equalTo(cellView.snp.bottom).offset(-20)
        }
    }
    
    func setupCommitMessage() {
        cellView.addSubview(commitMessage)
        commitMessage.font = UIFont.systemFont(ofSize: 14)
        commitMessage.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        commitMessage.numberOfLines = 0
        commitMessage.snp.makeConstraints { (make) in
            make.top.equalTo(date.snp.bottom).offset(10)
            make.left.equalTo(cellView.snp.left).offset(10)
            make.right.equalTo(cellView.snp.right).offset(-10)
            make.bottom.equalTo(cellView.snp.bottom).offset(-20)
        }
    }
}
