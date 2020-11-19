//
//  ViewController.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import UIKit

class ListCommitsViewController: UITableViewController {
    var commits = ["zero","one","two","three","four","five"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.tableView.register(ListViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commits.count 
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as? ListViewCell
        let path = commits[indexPath.row]
        cell?.page = path
        
        return cell ?? UITableViewCell()
    }
}

