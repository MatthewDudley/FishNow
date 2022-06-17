//
//  EventDetails.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/17/22.
//

import SwiftUI

struct EventDetails: View {
    
    @Binding public var showingEvent: Bool
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                self.showingEvent.toggle()
            }) {
                HStack {
                    BackBtn()
                    Spacer()
                }
                //ProfileBtn()
            }
            Spacer()
            Text("EVENT DETAIL PAGE UNDER CONSTRUCTON")
            Spacer()
        }
    }
}

struct EventDetails_Previews: PreviewProvider {
    
    @State static var showingEvent = true
    
    static var previews: some View {
        EventDetails(showingEvent: $showingEvent)
    }
}
