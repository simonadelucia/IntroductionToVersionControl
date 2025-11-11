

import SwiftUI

struct ContentView: View {
    
    @State private var Ore: Int = 0 //1-2-3-34
    @State private var Minuti: Int = 0
    @State private var Secondi: Int = 0
    
    var place: String = "ciola"//asdkjaskdja
    
    var body: some View {
        NavigationStack{
            NavigationView{
                
                VStack{
                    
                    HStack {
                        
                        Picker("ORE", selection: $Ore){
                            ForEach(0..<24) { hour in
                                Text("\(hour) ore").tag(hour)
                            }
                        }
                        .pickerStyle(.wheel)
                        
                        Picker("ORE", selection: $Minuti){
                            ForEach(0..<60) { min in
                                Text("\(min) minuti").tag(min)
                            }
                        }
                        .pickerStyle(.wheel)
                        
                        Picker("ORE", selection: $Secondi){
                            ForEach(0..<60) { sec in
                                Text("\(sec) secondi").tag(sec)
                            }
                        }
                        .pickerStyle(.wheel)
                        
                    }
                    
                    Spacer()
                }
                
                
                
            }
            .navigationTitle(Text("Timers"))
        }
        
    }
}

#Preview {
    ContentView()
}


