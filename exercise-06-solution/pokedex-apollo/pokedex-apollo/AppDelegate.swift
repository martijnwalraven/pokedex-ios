//
//  AppDelegate.swift
//  pokedex-apollo
//
//  Created by Nikolas Burk on 06/01/17.
//  Copyright © 2017 Nikolas Burk. All rights reserved.
//

import UIKit
import Apollo

let graphlQLEndpointURL = "https://api.graph.cool/simple/v1/cixpxx9be0mhb0169xxi1o2tx"
let apollo = ApolloClient(url: URL(string: graphlQLEndpointURL)!)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, ApolloClientDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        apollo.delegate = self
        return true
    }
  
    // MARK: - ApolloClientDelegate
  
    func cacheKeyForObject(object: JSONObject) -> JSONValue? {
      return object["id"]
    }
}
