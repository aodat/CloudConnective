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
    
    var servers = [Server]()
    
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
        
        self.servers = DataMaanger.loadServers()

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.servers.count + 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell")
        return cell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < self.servers.count {
            let cell = tableView.dequeueReusableCell(withIdentifier: "serverListCell", for: indexPath) as! ServerListTableViewCustomCell
            let server = servers[indexPath.row]
            
            if let serverName = server.name {
                cell.serverName.text = serverName
            } else {
                cell.serverName.text = "N/A"
            }
            
            if let serverSerial = server.serial {
                cell.serialValue.text = serverSerial
            } else {
                cell.serialValue.text = "N/A"
            }
            
            if let serverModel = server.model {
                cell.modelValue.text = serverModel
            } else {
                cell.modelValue.text = "N/A"
            }
            
            if let serverExpires = server.expires {
                let date = NSDate(timeIntervalSince1970: Double(serverExpires))
                let formatter           = DateFormatter()
                formatter.dateFormat    = "dd/MM/YYYY"
                let dateFormatted       = formatter.string(from: date as Date)
                cell.expiresValue.text  = "\(dateFormatted)"
            } else {
                cell.expiresValue.text = "N/A"
            }
            
            if let serverStatus = server.status {
                cell.statusValue.text = serverStatus
            } else {
                cell.statusValue.text = "N/A"
            }
            
            if let serverStatusID = server.statusId {
                if serverStatusID == 1 {
                    cell.statueImage.image = UIImage(named: "stable")
                } else {
                    cell.statueImage.image = UIImage(named: "down")
                }
            } else {
                cell.statueImage.image = UIImage(named: "")
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "separatorCell", for: indexPath)
            return cell
        }
    }

}

