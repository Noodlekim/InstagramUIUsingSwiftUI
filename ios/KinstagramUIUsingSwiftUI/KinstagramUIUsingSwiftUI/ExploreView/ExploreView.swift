//
//  ExploreView.swift
//  KinstagramUIUsingSwiftUI
//
//  Created by NoodleKim on 2020/09/21.
//  Copyright © 2020 noodlekim. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
    @State var searchText = String()
    @State var isSearching: Bool = false
    var exampleDta = [PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable()]
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search....", text: self.$searchText) { (changed) in
                } onCommit: {
                    self.search()
                }.padding()
                
                if isSearching == true {
                    List {
                        ForEach(0..<3) { (i) in
                            PostCell().listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                    }
                } else {
                    QGrid(self.exampleDta, columns: 3, columnsInLandscape: nil, vSpacing: 0, hSpacing: 0, vPadding: 0, hPadding: 0, isScrollable: true, showScrollIndicators: false) { post in
                        post.image.aspectRatio(contentMode: .fill).frame(width: screenWidth / 3, height: screenWidth / 3, alignment: .center).clipped()
                    }

                }
            }.navigationBarTitle("Explore", displayMode: .inline)
        }
    }
    
    func search() {
        if self.searchText.isEmpty {
            self.isSearching = false
        } else {
            self.isSearching = true
        }
    }
}

struct PostIdentifiable: Identifiable {
    var id = UUID()
    var image = Image("forest").resizable()
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
