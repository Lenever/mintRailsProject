//
//  ViewController.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import UIKit

protocol ListDisplayLogic {
    func displaySuccess(allCommits: [AllCommitsDataModel])
    func displayError(error: String)
}

class ListCommitsViewController: UITableViewController {
    var commits: [AllCommitsDataModel]?
    var listCommitsInteractor: ListCommitsBusinessLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.listCommitsInteractor?.getCommits()
        self.tableView.register(ListViewCell.self, forCellReuseIdentifier: ListViewControllerConstants.forCellReuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.tableFooterView = UIView()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commits?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListViewControllerConstants.forCellReuseIdentifier, for: indexPath) as? ListViewCell
        let path = commits?[indexPath.row]
        cell?.page = path
        
        return cell ?? UITableViewCell()
    }
    
    func reloadTableView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

extension ListCommitsViewController: ListDisplayLogic {
    func displaySuccess(allCommits: [AllCommitsDataModel]) {
        self.commits = allCommits
        self.reloadTableView()
    }
    
    func displayError(error: String) {
        let alert = UIAlertController(title: ListViewControllerConstants.alertIcon, message: error, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: ListViewControllerConstants.alertTitle, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
