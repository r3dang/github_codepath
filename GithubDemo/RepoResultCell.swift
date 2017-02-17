//
//  RepoResultCell.swift
//  GithubDemo
//
//  Created by Rajit Dang on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoResultCell: UITableViewCell {

    @IBOutlet weak var repositoryLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
