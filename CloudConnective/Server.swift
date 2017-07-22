//
//  Server.swift
//  CloudConnective
//
//  Created by Abdalla Odat on 7/23/17.
//  Copyright © 2017 Abdalla Odat. All rights reserved.
//

import UIKit
import ObjectMapper

class Server: Mappable {
    
    var name:String?
    var serial:String?
    var model:String?
    var expires:Int?
    var status: String?
    var statusId: Int?
    
    public init?() {
        
    }
    
    required public init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        name        <- map["name"]
        serial      <- map["serialNum"]
        model       <- map["model.name"]
        expires     <- map["model.expiryDate"]
        status      <- map["status.statusValue"]
        statusId    <- map["status.id"]
    }
}

