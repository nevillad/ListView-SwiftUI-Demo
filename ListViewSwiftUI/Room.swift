//
//  Room.swift
//  ListViewSwiftUI
//
//  Created by Nevil Lad on 30/07/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import Foundation
import  SwiftUI

struct Room : Identifiable {
    var id = UUID()
    var name: String
    var capacity:Int
    var hasVideo: Bool = false
    
    var imageName: String { return name}
    var thumRoomlName: String { return name + "Thumb" }
}

#if DEBUG
let testData = [
    Room(name: "Observation Deck", capacity: 6, hasVideo: true),
    Room(name: "Executive Suite", capacity: 8, hasVideo: false),
    Room(name: "Charter Jet", capacity: 16, hasVideo: true),
    Room(name: "OceanFront", capacity: 8, hasVideo: false),
    Room(name: "Pastoral", capacity: 10, hasVideo: false),
    Room(name: "Elephant Room", capacity: 10, hasVideo: true)
]

#endif
