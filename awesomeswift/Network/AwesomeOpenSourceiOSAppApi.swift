//
//  AwesomeOpenSourceiOSAppApi.swift
//  awesomeswift
//
//  Created by Matteo Crippa on 27/06/2017.
//  Copyright © 2017 Boostcode. All rights reserved.
//

import Foundation

class AwesomeOpenSourceiOSAppApi {
  class func getData() -> Data? {
    do {
      let data = try Data(contentsOf: URL(string: "https://raw.githubusercontent.com/dkhamsing/open-source-ios-apps/master/contents.json")!)
      return data
    } catch (let error) {
      print("🙅 \(error)")
      return nil
    }
  }
  
  class func getProjectReadme(url: URL) -> String? {
    do {
      let data = try Data(contentsOf: url.readmeURL!)
      return String(data: data, encoding: .utf8)
    } catch (let error) {
      print("🙅 \(error)")
      return nil
    }
  }
}
