//
//  ScreenOne.swift
//  NavigationView iOS 15
//
//  Created by Rezaul Islam on 24/10/23.
//

import SwiftUI

struct ScreenOne: View {
    @State var rootActive : Bool = false
    var body: some View {
        VStack{
            Spacer()
            Text("Home Screen")
            Spacer()
            Button {
                rootActive = true
            } label: {
                Text("Go to Second Screen")
                    .padding(.all)
                    .background(.white)
                    .cornerRadius(15)
            }

        
            Spacer()
            HStack{
                EmptyView()
                Spacer()
            }
            navigateToSecondScreen
        }
        .background(.green.opacity(0.1))
    }
}
extension ScreenOne{
    private var navigateToSecondScreen : some View {
        NavigationLink(destination: ScreenTwo(), isActive: $rootActive) {
            EmptyView()
        }
    }
}

struct ScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ScreenOne()
    }
}
