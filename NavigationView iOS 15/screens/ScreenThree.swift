//
//  ScreenThree.swift
//  NavigationView iOS 15
//
//  Created by Rezaul Islam on 24/10/23.
//

import SwiftUI

struct ScreenThree: View {
    @Binding var rootActive : Bool
    @State var goToFourthScreen : Bool = false
    var body: some View {
        VStack{
            Spacer()
            Text("Third Screen")
            Spacer()
            Button {
                goToFourthScreen = true
            } label: {
                Text("Go to fourth Screen")
                    .padding(.all)
                    .background(.white)
                    .cornerRadius(15)
            }

        
            Spacer()
            HStack{
                EmptyView()
                Spacer()
            }
            navigateToFourthScreen
        }
        .background(.pink.opacity(0.1))
    }
}

extension ScreenThree{
    private var navigateToFourthScreen : some View {
        NavigationLink(destination: ScreenFour(rootActive: $rootActive), isActive: $goToFourthScreen) {
            EmptyView()
        }
    }
}

struct ScreenThree_Previews: PreviewProvider {
    static var previews: some View {
        ScreenThree(rootActive: .constant(false))
    }
}
