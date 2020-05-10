//
//  PostData.swift
//  HackerNews
//
//  Created by Jared Borders on 5/9/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
