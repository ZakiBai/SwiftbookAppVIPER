//
//  Course.swift
//  SwiftbookAppVIPER
//
//  Created by Zaki on 25.07.2023.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageURL: URL
    let numberOfLessons: Int
    let numberOfTests: Int
}
