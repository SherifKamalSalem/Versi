//
//  ViewController.swift
//  Versi
//
//  Created by Sherif Kamal on 12/20/18.
//  Copyright © 2018 Sherif Kamal. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TrendFeedVC: UIViewController {
    
    var dataSource = PublishSubject<[Repo]>()
    var disposeBag = DisposeBag()

    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        dataSource.bind(to: tableView.rx.items) { (row, repo: Repo, cell: TrendingRepoCell) in
            let cell = tableView.dequeueReusableCell(withIdentifier: "trendingRepoCell")
            cell.configureCell(repo: repo)
            return cell
        }.disposedBy(disposeBag)
    }
    
    func fetchData() {
        DownloadService.instance.downloadTrendingRepos { (trendingRepoArray) in
            self.dataSource.onNext(trendingRepoArray)
        }
    }
}

