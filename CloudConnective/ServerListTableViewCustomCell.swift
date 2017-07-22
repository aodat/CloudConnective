//
//  ServerCustomCell.swift
//  CloudConnective
//
//  Created by Abdalla Odat on 7/23/17.
//  Copyright © 2017 Abdalla Odat. All rights reserved.
//

import UIKit


class ServerListTableViewCustomCell: UITableViewCell {
    
    @IBOutlet weak var serverName: UILabel!
    @IBOutlet weak var serialValue: UILabel!
    @IBOutlet weak var modelValue: UILabel!
    @IBOutlet weak var tacValue: UILabel!
    @IBOutlet weak var expiresValue: UILabel!
    @IBOutlet weak var statusValue: UILabel!
    @IBOutlet weak var statueImage: UIImageView!
    @IBOutlet weak var serverImage: UIImageView!
    
    override func awakeFromNib() {
        // Round server image
        self.serverImage.layer.cornerRadius = serverImage.frame.height/2
        self.serverImage.clipsToBounds = true
        
        // Round status image
        self.statueImage.layer.cornerRadius = statueImage.frame.height/2
        self.statueImage.clipsToBounds = true
    }

}
