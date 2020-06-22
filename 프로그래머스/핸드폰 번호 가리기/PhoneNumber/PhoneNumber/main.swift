//
//  main.swift
//  PhoneNumber
//
//  Created by 1 on 2020/06/21.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ phone_number:String) -> String {
    return String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
}
solution("01033334444")
