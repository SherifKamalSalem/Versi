//
//  ViewController.swift
//  Versi
//
//  Created by Sherif Kamal on 12/20/18.
//  Copyright © 2018 Sherif Kamal. All rights reserved.
//

import UIKit

class TrendFeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
}

extension TrendFeedVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "trendingRepoCell", for: indexPath) as? TrendingRepoCell else { return UITableViewCell() }
        
        let repo = Repo(image: UIImage(named: "searchIconLarge")!, name: "SWIFT", description: "Apple's programming language", numberOfForks: 23, numberOfContributors: 12, repoUrl: "www.google.com")
        cell.configureCell(repo: repo)
        return cell
    }
}

