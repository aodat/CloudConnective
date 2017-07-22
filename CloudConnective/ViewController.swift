//
//  ViewController.swift
//  CloudConnective
//
//  Created by Abdalla Odat on 7/22/17.
//  Copyright © 2017 Abdalla Odat. All rights reserved.
//

import UIKit
import Segmentio
import Floaty

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segementsView: Segmentio!
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Floating button on bottom right
        let floaty = Floaty()
        floaty.addItem("Hello Kiswani", icon: UIImage(named: "back")!)
        self.view.addSubview(floaty)
        
        // Round avatar image
        self.avatarImage.layer.cornerRadius = avatarImage.frame.height/2
        self.avatarImage.clipsToBounds = true

    }

}

