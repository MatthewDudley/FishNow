//
//  ContentView.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        Home()

    }
}

struct ContentView_PreviewLight: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView_PreviewDark: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
