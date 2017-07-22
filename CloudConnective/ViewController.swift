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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        
        // Using Segmant view
        SegmantBuilder.buildSegmentioView(segmentioView: segementsView)
        segementsView.selectedSegmentioIndex = 4

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell")
        return cell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "serverListCell", for: indexPath)
        return cell
    }




}

