//
//  RoomStore.swift
//  ListViewSwiftUI
//
//  Created by Nevil Lad on 30/07/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore : BindableObject {
    
    var rooms: [Room] {
        didSet { didChange.send(()) }
    }
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    var didChange =  PassthroughSubject<Void, Never>()
}

