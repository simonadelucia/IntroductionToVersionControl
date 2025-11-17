//
//  ContainerView.swift
//  Learners
//
//  Created by Simona De Lucia on 17/10/25.
//

import SwiftUI

enum TabItem {
    case worldClock, alarms, stopwatch, timers
}

struct ContainerView: View {
    
    var body: some View {
    
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            
            Tab("World clock", systemImage: "globe", value: 0)
            {
                TimerView()
            }
            
            Tab("Alarms", systemImage: "alarm", value: 0)
            {
                TimerView()
            }
            
            Tab("Stopwatch", systemImage: "stopwatch", value: 0)
            {
                TimerView()
            }
            
            Tab("Timer", systemImage: "timer", value: 0)
            {
                TimerView()
            }
          
        }
      
        .accentColor(.orange)
     
    }
    
    
}

#Preview {
    ContainerView()
}
