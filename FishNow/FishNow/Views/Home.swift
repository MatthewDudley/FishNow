//
//  Home.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/17/22.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                ProfileBtn()
            }
            Spacer()
            
            ScrollView() {
                
                VStack {
                    
                    EventContainer()
                    
                }
            }
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
