//
//  UserIcon.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/17/22.
//

import SwiftUI

struct UserIcon: View {
    var body: some View {
        Image(systemName: "person.circle.fill")
            .resizable()
            .scaledToFit()
            .border(Color.blue)
            //.frame(width: 200, height: 200)
    }
}

struct UserIcon_Previews: PreviewProvider {
    static var previews: some View {
        UserIcon()
    }
}
