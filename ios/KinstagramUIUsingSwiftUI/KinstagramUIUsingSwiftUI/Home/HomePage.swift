//
//  HomePage.swift
//  InstagramUIUsingSwiftUI
//
//  Created by NoodleKim on 2020/09/21.
//  Copyright © 2020 noodlekim. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        
        List {
            ForEach(0..<3) { (i) in
                PostCell().listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
