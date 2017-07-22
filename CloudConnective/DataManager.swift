//
//  DataManager.swift
//  CloudConnective
//
//  Created by Abdalla Odat on 7/23/17.
//  Copyright © 2017 Abdalla Odat. All rights reserved.
//

import UIKit
import ObjectMapper

class DataMaanger {
    
    static func loadServers() -> [Server] {
        if let filepath = Bundle.main.url(forResource: "sample", withExtension: "json"){
            do {
                let data = try Data(contentsOf: filepath)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: Any] {
                    if let contents = object["content"] {
                        if let servers = Mapper<Server>().mapArray(JSONObject:contents) {
                            return servers
                        }
                    }
                } else if let object = json as? [Any] {
                    print(object)
                } else {
                    print("JSON is invalid")
                }
            }
            catch{
                print("error")
            }
        }
        else {
            print("file not found")
        }
        return [Server]()
    }
}
