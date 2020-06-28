//
//  main.swift
//  NSRegularExpression
//
//  Created by 1 on 2020/06/25.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

extension String{
    func getArrayAfterRegex(regex: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: self,
                                        range: NSRange(self.startIndex..., in: self))
            return results.map {
                String(self[Range($0.range, in: self)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
}


let str = "Hello  Hello #hi #Hello ##nam WOW www Hello"
 
print("Hi Hello".getArrayAfterRegex(regex: "[^ ]+"))

// ["Hi", "Hello"]
