//
//  PostCell.swift
//  InstagramUIUsingSwiftUI
//
//  Created by NoodleKim on 2020/09/21.
//  Copyright © 2020 noodlekim. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    var aspectRatio = 1.44998
    var body: some View {
        VStack {
            Image("forest")
                .resizable()
                .frame(height: (screenWidth - 20) * CGFloat(aspectRatio), alignment: .center)
            HStack {
                Image("forest")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(25)
                VStack(alignment: .leading) {
                    Text("NoodleKim's App")
                    Text("One hour ago").font(.caption).foregroundColor(.gray)
                }
                Spacer()
            }.padding()
            Divider().padding()
            Text("Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ").lineLimit(nil).padding()
        }.background(Color.white)
        .cornerRadius(20).shadow(radius: 10).padding()
        
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
