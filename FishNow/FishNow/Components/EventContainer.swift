//
//  EventContainer.swift
//  FishNow
//
//  Created by Matthew Dudley on 6/17/22.
//

import SwiftUI

struct EventContainer: View {
    
    @State var showingEvent = false
    
    var body: some View {
        
        Button(action: {
            self.showingEvent.toggle()
        }) {
            ZStack {
                //Background Container
                Rectangle()
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                //.padding()
                    .shadow(color: .gray, radius: 5, x: 0.5, y: 5)
                
                // Contents in container
                VStack {
                    
                    HStack {
                        
                        Text("Your Events")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding()
                        
                        Spacer()
                    }
                    
                    // Date container
                    HStack {
                        
                        // Date tile
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                                .shadow(color: .gray, radius: 5, x: 0.5, y: 5)
                            
                            Text("14th")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        .frame(width: 100, height: 100)
                        .padding([.leading, .bottom, .trailing])
                        
                        Spacer()
                        
                        // Event detail
                        VStack {
                            Text("Lake Allatona")
                            Text("Take Off: 6:30 AM EST")
                            Text("Weigh In: 3:30 PM EST")
                            Text("Anglers: 12/24")
                            Spacer()
                        }
                        .padding([.leading, .bottom, .trailing])
                        
                        Spacer()
                    }
                }
            }
            .padding()
            .frame(width: .infinity, height: 200, alignment: .center)
        }.fullScreenCover(isPresented: $showingEvent) {
            EventDetails(showingEvent: $showingEvent)
            
        }
        .accentColor(.black)
    }
}

struct EventContainer_Previews: PreviewProvider {
    static var previews: some View {
        EventContainer()
    }
}
