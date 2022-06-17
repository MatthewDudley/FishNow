//
//  Profile.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/17/22.
//

import SwiftUI

struct Profile: View {
    
    @Binding public var showingProfile: Bool
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                self.showingProfile.toggle()
            }) {
                HStack {
                    BackBtn()
                    Spacer()
                }
                //ProfileBtn()
            }
            
            UserIcon()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.top, 100)
            Spacer()
            Text("PROFILE PAGE UNDER CONSTRUCTION")
            Spacer()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    
    @State static var showingProfile = true
    
    static var previews: some View {
        Profile(showingProfile: $showingProfile)
    }
}
