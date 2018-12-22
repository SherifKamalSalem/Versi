//
//  Repo.swift
//  Versi
//
//  Created by Sherif Kamal on 12/21/18.
//  Copyright © 2018 Sherif Kamal. All rights reserved.
//

import Foundation
import UIKit

class Repo {
    public private(set) var image: UIImage
    public private(set) var name: String
    public private(set) var description: String
    public private(set) var numberOfForks: Int
    public private(set) var numberOfContributors: Int
    public private(set) var repoUrl: String
    
    init(image: UIImage, name: String, description: String, numberOfForks: Int, numberOfContributors: Int, repoUrl: String) {
        self.image = image
        self.name = name
        self.description = description
        self.numberOfForks = numberOfForks
        self.numberOfContributors = numberOfContributors
        self.repoUrl = repoUrl
    }
}
