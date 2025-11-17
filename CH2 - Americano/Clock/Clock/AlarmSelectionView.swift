import SwiftUI



struct AlarmSelectionView: View {
    @Binding var selectedTone: String
    @Environment(\.dismiss) var dismiss //per chiudere la modale
        
    var body: some View {
        NavigationStack {
            List {
            }
            .scrollContentBackground(.hidden)
            .background(Color.black)
            .navigationTitle("When Timer Ends")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // pulsante X
                 ToolbarItem(placement: .navigationBarLeading) {
                     Button {
                         dismiss()
                     } label: {
                         Image(systemName: "xmark").foregroundColor(.gray)
                     }
                 }
                 // pulsante Set
                 ToolbarItem(placement: .navigationBarTrailing) {
                     Button("Set") {
                         dismiss()
                     }
                     .fontWeight(.bold)
                     .foregroundColor(.orange)
                 }
             }
            .preferredColorScheme(.dark)
        }
    }
}
