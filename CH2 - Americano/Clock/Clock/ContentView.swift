//
//  ContentView.swift
//  Clock
//
//  Created by Simona De Lucia on 06/11/25.
//

import SwiftUI

struct DigitView: View {
    
    //MARK:- PROPERTIES
    
    var time: Int
    var place: String
    
    //MARK:- BODY

    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            Text("\(time)")
                .font(.system(.title))
                .fontWeight(.semibold)
            
            Text(place)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

    //MARK:- PREVIEW

struct DigitView_Previews: PreviewProvider {
    static var previews: some View {
        Digitview(time: 20, place: "minutes")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

#Preview {
    DigitView()
}
