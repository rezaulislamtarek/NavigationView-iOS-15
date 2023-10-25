//
//  ScreenFour.swift
//  NavigationView iOS 15
//
//  Created by Rezaul Islam on 24/10/23.
//

import SwiftUI

struct ScreenFour: View {
    
    @Binding var rootActive : Bool
    var body: some View {
        VStack{
            Spacer()
            Text("Fourth Screen")
            Spacer()
            Button {
                rootActive = false
            } label: {
                Text("Back to Screen 2")
                    .padding(.all)
                    .background(.white)
                    .cornerRadius(15)
            }
            
            Spacer()
            HStack{
                EmptyView()
                Spacer()
            }
        }
        .background(.pink.opacity(0.1))
    }
    
}

struct ScreenFour_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFour(rootActive: .constant(false))
    }
}
