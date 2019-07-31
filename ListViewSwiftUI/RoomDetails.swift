//
//  RoomDetails.swift
//  ListViewSwiftUI
//
//  Created by Nevil Lad on 30/07/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import SwiftUI

struct RoomDetails : View {
    let room: Room
    @State private var zoomed = false
    var body: some View {
        ZStack (alignment: .topLeading) {
            Image(room.imageName)
                .resizable()
                .aspectRatio(contentMode:zoomed ? .fill : .fit)
                .navigationBarTitle(Text(room.name), displayMode: .inline)
                .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .tapAction {
                    withAnimation(.basic(duration: 0.3)) { self.zoomed.toggle() }
                }
            if room.hasVideo && !zoomed{
                Image(systemName: "video.fill")
                    .font(.title)
                    .padding(.all)
                    .transition(.move(edge: .leading))
            
            }
        }
    }
}

#if DEBUG
struct RoomDetails_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView { RoomDetails(room: testData[0]) }
    }
}
#endif
