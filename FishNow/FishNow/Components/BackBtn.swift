//
//  ProfileBtn.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/17/22.
//

import SwiftUI

struct BackBtn: View {
    
    var body: some View {
        
        VStack {
            Image(systemName: "arrow.backward")
                .resizable()
                .frame(width: 25, height: 25, alignment: .center)
        }.frame(width: 100, height: 50)
        //.frame(width: 60, height: 60)
        
    }
    
}

struct BackBtn_Previews: PreviewProvider {
    static var previews: some View {
        BackBtn()
    }
}
