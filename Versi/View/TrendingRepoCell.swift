//
//  TrendingRepoCell.swift
//  Versi
//
//  Created by Sherif Kamal on 12/21/18.
//  Copyright © 2018 Sherif Kamal. All rights reserved.
//

import UIKit

class TrendingRepoCell: UITableViewCell {

    //MARK: -Outlets
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var repoNameLbl: UILabel!
    @IBOutlet weak var repoDescLbl: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    @IBOutlet weak var numOfForksLbl: UILabel!
    @IBOutlet weak var languageLbl: UILabel!
    @IBOutlet weak var contributorsLbl: UILabel!
    
    private var repoUrl: String?
    
    @IBOutlet weak var repoReadmeBtn: RoundedBorderButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(repo: Repo) {
        repoNameLbl.text = repo.name
        repoDescLbl.text = repo.description
        repoImageView.image = repo.image
        numOfForksLbl.text = String(describing: repo.numberOfForks)
        contributorsLbl.text = String(describing: repo.numberOfContributors)
        repoUrl = repo.repoUrl
    }

    override func layoutSubviews() {
        backView.layer.cornerRadius = 15
        backView.layer.shadowRadius = 5.0
        backView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        backView.layer.shadowOpacity = 0.25
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)

    }
}
