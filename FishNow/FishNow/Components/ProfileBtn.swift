//
//  ProfileBtn.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/17/22.
//

import SwiftUI

struct ProfileBtn: View {
    
    @State var showingProfile = false
    
    var body: some View {
        
        Button(action: {
            self.showingProfile.toggle()
        }) {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
            }.frame(width: 100, height: 100, alignment: .bottom)
            //.frame(width: 90)
        }.fullScreenCover(isPresented: $showingProfile) {
            Profile(showingProfile: $showingProfile)
        }
        
        
//        Button {
//            Profile()
//        } label: {
//            Image(systemName: "person.fill")
//        }
        
    }
    
}

struct ProfileBtn_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBtn()
    }
}
