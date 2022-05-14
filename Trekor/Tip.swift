//
//  Tip.swift
//  Trekor
//
//  Created by Ahmed Shaban on 13/05/2022.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
