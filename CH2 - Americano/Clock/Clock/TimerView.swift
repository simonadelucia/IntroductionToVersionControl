import SwiftUI

struct TimerView: View {
    
    @State private var Ore: Int = 0
    @State private var Minuti: Int = 0
    @State private var Secondi: Int = 0
    
    @State private var timerLabel: String = "Timer"
    @State private var selectedTone: String = "Radial"
    
    @State private var showingAlarmSelection = false
    
    var body: some View {
        NavigationStack{
            
            VStack{
                
                HStack {
                    
                    Picker("ORE", selection: $Ore){
                        ForEach(0..<24) { hour in
                            Text("\(hour) hours").tag(hour)
                        }
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 100)
                    .clipped()
                    
                    
                    Picker("ORE", selection: $Minuti){
                        ForEach(0..<60) { min in
                            Text("\(min) min").tag(min)
                        }
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 100)
                    .clipped()
                    
                    Picker("ORE", selection: $Secondi){
                        ForEach(0..<60) { sec in
                            Text("\(sec) sec").tag(sec)
                        }
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 100)
                    .clipped()
                    
                }
                
                HStack {
                    Button(action: {
                        // azione Cancel
                    }) {
                        Text("Cancel")
                            .font(.body)
                            .fontWeight(.medium)
                            .lineLimit(1)
                            .frame(width: 90, height: 90)
                            .background(Color.gray.opacity(0.3))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }.padding(.leading)
                    
                    Spacer()
                    
                    Button(action: {
                        // azione Start
                    }) {
                        Text("Start")
                            .font(.body)
                            .fontWeight(.medium)
                            .lineLimit(1)
                            .padding(4)
                            .frame(width: 90, height: 90)
                            .background(Color.green.opacity(0.3))
                            .foregroundColor(.green)
                            .clipShape(Circle())
                    }
                    .padding(.trailing)
                    
                }
                
                .navigationTitle("Timers")
                
                Form {
                    HStack {
                        // testo fisso a sinistra
                        Text("Label")
                            .foregroundColor(.white)
                        
                        Spacer() // per tenere il testo a destra
                        
                        TextField("", text: $timerLabel)
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(.gray)
                    }
                   
                    Button(action: {  // per la modale
                                            showingAlarmSelection = true
                                        }) {
                                            HStack {
                                                Text("When Timer Ends") // per tenere il testo a sinistra
                                                    .foregroundColor(.white)
                                                Spacer()
                                                Text(selectedTone)
                                                    .foregroundColor(.gray)
                                                Image(systemName: "chevron.right")
                                                    .foregroundColor(.gray)
                                                    .font(.caption)
                                            }
                                        }
                    
                                        .listRowBackground(Color(white: 0.2, opacity: 0.8))
                                                            .buttonStyle(.plain)
                                                        }
                                                        .scrollContentBackground(.hidden)
                                                        
                                                        Spacer()
                                                    }
                                                    .sheet(isPresented: $showingAlarmSelection) {

                                                        AlarmSelectionView(selectedTone: $selectedTone)
                                                    }
                                                    .navigationTitle("Timers")
                                                    .preferredColorScheme(.dark)
                                                }
                                            }
}

#Preview {
    TimerView()
}
