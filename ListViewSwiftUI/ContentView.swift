//
//  ContentView.swift
//  ListViewSwiftUI
//
//  Created by Nevil Lad on 30/07/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @ObjectBinding var store = RoomStore()

    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(action: addRoom) {
                        Text("Add Room")
                    }
                }
                Section {
                    ForEach(store.rooms) { room in
                        RoomCell(room: room)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
            }
            .navigationBarTitle(Text("Rooms"))
            .navigationBarItems(trailing: EditButton())
            .listStyle(.grouped)
        }
    }
    
    func addRoom() {
        store.rooms.append(Room(name: "Hall2", capacity: 2000))
    }
    
    func delete(at offsets: IndexSet) {
        store.rooms.remove(at: 0)
    }
    
    func move(from source: IndexSet, to destination: Int) {
//        store.rooms.move(fromoff)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(store: RoomStore(rooms: testData))
    }
}
#endif

struct RoomCell: View {
    let room: Room
    var body: some View {
        return NavigationButton(destination: RoomDetails(room: room)) {
            Image(room.thumRoomlName).cornerRadius(8)
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) People").font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
